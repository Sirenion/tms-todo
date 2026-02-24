part of '../login_page.dart';

class _LoginPasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.canLogin != current.canLogin ||
          previous.obscurePassword != current.obscurePassword,
      builder: (context, state) {
        return CustomTextField(
          onChanged: (value) => context.read<LoginCubit>().onPasswordChange(value),
          isLoading: state.loginState.inAction,
          leadingIcon: const Icon(Icons.lock),
          labelText: S.of(context).password,
          obscure: () => context.read<LoginCubit>().obscurePass(!state.obscurePassword),
          obscureText: state.obscurePassword,
          errorText: TextFieldValidator.validatePassword(context, state.password),
        );
      },
    );
  }
}
