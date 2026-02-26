import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/app/app_state/auth_cubit.dart';
import 'package:tms_todo/app/navigation/app_router.dart';
import 'package:tms_todo/data/mappers/auth_mapper.dart';
import 'package:tms_todo/data/mappers/todo_mapper.dart';
import 'package:tms_todo/data/todo_data_source.dart';
import 'package:tms_todo/domain/auth_repository.dart';
import 'package:tms_todo/domain/todo_repository.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Provider<FirebaseAuth>(
          create: (context) {
            return FirebaseAuth.instance;
          },
        ),
        Provider<FirebaseFirestore>(
          create: (context) {
            return FirebaseFirestore.instance;
          },
        ),
        Provider<AuthMapper>(
          create: (context) {
            return AuthMapperImpl();
          },
        ),
        Provider<TodoMapper>(
          create: (context) {
            return TodoMapperImpl();
          },
        ),
        Provider<TodoDataSource>(
          create: (context) {
            return TodoDataSourceImpl(firebaseFirestore: context.read<FirebaseFirestore>());
          },
        ),
        RepositoryProvider<AuthRepository>(
          create: (context) {
            return AuthRepositoryImpl(
              firebaseAuth: context.read<FirebaseAuth>(),
              authMapper: context.read<AuthMapper>(),
            );
          },
        ),
        RepositoryProvider<TodoRepository>(
          create: (context) {
            return TodoRepositoryImpl(
              firebaseAuth: context.read<FirebaseAuth>(),
              todoDataSource: context.read<TodoDataSource>(),
              todoMapper: context.read<TodoMapper>(),
            );
          },
        ),
        BlocProvider<AuthCubit>(
          create: (context) {
            return AuthCubit(authService: context.read<AuthRepository>());
          },
        ),
        Provider<GoRouter>(
          create: (context) {
            return createRouter(context.read<AuthCubit>());
          },
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'TMS Todo',
            theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            routerConfig: context.read<GoRouter>(),
          );
        },
      ),
    );
  }
}
