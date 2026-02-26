part of 'state.dart';

@freezed
abstract class AddTodoState with _$AddTodoState {
  bool get canAddTodo {
    return title.isValid && note.isValid && !status.inAction;
  }

  const AddTodoState._();

  const factory AddTodoState({
    @Default(TodoValidator.pure()) TodoValidator title,
    @Default(TodoValidator.pure()) TodoValidator note,
    @Default(ProcessState.initial()) ProcessState status,
  }) = _AddTodoState;
}
