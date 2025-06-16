//part of 'getting_started_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getting_started_event.freezed.dart';

@freezed
class GettingStartedEvent with _$GettingStartedEvent {
  const factory GettingStartedEvent.started() = Started;
  const factory GettingStartedEvent.logoShown() = LogoShown;
  const factory GettingStartedEvent.nextPressed() = NextPressed;
  const factory GettingStartedEvent.skipPressed() = SkipPressed;
}
