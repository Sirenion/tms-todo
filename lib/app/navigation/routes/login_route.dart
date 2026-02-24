import 'package:tms_todo/app/navigation/routes/app_route.dart';
import 'package:tms_todo/app/navigation/routes/register_route.dart';

class LoginRoute extends AppRoute {
  static const _routeName = 'login';
  static const _routePath = '/login';

  @override
  String get relativePath => routePath;

  late final register = RegisterRoute.child(rootRouteName: routeName, rootRoutePath: routePath);

  LoginRoute() : super(routeName: _routeName, routePath: _routePath);
}
