import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/domain/entity/entities.dart';
import 'package:tms_todo/domain/todo_repository.dart';
import 'package:tms_todo/presentation/todo/controller/state/state.dart';

typedef LogoutHandler = Future<void> Function();

class TodoListCubit extends Cubit<TodoListState> {
  final TodoRepository _todoRepository;

  late final StreamSubscription<List<TodoEntity>> _todoListStreamSubscription;

  TodoListCubit({required TodoRepository todoRepository})
    : _todoRepository = todoRepository,
      super(const TodoListState()) {
    _todoListStreamSubscription = _todoRepository.watchTodo().listen(
      _onGetTodosData,
      onError: _onGetTodosError,
    );
  }

  Future<void> deleteTodo(String todoId) async {
    try {
      final canAct = state.canMakeActionsWithTodo;
      if (!canAct) return;

      emit(state.copyWith(status: const ProcessState.inAction()));

      await _todoRepository.deleteTodo(todoId);

      emit(state.copyWith(status: const ProcessState.success()));
    } catch (e) {
      emit(state.copyWith(status: ProcessState.error(error: e)));
    }
  }

  void _onGetTodosData(List<TodoEntity> event) {
    event.sort((first, second) => first.isCompleted ? 1 : -1);
    emit(state.copyWith(isLoading: false, todoList: event, error: null));
  }

  void _onGetTodosError(Object error) {
    emit(state.copyWith(isLoading: false, todoList: [], error: error));
  }

  @override
  Future<void> close() {
    _todoListStreamSubscription.cancel();

    return super.close();
  }
}
