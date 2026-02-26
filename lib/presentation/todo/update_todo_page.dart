import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/validators/text_field_validator.dart';
import 'package:tms_todo/core/presentation/widgets/button.dart';
import 'package:tms_todo/core/presentation/widgets/custom_text_field.dart';
import 'package:tms_todo/core/presentation/widgets/list_error_widget.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/todo/controller/state/state.dart';
import 'package:tms_todo/presentation/todo/controller/update_todo_cubit.dart';

class UpdateTodoPage extends StatelessWidget {
  const UpdateTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).updateTodo), centerTitle: true),
      body: SafeArea(
        child: BlocListener<UpdateTodoCubit, UpdateTodoState>(
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
            child: BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading || previous.error != current.error,
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.error != null) {
                  return ListErrorWidget(error: state.error);
                }

                return Center(
                  child: Column(
                    children: [
                      BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
                        buildWhen: (previous, current) =>
                            previous.title != current.title || previous.status != current.status,
                        builder: (context, state) {
                          return CustomTextField(
                            isLoading: state.status.inAction,
                            initialValue: state.title.value,
                            errorText: TextFieldValidator.validateTodo(context, state.title),
                            onChanged: (value) =>
                                context.read<UpdateTodoCubit>().updateTitle(value),
                            labelText: S.of(context).todoTitle,
                          );
                        },
                      ),
                      const SizedBox(height: 15.0),
                      BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
                        buildWhen: (previous, current) =>
                            previous.note != current.note || previous.status != current.status,
                        builder: (context, state) {
                          return CustomTextField(
                            isLoading: state.status.inAction,
                            initialValue: state.note.value,
                            errorText: TextFieldValidator.validateTodo(context, state.note),
                            onChanged: (value) => context.read<UpdateTodoCubit>().updateNote(value),
                            minLines: 5,
                            maxLines: 6,
                            labelText: S.of(context).todoDescription,
                          );
                        },
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: .start,
                        children: [
                          BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
                            buildWhen: (previous, current) =>
                                previous.isCompleted != current.isCompleted ||
                                previous.status != current.status,
                            builder: (context, state) {
                              return Checkbox(
                                value: state.isCompleted,
                                onChanged: (value) => context
                                    .read<UpdateTodoCubit>()
                                    .updateCompletion(value ?? false),
                                activeColor: Colors.green,
                              );
                            },
                          ),
                          Text(S.of(context).completed, style: const TextStyle(fontSize: 14.0)),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      BlocBuilder<UpdateTodoCubit, UpdateTodoState>(
                        buildWhen: (previous, current) =>
                            previous.canUpdateTodo != current.canUpdateTodo ||
                            previous.status != current.status,
                        builder: (context, state) {
                          return SubmitButton(
                            isLoading: state.status.inAction,
                            isClickable: state.canUpdateTodo,
                            label: S.of(context).confirm,
                            callback: () => context.read<UpdateTodoCubit>().updateTodo(),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
