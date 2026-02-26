import 'package:formz/formz.dart';

enum TodoValidationError { empty, tooShort }

class TodoValidator extends FormzInput<String, TodoValidationError> {
  const TodoValidator.pure() : super.pure('');

  const TodoValidator.dirty([super.value = '']) : super.dirty();

  static const int minLength = 5;

  @override
  TodoValidationError? validator(String? value) {
    final trimmed = value?.trim() ?? '';

    if (trimmed.isEmpty) {
      return TodoValidationError.empty;
    }

    if (trimmed.length < minLength) {
      return TodoValidationError.tooShort;
    }
    return null;
  }
}
