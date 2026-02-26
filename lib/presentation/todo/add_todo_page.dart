import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/validators/text_field_validator.dart';
import 'package:tms_todo/core/presentation/widgets/button.dart';
import 'package:tms_todo/core/presentation/widgets/custom_text_field.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/todo/controller/add_todo_cubit.dart';
import 'package:tms_todo/presentation/todo/controller/state/state.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).addTodo), centerTitle: true),
      body: SafeArea(
        child: BlocListener<AddTodoCubit, AddTodoState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            state.status.whenOrNull(
              success: () => context.pop(),
              error: (error) => ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(error.toString()))),
            );
          },
          child: Padding(
            padding: const .symmetric(horizontal: 15.0, vertical: 5.0),
            child: Center(
              child: Column(
                children: [
                  BlocBuilder<AddTodoCubit, AddTodoState>(
                    buildWhen: (previous, current) =>
                        previous.title != current.title || previous.status != current.status,
                    builder: (context, state) {
                      return CustomTextField(
                        isLoading: state.status.inAction,
                        errorText: TextFieldValidator.validateTodo(context, state.title),
                        onChanged: (value) => context.read<AddTodoCubit>().updateTitle(value),
                        labelText: S.of(context).todoTitle,
                      );
                    },
                  ),
                  const SizedBox(height: 15.0),
                  BlocBuilder<AddTodoCubit, AddTodoState>(
                    buildWhen: (previous, current) =>
                        previous.note != current.note || previous.status != current.status,
                    builder: (context, state) {
                      return CustomTextField(
                        isLoading: state.status.inAction,
                        errorText: TextFieldValidator.validateTodo(context, state.note),
                        onChanged: (value) => context.read<AddTodoCubit>().updateNote(value),
                        minLines: 5,
                        maxLines: 6,
                        labelText: S.of(context).todoDescription,
                      );
                    },
                  ),
                  const SizedBox(height: 15.0),
                  BlocBuilder<AddTodoCubit, AddTodoState>(
                    buildWhen: (previous, current) =>
                        previous.canAddTodo != current.canAddTodo ||
                        previous.status != current.status,
                    builder: (context, state) {
                      return SubmitButton(
                        isLoading: state.status.inAction,
                        isClickable: state.canAddTodo,
                        label: S.of(context).add,
                        callback: () => context.read<AddTodoCubit>().addTodo(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
