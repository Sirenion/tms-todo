part of 'arguments.dart';

@freezed
abstract class UpdateTodoArguments with _$UpdateTodoArguments {
  const UpdateTodoArguments._();

  const factory UpdateTodoArguments({required String id}) = _UpdateTodoArguments;

  factory UpdateTodoArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateTodoArgumentsFromJson(json);
}
