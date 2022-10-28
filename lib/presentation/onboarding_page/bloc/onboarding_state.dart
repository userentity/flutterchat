import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = OnboardingInitial;
  const factory OnboardingState.loading() = OnboardingLoading;
  const factory OnboardingState.userAuth() = OnboardingUserAuth;
  const factory OnboardingState.userNotAuth() = OnboardingUserNotAuth;
  const factory OnboardingState.error(String text) = OnboardingError;
}
