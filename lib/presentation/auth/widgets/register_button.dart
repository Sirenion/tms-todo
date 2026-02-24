part of '../register_page.dart';

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.canRegister != current.canRegister,
      builder: (context, state) {
        return SubmitButton(
          isClickable: state.canRegister,
          isLoading: state.registerState.inAction,
          label: S.of(context).register,
          callback: () => context.read<RegisterCubit>().register(),
        );
      },
    );
  }
}
