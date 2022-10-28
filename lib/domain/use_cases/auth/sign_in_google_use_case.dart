import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../entities/auth_info_entity.dart';
import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Sign In using Google Auth
///
/// Return [UserEntity] or [Failure]
abstract class SignInGoogleUseCase
    implements
        BaseUseCase<Future<Either<Failure, UserEntity>>, SignInGoogleArgs> {}

@Injectable(as: SignInGoogleUseCase)
class SignInUseCaseImpl implements SignInGoogleUseCase {
  const SignInUseCaseImpl(this._authRepository, this._userRepository);

  final AuthRepository _authRepository;

  final UserRepository _userRepository;

  @override
  Future<Either<Failure, UserEntity>> call(SignInGoogleArgs args) async {
    try {
      AuthInfoEntity authInfo = await _authRepository.signInGoogle();
      UserEntity user = await _userRepository.fetchUser(authInfo.id);
      _userRepository.setProfileUser(user);

      return Right(user);
    } catch (e) {
      _authRepository.signOut();
      return Left(Failure(e.toString()));
    }
  }
}

class SignInGoogleArgs {}
