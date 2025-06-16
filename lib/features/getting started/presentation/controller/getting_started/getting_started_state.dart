//part of 'getting_started_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getting_started_state.freezed.dart';

@freezed
class GettingStartedState with _$GettingStartedState {
  const factory GettingStartedState.initial() = Initial;
  const factory GettingStartedState.showLogo() = ShowLogo;
  const factory GettingStartedState.showOnboarding() = ShowOnboarding;
}
