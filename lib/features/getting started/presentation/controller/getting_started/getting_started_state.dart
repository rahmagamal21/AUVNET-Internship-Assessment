//part of 'getting_started_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getting_started_state.freezed.dart';

@freezed
class GettingStartedState with _$GettingStartedState {
  const factory GettingStartedState({required int index}) =
      _GettingStartedState;

  factory GettingStartedState.initial() => const GettingStartedState(index: -1);
}
