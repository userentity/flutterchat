import 'package:injectable/injectable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/repositories/user_repository.dart';
import '../data_sources/remote/firebase_firestore_data_source.dart';
import '../data_sources/remote/firebase_storage_data_source.dart';
import '../mappers/user.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._dbDataSource, this._storageDataSource);

  final FirebaseFirestoreDataSource _dbDataSource;

  final FirebaseStorageDataSource _storageDataSource;

  UserEntity? _profileUser;

  @override
  Future<void> addUser(UserEntity user) async {
    await _dbDataSource.addUser(user.toModel());
  }

  @override
  Future<void> editUser(UserEntity user) async {
    await _dbDataSource.editUser(user.toModel());
  }

  @override
  Future<void> setProfileUser(UserEntity? user) async {
    _profileUser = user;
  }

  @override
  Future<UserEntity> fetchUser(String id) async {
    final userModel = await _dbDataSource.fetchUser(id);
    return userModel.toEntity();
  }

  @override
  UserEntity fetchProfileUser() {
    return _profileUser!;
  }

  @override
  Future<String> uploadProfileImage({
    required String fileName,
    required String path,
  }) async {
    return _storageDataSource.uploadFile(
        path: path, fileName: fileName, ref: "profile_images/");
  }

  @override
  Future<List<UserEntity>> fetchUsers({String? search}) async {
    return (await _dbDataSource.fetchUsers(search: search))
        .map((e) => e.toEntity())
        .toList();
  }
}
