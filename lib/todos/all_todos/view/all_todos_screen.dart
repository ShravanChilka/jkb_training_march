import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/all_todo_bloc.dart';
import 'widgets/todo_list_builder.dart';

class AllTodosScreen extends StatefulWidget {
  const AllTodosScreen({super.key});

  @override
  State<AllTodosScreen> createState() => _AllTodosScreenState();
}

class _AllTodosScreenState extends State<AllTodosScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AllTodoBloc>().add(const AllTodoEventFetch());
  }

  @override
  Widget build(BuildContext context) {
    return const TodoListBuilder();
  }
}
