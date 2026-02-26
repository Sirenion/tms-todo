import 'package:tms_todo/app/navigation/routes/app_route.dart';

class AddTodoRoute extends AppRoute {
  static const _routeName = 'addTodo';
  static const _routePath = '/addTodo';
  static const _relativePath = 'addTodo';

  @override
  final String relativePath;

  AddTodoRoute.child({required String rootRouteName, required String rootRoutePath})
    : relativePath = _relativePath,
      super(routeName: rootRouteName + _routeName, routePath: rootRoutePath + _routePath);
}
