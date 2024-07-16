import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../all_todos/bloc/all_todo_bloc.dart';
import '../../all_todos/view/widgets/todo_list_builder.dart';

class TodoSearchDeletegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Icon(Icons.search);
  }

  @override
  Widget buildResults(BuildContext context) {
    return const TodoListBuilder();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    log('query : $query');
    context.read<AllTodoBloc>().add(
          AllTodoEventFetch(query: query),
        );
    return const TodoListBuilder();
  }
}
