part of 'state.dart';

@freezed
abstract class UpdateTodoState with _$UpdateTodoState {
  const UpdateTodoState._();

  bool get canUpdateTodo {
    return title.isValid && note.isValid && !status.inAction;
  }

  const factory UpdateTodoState({
    @Default(true) bool isLoading,
    @Default(ProcessState.initial()) ProcessState status,
    @Default(TodoValidator.pure()) TodoValidator title,
    @Default(TodoValidator.pure()) TodoValidator note,
    @Default(false) bool isCompleted,
    @Default(null) Object? error,
  }) = _UpdateTodoState;
}
