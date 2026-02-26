import 'package:go_router/go_router.dart';
import 'package:tms_todo/app/navigation/arguments/arguments.dart';
import 'package:tms_todo/app/navigation/routes/app_route.dart';

class UpdateTodoRoute extends AppRoute {
  static const _routeName = 'updateTodo';
  static const _routePath = '/updateTodo';
  static const _relativePath = 'updateTodo';

  @override
  final String relativePath;

  UpdateTodoRoute.child({required String rootRouteName, required String rootRoutePath})
    : relativePath = _relativePath,
      super(routeName: rootRouteName + _routeName, routePath: rootRoutePath + _routePath);

  void push(GoRouter router, {required String id}) {
    final arguments = UpdateTodoArguments(id: id);
    final queryParameters = arguments.toJson();

    router.pushNamed(routeName, queryParameters: queryParameters);
  }

  UpdateTodoArguments withUpdateTodoArguments(Map<String, dynamic> json) {
    return UpdateTodoArguments.fromJson(json);
  }
}
