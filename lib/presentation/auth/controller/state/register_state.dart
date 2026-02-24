part of 'state.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  bool get canRegister {
    return email.isValid && password.isValid && !registerState.inAction;
  }

  const RegisterState._();

  const factory RegisterState({
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(PasswordValidator.pure()) PasswordValidator password,
    @Default(ProcessState.initial()) ProcessState registerState,
    @Default(true) bool obscurePassword,
  }) = _RegisterState;
}
