import 'package:bloc/bloc.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/validators/email_validator.dart';
import 'package:tms_todo/core/presentation/validators/password_validator.dart';
import 'package:tms_todo/presentation/auth/controller/state/state.dart';

typedef LoginWithEmailAndPassword = Future<void> Function(String email, String password);

class LoginCubit extends Cubit<LoginState> {
  final LoginWithEmailAndPassword _loginWithEmailAndPassword;

  LoginCubit({required LoginWithEmailAndPassword loginWithEmailAndPassword})
    : _loginWithEmailAndPassword = loginWithEmailAndPassword,
      super(const LoginState());

  void onEmailChange(String value) {
    final email = EmailValidator.dirty(value);
    emit(state.copyWith(email: email));
  }

  void onPasswordChange(String value) {
    final password = PasswordValidator.dirty(value);
    emit(state.copyWith(password: password));
  }

  void obscurePass(bool value) {
    emit(state.copyWith(obscurePassword: value));
  }

  void updateLoginState(ProcessState loginState) {
    emit(state.copyWith(loginState: loginState));
  }

  Future<void> login() async {
    try {
      final canLogin = state.canLogin;
      if (!canLogin) return;

      final email = state.email.value;
      final password = state.password.value;

      updateLoginState(const ProcessState.inAction());

      await _loginWithEmailAndPassword(email, password);

      updateLoginState(const ProcessState.success());
    } catch (e) {
      updateLoginState(ProcessState.error(error: e));
    }
  }
}
