import 'package:tms_todo/app/navigation/routes/add_todo_route.dart';
import 'package:tms_todo/app/navigation/routes/app_route.dart';
import 'package:tms_todo/app/navigation/routes/update_rodo_route.dart';

class TodoListRoute extends AppRoute {
  static const _routeName = 'todoList';
  static const _routePath = '/todoList';

  @override
  String get relativePath => routePath;

  late final addTodo = AddTodoRoute.child(rootRouteName: routeName, rootRoutePath: routePath);

  late final updateTodo = UpdateTodoRoute.child(rootRouteName: routeName, rootRoutePath: routePath);

  TodoListRoute() : super(routeName: _routeName, routePath: _routePath);
}
