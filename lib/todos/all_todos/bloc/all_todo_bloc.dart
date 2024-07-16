import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme/view/theme_builder.dart';
import '../../core/todo_local_database.dart';
import '../../model/todo_model.dart';
import '../model/todo_filter_type.dart';

part 'all_todo_state.dart';
part 'all_todo_event.dart';

class AllTodoBloc extends Bloc<AllTodoEvent, AllTodoState> {
  AllTodoBloc() : super(const AllTodoState(todos: [], isLoading: false)) {
    on<AllTodoEventFetch>(_onAllTodoEventFetch);
    on<AllTodoEventCompleteNotUncomplete>(_onAllTodoEventCompleteNotUncomplete);
  }

  FutureOr<void> _onAllTodoEventFetch(
    AllTodoEventFetch event,
    Emitter<AllTodoState> emit,
  ) async {
    emit(
      state.copyWith(isLoading: true),
    );
    final todos = await TodoLocalDatabase.instance.getAll(
      todoFilterType: event.todoFilterType,
      query: event.query,
    );
    emit(
      state.copyWith(
        todos: todos,
        isLoading: false,
        todoFilterType: event.todoFilterType,
        query: event.query,
      ),
    );
  }

  FutureOr<void> _onAllTodoEventCompleteNotUncomplete(
    AllTodoEventCompleteNotUncomplete event,
    Emitter<AllTodoState> emit,
  ) async {
    final todoModel = event.todoModel.copyWith(
      isCompleted: !event.todoModel.isCompleted,
      completedAt: DateTime.now(),
    );
    await TodoLocalDatabase.instance.update(todoModel);
    add(
      AllTodoEventFetch(
        todoFilterType: state.todoFilterType,
        query: state.query,
      ),
    );
  }
}
