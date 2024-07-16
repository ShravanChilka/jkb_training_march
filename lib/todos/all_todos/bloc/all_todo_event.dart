part of 'all_todo_bloc.dart';

abstract class AllTodoEvent {
  const AllTodoEvent();
}

class AllTodoEventFetch extends AllTodoEvent {
  const AllTodoEventFetch({
    this.todoFilterType = TodoFilterType.all,
    this.query = '',
  });

  final TodoFilterType todoFilterType;
  final String query;
}

class AllTodoEventCompleteNotUncomplete extends AllTodoEvent {
  const AllTodoEventCompleteNotUncomplete({
    required this.todoModel,
  });

  final TodoModel todoModel;
}
