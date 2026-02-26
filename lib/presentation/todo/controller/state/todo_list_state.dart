part of 'state.dart';

@freezed
abstract class TodoListState with _$TodoListState {
  const TodoListState._();

  bool get canMakeActionsWithTodo {
    return !isLoading && !status.inAction;
  }

  const factory TodoListState({
    @Default(true) bool isLoading,
    @Default(ProcessState.initial()) ProcessState status,
    @Default([]) List<TodoEntity> todoList,
    @Default(null) Object? error,
  }) = _TodoListState;
}
