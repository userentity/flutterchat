import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/use_cases/auth/sign_out_use_case.dart';
import '../../../domain/use_cases/user/fetch_profile_user_use_case.dart';

import 'profile_event.dart';
import 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._fetchProfileUserUseCase, this._signOutUseCase)
      : super(const ProfileInitial()) {
    on<ProfileFetched>((event, emit) => _onProfileFetched(event, emit));
    on<ProfileSignOutPressed>(
        (event, emit) => _onProfileSignOutPressed(event, emit));
  }

  final FetchProfileUserUseCase _fetchProfileUserUseCase;

  final SignOutUseCase _signOutUseCase;

  Future<void> _onProfileFetched(
      ProfileFetched event, Emitter<ProfileState> emit) async {
    emit(const ProfileInitial());
    UserEntity profileUser = _fetchProfileUserUseCase(FetchProfileUserArgs());
    emit(ProfileSuccess(profileUser));
  }

  Future<void> _onProfileSignOutPressed(
      ProfileSignOutPressed event, Emitter<ProfileState> emit) async {
    emit(const ProfileLoading());
    await _signOutUseCase(SignOutArgs());
    emit(const ProfileSignOut());
  }
}
