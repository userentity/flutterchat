import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_cases/auth/check_auth_use_case.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(this._checkAuthUseCase) : super(const OnboardingInitial()) {
    on<OnboardingAuthChecked>(
        (event, emit) => _onboardingAuthChecked(event, emit));

    add(const OnboardingAuthChecked());
  }

  final CheckAuthUseCase _checkAuthUseCase;

  Future<void> _onboardingAuthChecked(
      OnboardingAuthChecked event, Emitter<OnboardingState> emit) async {
    emit(const OnboardingLoading());
    final result = await _checkAuthUseCase(CheckAuthArgs());
    result.fold(
      (failure) => emit(OnboardingError(failure.message)),
      (isAuth) => emit(
        isAuth ? const OnboardingUserAuth() : const OnboardingUserNotAuth(),
      ),
    );
  }
}
