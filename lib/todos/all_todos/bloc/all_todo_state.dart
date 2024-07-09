part of 'all_todo_bloc.dart';

class AllTodoState {
  const AllTodoState({
    required this.todos,
    required this.isLoading,
  });

  final bool isLoading;
  final List<TodoModel> todos;
}
