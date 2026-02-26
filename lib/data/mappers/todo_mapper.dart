import 'package:tms_todo/data/model/models.dart';
import 'package:tms_todo/domain/entity/entities.dart';

abstract interface class TodoMapper {
  TodoEntity toTodoEntity(TodoModel model);

  TodoModel toTodoModel(TodoEntity entity);
}

final class TodoMapperImpl implements TodoMapper {
  @override
  TodoEntity toTodoEntity(TodoModel model) {
    return TodoEntity(
      id: model.id,
      title: model.title,
      note: model.note,
      isCompleted: model.isCompleted,
    );
  }

  @override
  TodoModel toTodoModel(TodoEntity entity) {
    return TodoModel(
      id: entity.id,
      title: entity.title,
      note: entity.note,
      isCompleted: entity.isCompleted,
    );
  }
}
