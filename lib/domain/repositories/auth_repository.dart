import 'dart:async';

import '../entities/auth_info_entity.dart';

abstract class AuthRepository {
  /// Sign in using email and password
  ///
  /// Return User Id
  Future<String> signIn(String email, String password);

  /// Register using email and password
  ///
  /// Return User id
  Future<String> signUp(String email, String password);

  /// Sign in using Google Auth
  ///
  /// Return [AuthInfoEntity]
  Future<AuthInfoEntity> signInGoogle();

  /// Get authorized user id
  ///
  /// Return User id if exist or null
  Future<String?> checkAuth();

  /// Sign out from current user account
  Future<void> signOut();
}
