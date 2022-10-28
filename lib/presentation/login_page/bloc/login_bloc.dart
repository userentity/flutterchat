import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_cases/auth/sign_in_google_use_case.dart';
import '../../../domain/use_cases/auth/sign_in_use_case.dart';
import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._signInUseCase, this._signInGoogleUseCase)
      : super(const LoginInitial()) {
    on<LoginSignInPressed>((event, emit) => _onLoginSignInPressed(event, emit));
    on<LoginSignInGooglePressed>(
        (event, emit) => _onLoginSignInGooglePressed(event, emit));
  }

  final SignInUseCase _signInUseCase;

  final SignInGoogleUseCase _signInGoogleUseCase;

  Future<void> _onLoginSignInPressed(
      LoginSignInPressed event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());
    final result = await _signInUseCase(
        SignInArgs(email: event.email, password: event.password));

    result.fold(
      (failure) => emit(LoginError(failure.message)),
      (user) => emit(const LoginSuccess()),
    );
  }

  Future<void> _onLoginSignInGooglePressed(
      LoginSignInGooglePressed event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());
    final result = await _signInGoogleUseCase(SignInGoogleArgs());

    result.fold(
      (failure) => emit(LoginError(failure.message)),
      (user) => emit(const LoginSuccess()),
    );
  }
}
