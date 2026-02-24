// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alreadyHaveAcc": MessageLookupByLibrary.simpleMessage("Уже есть аккаут?"),
    "auth": MessageLookupByLibrary.simpleMessage("Авторизация"),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emptyEmail": MessageLookupByLibrary.simpleMessage(
      "Необходимо ввести email",
    ),
    "emptyList": MessageLookupByLibrary.simpleMessage("Список пуст"),
    "emptyPassword": MessageLookupByLibrary.simpleMessage(
      "Необходимо ввести пароль",
    ),
    "exampleEmail": MessageLookupByLibrary.simpleMessage("example@mail.com"),
    "home": MessageLookupByLibrary.simpleMessage("Главная"),
    "incorrectEmail": MessageLookupByLibrary.simpleMessage("Неверный email"),
    "incorrectPassword": MessageLookupByLibrary.simpleMessage(
      "Пароль должен состоять как минимум из 8 символов и содержать как минимум одну заглавную букву, одну строчную букву, одну цифру и один специальный символ",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Войти"),
    "loginToContinue": MessageLookupByLibrary.simpleMessage(
      "Войдите, чтобы продолжить",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
    "noAcc": MessageLookupByLibrary.simpleMessage("Нет аккаунта?"),
    "or": MessageLookupByLibrary.simpleMessage("или"),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "reg": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "regToStart": MessageLookupByLibrary.simpleMessage(
      "Создайте аккаунт, чтобы начать работу",
    ),
    "register": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
    "registration": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Что-то пошло не так",
    ),
  };
}
