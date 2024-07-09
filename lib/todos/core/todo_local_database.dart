import 'dart:async';

import '../model/todo_model.dart';
import 'local_database.dart';

const tableName = 'Todos';

class TodoLocalDatabase {
  TodoLocalDatabase._();
  static final instance = TodoLocalDatabase._();
  final _localDatabase = LocalDatabase();

  Future<List<TodoModel>> getAll() async {
    final response = await _localDatabase.database.query(
      tableName,
      columns: [
        'id',
        'title',
        'description',
        'isCompleted',
        'deletedAt',
        'createdAt',
        'updatedAt',
        'completedAt',
      ],
    );
    return response.map((map) => TodoModel.fromMap(map)).toList();
  }

  Future<TodoModel?> get(int id) async {
    final response = await _localDatabase.database.query(
      tableName,
      columns: [
        'id',
        'title',
        'description',
        'isCompleted',
        'deletedAt',
        'createdAt',
        'updatedAt',
        'completedAt',
      ],
      where: 'id = ?',
      whereArgs: [id],
    );
    return response.firstOrNull != null
        ? TodoModel.fromMap(response.first)
        : null;
  }

  Future<TodoModel?> add(TodoModel todoModel) async {
    final id = await _localDatabase.database.insert(
      tableName,
      todoModel.toMap(),
    );
    final todo = todoModel.copyWith(id: id);
    return todo;
  }

  Future<void> update(TodoModel todoModel) async {
    if (todoModel.id == null) return;
    await _localDatabase.database.update(
      tableName,
      todoModel.toMap(),
      where: 'id = ?',
      whereArgs: [todoModel.id],
    );
  }

  Future<void> delete(TodoModel todoModel) async {
    await _localDatabase.database.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [todoModel.id],
    );
  }
}
