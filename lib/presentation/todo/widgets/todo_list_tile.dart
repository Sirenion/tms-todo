part of '../todo_list_page.dart';

class _TodoListTile extends StatelessWidget {
  final bool isCompleted;
  final String title;
  final String subtitle;
  final VoidCallback? onUpdate;
  final VoidCallback? onRemove;

  const _TodoListTile({
    required this.isCompleted,
    required this.title,
    required this.subtitle,
    this.onUpdate,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onUpdate,
        leading: switch (isCompleted) {
          true => const Icon(Icons.check, color: Colors.green),
          false => const Icon(Icons.access_time, color: Colors.grey),
        },
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            decoration: switch (isCompleted) {
              true => TextDecoration.lineThrough,
              false => TextDecoration.none,
            },
          ),
        ),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 14.0)),
        trailing: IconButton(
          onPressed: onRemove,
          icon: const Icon(Icons.delete, color: Colors.white),
          style: IconButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
