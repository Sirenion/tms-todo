import 'package:firebase_auth/firebase_auth.dart';
import 'package:tms_todo/data/mappers/todo_mapper.dart';
import 'package:tms_todo/data/todo_data_source.dart';
import 'package:tms_todo/domain/entity/entities.dart';

abstract interface class TodoRepository {
  Future<void> addTodo({required String title, required String note});

  Future<void> deleteTodo(String todoId);

  Future<void> updateTodo(TodoEntity todo);

  Future<TodoEntity?> getTodoById(String todoId);

  Stream<List<TodoEntity>> watchTodo();
}

final class TodoRepositoryImpl implements TodoRepository {
  final FirebaseAuth _firebaseAuth;
  final TodoDataSource _todoDataSource;
  final TodoMapper _todoMapper;

  TodoRepositoryImpl({
    required FirebaseAuth firebaseAuth,
    required TodoDataSource todoDataSource,
    required TodoMapper todoMapper,
  }) : _firebaseAuth = firebaseAuth,
       _todoDataSource = todoDataSource,
       _todoMapper = todoMapper;

  @override
  Future<void> addTodo({required String title, required String note}) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must be authorized');
    }

    return _todoDataSource.addTodo(userId: userId, title: title, note: note);
  }

  @override
  Future<void> deleteTodo(String todoId) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must be authorized');
    }

    return _todoDataSource.deleteTodo(userId: userId, todoId: todoId);
  }

  @override
  Future<void> updateTodo(TodoEntity todo) {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must be authorized');
    }

    return _todoDataSource.updateTodo(userId: userId, todo: _todoMapper.toTodoModel(todo));
  }

  @override
  Future<TodoEntity?> getTodoById(String todoId) async {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must be authorized');
    }
    final todoModel = await _todoDataSource.getTodo(userId: userId, todoId: todoId);

    if (todoModel != null) {
      return _todoMapper.toTodoEntity(todoModel);
    } else {
      return null;
    }
  }

  @override
  Stream<List<TodoEntity>> watchTodo() {
    final userId = _firebaseAuth.currentUser?.uid;

    if (userId == null) {
      throw Exception('User must be authorized');
    }

    return _todoDataSource.watchTodo(userId).map((list) {
      return list.map(_todoMapper.toTodoEntity).toList();
    });
  }
}
