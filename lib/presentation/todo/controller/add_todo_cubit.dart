import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/validators/todo_validator.dart';
import 'package:tms_todo/domain/todo_repository.dart';
import 'package:tms_todo/presentation/todo/controller/state/state.dart';

class AddTodoCubit extends Cubit<AddTodoState> {
  final TodoRepository _todoRepository;

  AddTodoCubit({required TodoRepository todoRepository})
    : _todoRepository = todoRepository,
      super(const AddTodoState());

  void updateTitle(String value) {
    final title = TodoValidator.dirty(value);
    emit(state.copyWith(title: title));
  }

  void updateNote(String value) {
    final note = TodoValidator.dirty(value);
    emit(state.copyWith(note: note));
  }

  Future<void> addTodo() async {
    try {
      final canAdd = state.canAddTodo;
      if (!canAdd) return;

      final title = state.title.value;
      final note = state.note.value;

      emit(state.copyWith(status: const ProcessState.inAction()));

      await _todoRepository.addTodo(title: title, note: note);

      emit(state.copyWith(status: const ProcessState.success()));
    } catch (e) {
      emit(state.copyWith(status: ProcessState.error(error: e)));
    }
  }
}
