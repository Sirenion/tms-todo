// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Авторизация`
  String get auth {
    return Intl.message('Авторизация', name: 'auth', desc: '', args: []);
  }

  /// `Регистрация`
  String get reg {
    return Intl.message('Регистрация', name: 'reg', desc: '', args: []);
  }

  /// `Главная`
  String get home {
    return Intl.message('Главная', name: 'home', desc: '', args: []);
  }

  /// `Войти`
  String get login {
    return Intl.message('Войти', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
  }

  /// `example@mail.com`
  String get exampleEmail {
    return Intl.message(
      'example@mail.com',
      name: 'exampleEmail',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо ввести email`
  String get emptyEmail {
    return Intl.message(
      'Необходимо ввести email',
      name: 'emptyEmail',
      desc: '',
      args: [],
    );
  }

  /// `Неверный email`
  String get incorrectEmail {
    return Intl.message(
      'Неверный email',
      name: 'incorrectEmail',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо ввести пароль`
  String get emptyPassword {
    return Intl.message(
      'Необходимо ввести пароль',
      name: 'emptyPassword',
      desc: '',
      args: [],
    );
  }

  /// `Пароль должен состоять как минимум из 8 символов и содержать как минимум одну заглавную букву, одну строчную букву, одну цифру и один специальный символ`
  String get incorrectPassword {
    return Intl.message(
      'Пароль должен состоять как минимум из 8 символов и содержать как минимум одну заглавную букву, одну строчную букву, одну цифру и один специальный символ',
      name: 'incorrectPassword',
      desc: '',
      args: [],
    );
  }

  /// `Войдите, чтобы продолжить`
  String get loginToContinue {
    return Intl.message(
      'Войдите, чтобы продолжить',
      name: 'loginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `или`
  String get or {
    return Intl.message('или', name: 'or', desc: '', args: []);
  }

  /// `Выйти`
  String get logout {
    return Intl.message('Выйти', name: 'logout', desc: '', args: []);
  }

  /// `Список пуст`
  String get emptyList {
    return Intl.message('Список пуст', name: 'emptyList', desc: '', args: []);
  }

  /// `Нет аккаунта?`
  String get noAcc {
    return Intl.message('Нет аккаунта?', name: 'noAcc', desc: '', args: []);
  }

  /// `Регистрация`
  String get registration {
    return Intl.message(
      'Регистрация',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Создайте аккаунт, чтобы начать работу`
  String get regToStart {
    return Intl.message(
      'Создайте аккаунт, чтобы начать работу',
      name: 'regToStart',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get register {
    return Intl.message(
      'Зарегистрироваться',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Уже есть аккаут?`
  String get alreadyHaveAcc {
    return Intl.message(
      'Уже есть аккаут?',
      name: 'alreadyHaveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Что-то пошло не так`
  String get somethingWentWrong {
    return Intl.message(
      'Что-то пошло не так',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `TMS-Todo`
  String get tmsTodo {
    return Intl.message('TMS-Todo', name: 'tmsTodo', desc: '', args: []);
  }

  /// `Добавить заметку`
  String get addTodo {
    return Intl.message(
      'Добавить заметку',
      name: 'addTodo',
      desc: '',
      args: [],
    );
  }

  /// `Название заметки`
  String get todoTitle {
    return Intl.message(
      'Название заметки',
      name: 'todoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Описание заметки`
  String get todoDescription {
    return Intl.message(
      'Описание заметки',
      name: 'todoDescription',
      desc: '',
      args: [],
    );
  }

  /// `Добавить`
  String get add {
    return Intl.message('Добавить', name: 'add', desc: '', args: []);
  }

  /// `Заметка должна иметь название`
  String get mustHaveTitle {
    return Intl.message(
      'Заметка должна иметь название',
      name: 'mustHaveTitle',
      desc: '',
      args: [],
    );
  }

  /// `Название должно состоять минимум из 5 символов`
  String get tooShort {
    return Intl.message(
      'Название должно состоять минимум из 5 символов',
      name: 'tooShort',
      desc: '',
      args: [],
    );
  }

  /// `Заметка успешно удалена`
  String get removeSuccess {
    return Intl.message(
      'Заметка успешно удалена',
      name: 'removeSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Изменить заметку`
  String get updateTodo {
    return Intl.message(
      'Изменить заметку',
      name: 'updateTodo',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить`
  String get confirm {
    return Intl.message('Подтвердить', name: 'confirm', desc: '', args: []);
  }

  /// `Выполнено`
  String get completed {
    return Intl.message('Выполнено', name: 'completed', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'ru')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
