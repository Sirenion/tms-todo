import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/app/navigation/routes/login_route.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/validators/text_field_validator.dart';
import 'package:tms_todo/core/presentation/widgets/button.dart';
import 'package:tms_todo/core/presentation/widgets/custom_text_field.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/auth/controller/login_cubit.dart';
import 'package:tms_todo/presentation/auth/controller/state/state.dart';

part 'widgets/login_email_field.dart';

part 'widgets/login_password_field.dart';

part 'widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  final LoginRoute route;

  const LoginPage({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => previous.loginState != current.loginState,
      listener: (context, state) {
        final loginState = state.loginState;
        loginState.whenOrNull(
          error: (error) =>
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString()))),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const .symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: .center,
                mainAxisSize: .max,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    S.of(context).auth,
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    S.of(context).loginToContinue,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 25.0),
                  _LoginEmailField(),
                  const SizedBox(height: 15.0),
                  _LoginPasswordField(),
                  const SizedBox(height: 15.0),
                  _LoginButton(),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(S.of(context).noAcc),
                      TextButton(
                        onPressed: () => context.push(route.register.routePath),
                        child: Text(S.of(context).register),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
