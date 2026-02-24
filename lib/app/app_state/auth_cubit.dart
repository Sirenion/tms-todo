import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tms_todo/app/app_state/state/state.dart';
import 'package:tms_todo/domain/auth_repository.dart';
import 'package:tms_todo/domain/entity/entities.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authService;

  late final StreamSubscription<UserEntity?> _authStateChangesSubscription;

  Stream<bool> get authStateChanges => stream.map((user) => user.isAuthenticated);

  AuthCubit({required AuthRepository authService})
      : _authService = authService,
        super(AuthState.initial()) {
    _authStateChangesSubscription = _authService.userStream.listen((user) {
      if (isClosed) return;
      emit(AuthState(isAuthenticated: user != null));
    });
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _authService.signInWithEmailAndPassword(email, password);
  }

  Future<void> registerWithEmailAndPassword(String email, String password) async {
    await _authService.registerWithEmailAndPassword(email, password);
  }

  Future<void> logout() async {
    await _authService.signOut();
  }

  @override
  Future<void> close() {
    _authStateChangesSubscription.cancel();
    return super.close();
  }
}
