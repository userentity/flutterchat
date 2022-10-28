import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/use_cases/user/edit_profile_user_use_case.dart';
import '../../../domain/use_cases/user/fetch_profile_user_use_case.dart';
import 'profile_edit_event.dart';
import 'profile_edit_state.dart';

@injectable
class ProfileEditBloc extends Bloc<ProfileEditEvent, ProfileEditState> {
  ProfileEditBloc(this._editProfileUserUseCase, this._fetchProfileUserUseCase)
      : super(const ProfileEditInitial()) {
    on<ProfileEditFetched>((event, emit) => _onProfileEditFetched(event, emit));
    on<ProfileEditSubmitted>(
        (event, emit) => _onProfileEditSubmitted(event, emit));

    add(const ProfileEditFetched());
  }

  final EditProfileUserUseCase _editProfileUserUseCase;

  final FetchProfileUserUseCase _fetchProfileUserUseCase;

  Future<void> _onProfileEditFetched(
      ProfileEditFetched event, Emitter<ProfileEditState> emit) async {
    emit(const ProfileEditInitial());
    UserEntity profileUser = _fetchProfileUserUseCase(FetchProfileUserArgs());
    emit(ProfileEditLoadSuccess(profileUser));
  }

  Future<void> _onProfileEditSubmitted(
      ProfileEditSubmitted event, Emitter<ProfileEditState> emit) async {
    emit(const ProfileEditInitial());
    await _editProfileUserUseCase(
        EditProfileUserArgs(name: event.name, imagePath: event.imagePath));
    emit(const ProfileUpdateSuccess());
  }
}
