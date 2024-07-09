part of 'all_todo_bloc.dart';

abstract class AllTodoEvent {
  const AllTodoEvent();
}

class AllTodoEventFetch extends AllTodoEvent {
  const AllTodoEventFetch();
}
