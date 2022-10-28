import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_event.freezed.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.signUpPressed({
    required String email,
    required String password,
    required String name,
    String? imagePath,
  }) = RegistrationSignUpPressed;

  const factory RegistrationEvent.signUpGooglePressed() =
      RegistrationSignUpGooglePressed;
}
