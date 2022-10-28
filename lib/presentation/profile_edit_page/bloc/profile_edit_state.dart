import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';

part 'profile_edit_state.freezed.dart';

@freezed
class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState.initial() = ProfileEditInitial;

  const factory ProfileEditState.loading() = ProfileEditLoading;

  const factory ProfileEditState.loadSuccess(UserEntity user) =
      ProfileEditLoadSuccess;

  const factory ProfileEditState.updateSuccess() = ProfileUpdateSuccess;
}
