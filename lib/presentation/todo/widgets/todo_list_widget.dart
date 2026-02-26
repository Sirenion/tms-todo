part of '../todo_list_page.dart';

class _TodoListWidget extends StatelessWidget {
  final TodoListRoute route;

  const _TodoListWidget({required this.route});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListCubit, TodoListState>(
      buildWhen: (previous, current) =>
          previous.status != current.status || previous.todoList != current.todoList,
      builder: (context, state) {
        if (state.todoList.isEmpty) {
          return const ListEmptyWidget();
        }

        return ListView.separated(
          itemCount: state.todoList.length,
          separatorBuilder: (context, index) {
            final item = state.todoList[index];
            if (!(index + 1 > state.todoList.length) &&
                (item.isCompleted != state.todoList[index + 1].isCompleted)) {
              return Padding(
                padding: const .symmetric(horizontal: 5.0, vertical: 10.0),
                child: Row(
                  children: [
                    Text(
                      S.of(context).completed,
                      style: const TextStyle(color: Colors.grey, fontSize: 16.0),
                    ),
                    const SizedBox(width: 10.0),
                    const Expanded(child: Divider()),
                  ],
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
          itemBuilder: (context, index) {
            final item = state.todoList[index];
            return _TodoListTile(
              isCompleted: item.isCompleted,
              title: item.title,
              subtitle: item.note,
              onRemove: () => switch (state.canMakeActionsWithTodo || item.id != null) {
                false => null,
                true => context.read<TodoListCubit>().deleteTodo(item.id!),
              },
              onUpdate: () => switch (state.canMakeActionsWithTodo || item.id != null) {
                false => null,
                true => route.updateTodo.push(context.read<GoRouter>(), id: item.id!),
              },
            );
          },
        );
      },
    );
  }
}
