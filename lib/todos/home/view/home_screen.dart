import 'dart:developer';

import 'package:flutter/material.dart';
import '../../create_todo/view/create_todo_page.dart';

import '../../all_todos/view/all_todos_screen.dart';
import '../../todo_stats/view/todo_stats_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      floatingActionButton: selectedIndex == 0
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CreateTodoPage(),
                ));
              },
              icon: const Icon(Icons.add),
              label: const Text('Create Todo'),
            )
          : null,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
          log(value.toString());
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Todos',
          ),
          NavigationDestination(
            icon: Icon(Icons.analytics_outlined),
            label: 'Stats',
          ),
        ],
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    if (selectedIndex == 0) {
      return const AllTodosScreen();
    }
    return const TodoStatsScreen();
  }
}
