part of 'all_todo_bloc.dart';

class AllTodoState {
  const AllTodoState(
      {required this.todos,
      required this.isLoading,
      this.todoFilterType = TodoFilterType.all,
      this.query = ''});

  AllTodoState copyWith({
    bool? isLoading,
    List<TodoModel>? todos,
    TodoFilterType? todoFilterType,
    String? query,
  }) {
    return AllTodoState(
      isLoading: isLoading ?? this.isLoading,
      todos: todos ?? this.todos,
      todoFilterType: todoFilterType ?? this.todoFilterType,
      query: query ?? this.query,
    );
  }

  final bool isLoading;
  final List<TodoModel> todos;
  final TodoFilterType todoFilterType;
  final String query;
}
