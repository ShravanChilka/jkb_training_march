abstract class CreateTodoEvent {
  const CreateTodoEvent();
}

class CreateTodoEventSave extends CreateTodoEvent {
  const CreateTodoEventSave({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;
}
