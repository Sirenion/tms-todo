part of '../register_page.dart';

class _RegisterEmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.email != current.email || previous.canRegister != current.canRegister,
      builder: (context, state) {
        return CustomTextField(
          onChanged: (value) => context.read<RegisterCubit>().onEmailChange(value),
          isLoading: state.registerState.inAction,
          leadingIcon: const Icon(Icons.mail),
          labelText: S.of(context).email,
          hintText: S.of(context).exampleEmail,
          errorText: TextFieldValidator.validateEmail(context, state.email),
        );
      },
    );
  }
}
