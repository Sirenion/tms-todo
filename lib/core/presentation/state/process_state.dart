import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_state.freezed.dart';

@freezed
abstract class ProcessState with _$ProcessState {
  bool get inAction {
    return this is _ProcessInActionState;
  }

  const ProcessState._();

  const factory ProcessState.initial() = _ProcessInitialState;

  const factory ProcessState.inAction() = _ProcessInActionState;

  const factory ProcessState.success() = _ProcessSuccessState;

  const factory ProcessState.error({required Object error}) = _ProcessErrorState;
}
