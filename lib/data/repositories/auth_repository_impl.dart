import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../data/mappers/auth_info.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/auth_info_entity.dart';
import '../data_sources/remote/firebase_auth_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._authDataSource);

  final FirebaseAuthDataSource _authDataSource;

  @override
  Future<String> signUp(String email, String password) async {
    return await _authDataSource.signUp(email, password);
  }

  @override
  Future<String> signIn(String email, String password) async {
    return await _authDataSource.signIn(email, password);
  }

  @override
  Future<AuthInfoEntity> signInGoogle() async {
    final authInfoModel = await _authDataSource.authWithGoogle();
    return authInfoModel.toEntity();
  }

  @override
  Future<void> signOut() async {
    await _authDataSource.signOut();
  }

  @override
  Future<String?> checkAuth() async {
    return await _authDataSource.getProfileUserId();
  }
}
