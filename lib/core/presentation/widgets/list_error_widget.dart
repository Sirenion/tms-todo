import 'package:flutter/material.dart';
import 'package:tms_todo/generated/l10n.dart';

class ListErrorWidget extends StatelessWidget {
  final Object? error;

  const ListErrorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    if (error == null) {
      return const SizedBox.shrink();
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Icon(Icons.error_outline_rounded, size: 64, color: Colors.red.shade400),
            const SizedBox(height: 16),
            Text(S.of(context).somethingWentWrong, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ],
        ),
      ),
    );
  }
}
