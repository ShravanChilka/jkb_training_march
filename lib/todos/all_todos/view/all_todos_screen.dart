import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../create_todo/view/create_todo_page.dart';
import '../bloc/all_todo_bloc.dart';

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
    return BlocBuilder<AllTodoBloc, AllTodoState>(
      builder: (context, state) {
        return ListView.separated(
          itemCount: state.todos.length,
          itemBuilder: (context, index) {
            final todo = state.todos[index];
            return ListTile(
              title: Text(
                todo.title,
                maxLines: 2,
              ),
              subtitle: todo.description != null
                  ? Text(
                      todo.description!,
                      maxLines: 2,
                    )
                  : null,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CreateTodoPage(
                      todoModel: todo,
                    ),
                  ),
                );
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
        );
      },
    );
  }
}
