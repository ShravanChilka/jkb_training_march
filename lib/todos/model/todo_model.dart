class TodoModel {
  const TodoModel({
    this.id,
    required this.title,
    this.description,
    required this.isCompleted,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.completedAt,
  });

  final int? id;
  final String title;
  final String? description;
  final bool isCompleted;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final DateTime? completedAt;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted == true ? 1 : 0,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
      'completedAt': completedAt?.millisecondsSinceEpoch,
    };
  }
}
