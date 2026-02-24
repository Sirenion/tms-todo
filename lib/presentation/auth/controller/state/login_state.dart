part of 'state.dart';

@freezed
abstract class LoginState with _$LoginState {
  bool get canLogin {
    return email.isValid && password.isValid && !loginState.inAction;
  }

  const LoginState._();

  const factory LoginState({
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(PasswordValidator.pure()) PasswordValidator password,
    @Default(ProcessState.initial()) ProcessState loginState,
    @Default(true) bool obscurePassword,
  }) = _LoginState;
}
