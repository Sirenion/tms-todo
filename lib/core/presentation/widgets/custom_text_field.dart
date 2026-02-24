import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.onChanged,
    this.errorText,
    required this.leadingIcon,
    required this.labelText,
    this.hintText = '',
    this.isLoading = false,
    this.obscure,
    this.obscureText = false,
    super.key,
  });

  final Function(String value) onChanged;
  final String? errorText;
  final Icon leadingIcon;

  final String labelText;
  final String hintText;
  final bool isLoading;
  final VoidCallback? obscure;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      enabled: !isLoading,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: leadingIcon,
        suffixIcon: switch (obscure != null) {
          true => IconButton(
            onPressed: obscure,
            icon: switch (obscureText) {
              true => const Icon(Icons.visibility),
              false => const Icon(Icons.visibility_off),
            },
          ),
          false => null,
        },
        labelText: labelText,
        hintText: hintText,
        error: switch (errorText != null) {
          true => ErrorText(errorText: errorText!),
          false => null,
        },
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onTapOutside: ((event) {
        FocusScope.of(context).unfocus();
      }),
    );
  }
}

class ErrorText extends StatelessWidget {
  const ErrorText({required this.errorText, super.key});

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Text(errorText, style: const TextStyle(color: Colors.redAccent));
  }
}
