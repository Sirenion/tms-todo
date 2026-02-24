import 'package:flutter/material.dart';
import 'package:tms_todo/core/presentation/validators/email_validator.dart';
import 'package:tms_todo/core/presentation/validators/password_validator.dart';
import 'package:tms_todo/generated/l10n.dart';

class TextFieldValidator {
  static String? validateEmail(BuildContext context, EmailValidator email) {
    final displayError = email.displayError;

    if (displayError != null) {
      switch (displayError) {
        case EmailValidationError.invalid:
          return S.of(context).incorrectEmail;
        case EmailValidationError.empty:
          return S.of(context).emptyEmail;
      }
    }

    return null;
  }

  static String? validatePassword(BuildContext context, PasswordValidator password) {
    final displayError = password.displayError;

    if (displayError != null) {
      switch (displayError) {
        case PasswordValidationError.invalid:
          return S.of(context).incorrectPassword;
        case PasswordValidationError.empty:
          return S.of(context).emptyPassword;
      }
    }

    return null;
  }
}
