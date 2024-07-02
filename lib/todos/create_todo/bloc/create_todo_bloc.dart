import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/todos/core/local_database.dart';
import 'package:jkb_training_march/todos/create_todo/bloc/create_todo_event.dart';
import 'package:jkb_training_march/todos/create_todo/bloc/create_todo_state.dart';
import 'package:jkb_training_march/todos/model/todo_model.dart';

class CreateTodoBloc extends Bloc<CreateTodoEvent, CreateTodoState> {
  CreateTodoBloc()
      : super(const CreateTodoState(status: CreateTodoStatus.initial)) {
    on<CreateTodoEventSave>(_onCreateTodoEventSave);
  }
  final _localDatabase = LocalDatabase();

  FutureOr<void> _onCreateTodoEventSave(
    CreateTodoEventSave event,
    Emitter<CreateTodoState> emit,
  ) async {
    emit(
      const CreateTodoState(
        status: CreateTodoStatus.loading,
      ),
    );

    final todoModel = TodoModel(
      title: event.title,
      description: event.description,
      isCompleted: false,
      createdAt: DateTime.now(),
    );
    await Future.delayed(const Duration(seconds: 2));
    final response = await _localDatabase.database.insert(
      LocalDatabase.tableName,
      todoModel.toMap(),
    );

    log('response : $response');
    emit(
      const CreateTodoState(
        status: CreateTodoStatus.completed,
      ),
    );
  }
}
