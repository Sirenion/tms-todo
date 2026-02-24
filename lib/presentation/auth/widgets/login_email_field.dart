part of '../login_page.dart';

class _LoginEmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) =>
          previous.email != current.email || previous.canLogin != current.canLogin,
      builder: (context, state) {
        return CustomTextField(
          onChanged: (value) => context.read<LoginCubit>().onEmailChange(value),
          isLoading: state.loginState.inAction,
          leadingIcon: const Icon(Icons.mail),
          labelText: S.of(context).email,
          hintText: S.of(context).exampleEmail,
          errorText: TextFieldValidator.validateEmail(context, state.email),
        );
      },
    );
  }
}
