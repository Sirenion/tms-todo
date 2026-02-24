import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    this.isLoading = false,
    required this.callback,
    this.label = '',
    this.isClickable = false,
    super.key,
  });

  final bool isClickable;
  final bool isLoading;
  final String label;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: .maxFinite,
      child: ElevatedButton(
        onPressed: switch (isClickable) {
          true => callback,
          false => null,
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        child: switch (isLoading) {
          true => Transform.scale(scale: 0.75, child: const CircularProgressIndicator()),
          false => Text(label, style: const TextStyle(color: Colors.white)),
        },
      ),
    );
  }
}
