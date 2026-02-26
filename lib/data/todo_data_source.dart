import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tms_todo/data/model/models.dart';

abstract interface class TodoDataSource {
  Future<void> addTodo({required String userId, required String title, required String note});

  Future<void> deleteTodo({required String userId, required String todoId});

  Future<void> updateTodo({required String userId, required TodoModel todo});

  Future<TodoModel?> getTodo({required String userId, required String todoId});

  Stream<List<TodoModel>> watchTodo(String userId);
}

final class TodoDataSourceImpl implements TodoDataSource {
  final FirebaseFirestore _firebaseFirestore;

  TodoDataSourceImpl({required FirebaseFirestore firebaseFirestore})
    : _firebaseFirestore = firebaseFirestore;

  @override
  Future<void> addTodo({
    required String userId,
    required String title,
    required String note,
  }) async {
    final todo = TodoModel(id: null, title: title, note: note, isCompleted: false);

    final colRef = _firebaseFirestore.collection('users/$userId/todos');
    final docRef = await colRef.add(todo.toJson());

    final docSnapshot = await docRef.get();

    final data = docSnapshot.data() ?? {};

    final newItem = TodoModel.fromJson(data).copyWith(id: docSnapshot.id);

    await docRef.set(newItem.toJson());
  }

  @override
  Future<void> deleteTodo({required String userId, required String todoId}) async {
    final docRef = _firebaseFirestore.doc('users/$userId/todos/$todoId');

    await docRef.delete();
  }

  @override
  Future<void> updateTodo({required String userId, required TodoModel todo}) async {
    final docRef = _firebaseFirestore.doc('users/$userId/todos/${todo.id}');

    await docRef.set(todo.toJson());
  }

  @override
  Future<TodoModel?> getTodo({required String userId, required String todoId}) async {
    final docRef = _firebaseFirestore.doc('users/$userId/todos/$todoId');

    final document = await docRef.get();

    if (document.exists && document.data() != null) {
      return TodoModel.fromJson(document.data()!);
    } else {
      return null;
    }
  }

  @override
  Stream<List<TodoModel>> watchTodo(String userId) {
    return _queryTodo(userId).snapshots().map((e) {
      final docs = e.docs;

      final items = docs.map((e) => e.data()).nonNulls.toList();

      return items;
    });
  }

  Query<TodoModel?> _queryTodo(String userId) {
    return _firebaseFirestore
        .collection('users/$userId/todos')
        .withConverter(
          fromFirestore: (e, _) {
            final data = e.data();

            if (data == null) {
              return null;
            }

            return TodoModel.fromJson(data);
          },
          toFirestore: (e, _) {
            return e?.toJson() ?? {};
          },
        );
  }
}
