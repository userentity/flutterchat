import '../entities/user_entity.dart';

abstract class UserRepository {
  /// Get current profile User
  ///
  /// Return [UserEntity]
  UserEntity fetchProfileUser();

  /// Set profile User like current
  ///
  /// Return [UserEntity]
  Future<void> setProfileUser(UserEntity? user);

  /// Add user
  Future<void> addUser(UserEntity user);

  /// Edit user
  Future<void> editUser(UserEntity user);

  /// Get User
  ///
  /// Return [UserEntity]
  Future<UserEntity> fetchUser(String id);

  /// Get Users
  ///
  /// Return list of [UserEntity]
  Future<List<UserEntity>> fetchUsers({String? search});

  /// Upload profile image
  ///
  /// Return string url
  Future<String> uploadProfileImage(
      {required String fileName, required String path});
}
