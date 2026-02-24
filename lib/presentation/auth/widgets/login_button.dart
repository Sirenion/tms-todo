part of '../login_page.dart';

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.canLogin != current.canLogin,
      builder: (context, state) {
        return SubmitButton(
          isClickable: state.canLogin,
          isLoading: state.loginState.inAction,
          label: S.of(context).login,
          callback: () => context.read<LoginCubit>().login(),
        );
      },
    );
  }
}
