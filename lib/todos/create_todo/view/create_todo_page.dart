import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../model/todo_model.dart';
import '../bloc/create_todo_bloc.dart';
import 'create_todo_screen.dart';

class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({
    super.key,
    this.todoModel,
  });

  final TodoModel? todoModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTodoBloc(),
      child: CreateTodoScreen(
        todoModel: todoModel,
      ),
    );
  }
}
