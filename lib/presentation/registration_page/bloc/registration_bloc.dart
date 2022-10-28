import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_cases/auth/sign_up_google_use_case.dart';
import '../../../domain/use_cases/auth/sign_up_use_case.dart';
import 'registration_event.dart';
import 'registration_state.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._signUpUseCase, this._signUpGoogleUseCase)
      : super(const RegistrationInitial()) {
    on<RegistrationSignUpPressed>(
        (event, emit) => _onRegistrationSignUpPressed(event, emit));

    on<RegistrationSignUpGooglePressed>(
        (event, emit) => _onRegistrationSignUpGooglePressed(event, emit));
  }

  final SignUpUseCase _signUpUseCase;

  final SignUpGoogleUseCase _signUpGoogleUseCase;

  Future<void> _onRegistrationSignUpPressed(
      RegistrationSignUpPressed event, Emitter<RegistrationState> emit) async {
    emit(const RegistrationLoading());
    final result = await _signUpUseCase(
      SignUpArgs(
        email: event.email,
        password: event.password,
        name: event.name,
      ),
    );

    result.fold(
      (failure) => emit(RegistrationError(failure.message)),
      (user) => emit(const RegistrationSuccess()),
    );
  }

  Future<void> _onRegistrationSignUpGooglePressed(
      RegistrationSignUpGooglePressed event,
      Emitter<RegistrationState> emit) async {
    emit(const RegistrationLoading());
    final result = await _signUpGoogleUseCase(SignUpGoogleArgs());

    result.fold(
      (failure) => emit(RegistrationError(failure.message)),
      (user) => emit(const RegistrationSuccess()),
    );
  }
}
