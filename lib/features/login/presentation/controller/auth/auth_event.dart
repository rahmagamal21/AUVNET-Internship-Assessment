import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginPressed() = LoginPressed;
  const factory AuthEvent.signUpPressed() = SignUpPressed;
}
