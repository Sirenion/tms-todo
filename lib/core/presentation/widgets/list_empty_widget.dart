import 'package:flutter/material.dart';
import 'package:tms_todo/generated/l10n.dart';

class ListEmptyWidget extends StatelessWidget {
  const ListEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Icon(Icons.playlist_add_check_rounded, size: 80, color: Colors.grey.shade400),
          const SizedBox(height: 16),
          Text(
            S.of(context).emptyList,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
