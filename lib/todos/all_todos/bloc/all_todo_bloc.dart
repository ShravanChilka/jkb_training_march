import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/local_database.dart';
import '../../core/todo_local_database.dart';
import '../../model/todo_model.dart';

part 'all_todo_state.dart';
part 'all_todo_event.dart';

class AllTodoBloc extends Bloc<AllTodoEvent, AllTodoState> {
  AllTodoBloc() : super(const AllTodoState(todos: [], isLoading: false)) {
    on<AllTodoEventFetch>(_onAllTodoEventFetch);
  }

  FutureOr<void> _onAllTodoEventFetch(
    AllTodoEventFetch event,
    Emitter<AllTodoState> emit,
  ) async {
    emit(
      AllTodoState(todos: state.todos, isLoading: true),
    );
    final todos = await TodoLocalDatabase.instance.getAll();
    emit(
      AllTodoState(todos: todos, isLoading: false),
    );
  }
}
