part of 'arguments.dart';

@freezed
abstract class SearchDetailsArguments with _$SearchDetailsArguments {
  const SearchDetailsArguments._();

  const factory SearchDetailsArguments({required String id}) = _SearchDetailsArguments;

  factory SearchDetailsArguments.fromJson(Map<String, dynamic> json) =>
      _$SearchDetailsArgumentsFromJson(json);
}
