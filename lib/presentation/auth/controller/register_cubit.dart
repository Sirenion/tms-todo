import 'package:bloc/bloc.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/validators/email_validator.dart';
import 'package:tms_todo/core/presentation/validators/password_validator.dart';
import 'package:tms_todo/presentation/auth/controller/state/state.dart';

typedef RegisterWithEmailAndPassword = Future<void> Function(String email, String password);

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterWithEmailAndPassword _registerWithEmailAndPassword;

  RegisterCubit({required RegisterWithEmailAndPassword registerWithEmailAndPassword})
    : _registerWithEmailAndPassword = registerWithEmailAndPassword,
      super(const RegisterState());

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

  void updateRegisterState(ProcessState registerState) {
    emit(state.copyWith(registerState: registerState));
  }

  Future<void> register() async {
    try {
      final canRegister = state.canRegister;
      if (!canRegister) return;

      final email = state.email.value;
      final password = state.password.value;

      updateRegisterState(const ProcessState.inAction());

      await _registerWithEmailAndPassword(email, password);

      updateRegisterState(const ProcessState.success());
    } catch (e) {
      updateRegisterState(ProcessState.error(error: e));
    }
  }
}
