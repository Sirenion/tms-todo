import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/app/app_state/auth_cubit.dart';
import 'package:tms_todo/app/navigation/go_router_refresh_stream.dart';
import 'package:tms_todo/app/navigation/routes/app_routes.dart';
import 'package:tms_todo/presentation/auth/controller/login_cubit.dart';
import 'package:tms_todo/presentation/auth/controller/register_cubit.dart';
import 'package:tms_todo/presentation/auth/login_page.dart';
import 'package:tms_todo/presentation/auth/register_page.dart';
import 'package:tms_todo/presentation/home_page.dart';

GoRouter createRouter(AuthCubit authCubit) {
  final appRoutes = AppRoutes();

  return GoRouter(
    initialLocation: appRoutes.login.routePath,
    refreshListenable: GoRouterRefreshStream(authCubit.authStateChanges),
    redirect: (context, state) {
      final fullPath = state.uri.path;

      final authState = authCubit.state;

      final isAuthenticated = authState.isAuthenticated;

      final isAuthPath = fullPath.startsWith(appRoutes.login.routePath);

      if (!isAuthPath && !isAuthenticated) {
        return appRoutes.login.routePath;
      } else if (isAuthPath && isAuthenticated) {
        return appRoutes.home.routePath;
      }
      return null;
    },
    routes: [
      GoRoute(
        name: appRoutes.login.routeName,
        path: appRoutes.login.relativePath,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => LoginCubit(
              loginWithEmailAndPassword: (String email, String password) =>
                  authCubit.signInWithEmailAndPassword(email, password),
            ),
            child: LoginPage(route: appRoutes.login),
          );
        },
        routes: [
          GoRoute(
            name: appRoutes.login.register.routeName,
            path: appRoutes.login.register.relativePath,
            builder: (context, state) {
              return BlocProvider(
                create: (context) => RegisterCubit(
                  registerWithEmailAndPassword: (String email, String password) =>
                      authCubit.registerWithEmailAndPassword(email, password),
                ),
                child: const RegisterPage(),
              );
            },
          ),
        ],
      ),
      GoRoute(
        name: appRoutes.home.routeName,
        path: appRoutes.home.relativePath,
        builder: (context, state) {
          return const HomePage();
        },
      ),
    ],
  );
}
