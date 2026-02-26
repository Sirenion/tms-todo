import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_todo/core/presentation/state/process_state.dart';
import 'package:tms_todo/core/presentation/validators/todo_validator.dart';
import 'package:tms_todo/domain/entity/entities.dart';
import 'package:tms_todo/domain/todo_repository.dart';
import 'package:tms_todo/presentation/todo/controller/state/state.dart';

class UpdateTodoCubit extends Cubit<UpdateTodoState> {
  final TodoRepository _todoRepository;
  final String id;

  UpdateTodoCubit({required TodoRepository todoRepository, required this.id})
    : _todoRepository = todoRepository,
      super(const UpdateTodoState()) {
    getTodo();
  }

  Future<void> getTodo() async {
    try {
      emit(state.copyWith(isLoading: true));

      final item = await _todoRepository.getTodoById(id);

      if (item == null) {
        throw Exception('Something is wrong');
      } else {
        final title = TodoValidator.dirty(item.title);
        final note = TodoValidator.dirty(item.note);
        emit(
          state.copyWith(isLoading: false, title: title, note: note, isCompleted: item.isCompleted),
        );
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> updateTodo() async {
    try {
      final canUpdate = state.canUpdateTodo;
      if (!canUpdate) return;

      final item = TodoEntity(
        id: id,
        title: state.title.value,
        note: state.note.value,
        isCompleted: state.isCompleted,
      );

      emit(state.copyWith(status: const ProcessState.inAction()));

      await _todoRepository.updateTodo(item);

      emit(state.copyWith(status: const ProcessState.success()));
    } catch (e) {
      emit(state.copyWith(status: ProcessState.error(error: e)));
    }
  }

  void updateTitle(String value) {
    final title = TodoValidator.dirty(value);
    emit(state.copyWith(title: title));
  }

  void updateNote(String value) {
    final note = TodoValidator.dirty(value);
    emit(state.copyWith(note: note));
  }

  void updateCompletion(bool isCompleted) {
    emit(state.copyWith(isCompleted: isCompleted));
  }
}
