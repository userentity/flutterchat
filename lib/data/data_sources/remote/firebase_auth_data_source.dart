import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/exceptions.dart';
import '../../models/auth_info_model.dart';

abstract class FirebaseAuthDataSource {
  /// Sign in using FireAuth package with email and password
  ///
  /// Return User Id
  Future<String> signIn(String email, String password);

  /// Register new user using FireAuth package with email and password
  ///
  /// Return User id
  Future<String> signUp(String email, String password);

  /// Auth using GoogleSignIn package
  ///
  /// Return [AuthInfoModel]
  Future<AuthInfoModel> authWithGoogle();

  /// Get authorized user from FireAuth
  ///
  /// Return User id if exist or null
  Future<String?> getProfileUserId();

  /// Sign out from current Firebase user account
  Future<void> signOut();
}

@Singleton(as: FirebaseAuthDataSource)
class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Future<String> signIn(String email, String password) async {
    try {
      User? firebaseUser = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (firebaseUser == null) throw SignInInvalidCredentialsException();

      return firebaseUser.uid;
    } on FirebaseAuthException catch (exception) {
      if (exception.code == "invalid-email") {
        throw SignInInvalidEmailException();
      }
      throw SignInInvalidCredentialsException();
    }
  }

  @override
  Future<String> signUp(String email, String password) async {
    try {
      User? firebaseUser = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (firebaseUser == null) throw SignUpUserEmptyException();

      return firebaseUser.uid;
    } on FirebaseAuthException catch (exception) {
      if (exception.code == "email-already-in-use") {
        throw SignUpEmailAlreadyInUseException();
      } else if (exception.code == "invalid-email") {
        throw SignUpInvalidEmailException();
      } else if (exception.code == "weak-password") {
        throw SignUpWeakPasswordException();
      } else {
        throw SignUpUserEmptyException();
      }
    }
  }

  @override
  Future<AuthInfoModel> authWithGoogle() async {
    try {
      GoogleSignInAccount? googleAccount = await _googleSignIn.signIn();

      if (googleAccount == null) throw SignUpCancelledException();

      GoogleSignInAuthentication authentication =
          await googleAccount.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: authentication.accessToken,
        idToken: authentication.idToken,
      );

      User? firebaseUser =
          (await _firebaseAuth.signInWithCredential(credential)).user;

      if (firebaseUser == null) throw SignInInvalidCredentialsException();

      return AuthInfoModel(
        id: firebaseUser.uid,
        name: firebaseUser.displayName,
        email: firebaseUser.email,
        imageUrl: firebaseUser.photoURL,
      );
    } on FirebaseAuthException catch (exception) {
      if (exception.code == "invalid-email") {
        throw SignInInvalidEmailException();
      }
      throw SignInInvalidCredentialsException();
    }
  }

  @override
  Future<String?> getProfileUserId() async {
    User? firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null) {
      return firebaseUser.uid;
    }
    return null;
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.disconnect();
    await _googleSignIn.signOut();
  }
}
