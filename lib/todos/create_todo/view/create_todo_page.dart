import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/todos/create_todo/bloc/create_todo_bloc.dart';
import 'package:jkb_training_march/todos/create_todo/view/create_todo_screen.dart';

class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTodoBloc(),
      child: const CreateTodoScreen(),
    );
  }
}
