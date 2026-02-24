part of '../register_page.dart';

class _RegisterPasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.canRegister != current.canRegister ||
          previous.obscurePassword != current.obscurePassword,
      builder: (context, state) {
        return CustomTextField(
          onChanged: (value) => context.read<RegisterCubit>().onPasswordChange(value),
          isLoading: state.registerState.inAction,
          leadingIcon: const Icon(Icons.lock),
          labelText: S.of(context).password,
          obscure: () => context.read<RegisterCubit>().obscurePass(!state.obscurePassword),
          obscureText: state.obscurePassword,
          errorText: TextFieldValidator.validatePassword(context, state.password),
        );
      },
    );
  }
}
