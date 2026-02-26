import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/app/app_state/auth_cubit.dart';
import 'package:tms_todo/app/navigation/routes/todo_list_route.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/widgets/list_empty_widget.dart';
import 'package:tms_todo/core/presentation/widgets/list_error_widget.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/todo/controller/state/state.dart';
import 'package:tms_todo/presentation/todo/controller/todo_list_cubit.dart';

part 'widgets/todo_list_tile.dart';

part 'widgets/todo_list_widget.dart';

class TodoListPage extends StatelessWidget {
  final TodoListRoute route;

  const TodoListPage({required this.route, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).tmsTodo),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => context.read<AuthCubit>().logout(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocListener<TodoListCubit, TodoListState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            state.status.whenOrNull(
              success: () => ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(S.of(context).removeSuccess))),
              error: (error) => ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(error.toString()))),
            );
          },
          child: Padding(
            padding: const .symmetric(horizontal: 15.0, vertical: 5.0),
            child: BlocBuilder<TodoListCubit, TodoListState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading || previous.error != current.error,
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.error != null) {
                  return ListErrorWidget(error: state.error);
                }

                return _TodoListWidget(route: route);
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(route.addTodo.routePath),
        child: const Icon(Icons.add),
      ),
    );
  }
}
