part of 'arguments.dart';

@freezed
abstract class PersonDetailsArguments with _$PersonDetailsArguments {
  const PersonDetailsArguments._();

  const factory PersonDetailsArguments({required String id}) = _PersonDetailsArguments;

  factory PersonDetailsArguments.fromJson(Map<String, dynamic> json) =>
      _$PersonDetailsArgumentsFromJson(json);
}
