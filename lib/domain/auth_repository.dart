import 'package:firebase_auth/firebase_auth.dart';
import 'package:tms_todo/data/mappers/auth_mapper.dart';
import 'package:tms_todo/domain/entity/entities.dart';

abstract interface class AuthRepository {
  Stream<UserEntity?> get userStream;

  Future<void> signInWithEmailAndPassword(String email, String password);

  Future<void> registerWithEmailAndPassword(String email, String password);

  Future<void> signOut();
}

final class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final AuthMapper _authMapper;

  AuthRepositoryImpl({required FirebaseAuth firebaseAuth, required AuthMapper authMapper})
      : _firebaseAuth = firebaseAuth,
        _authMapper = authMapper;

  @override
  Stream<UserEntity?> get userStream {
    return _firebaseAuth.authStateChanges().map((user) {
      return switch (user) {
        User() => _authMapper.toUserEntity(user),
        null => null,
      };
    });
  }

  @override
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    return _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    return _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();
}
