import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../entities/auth_info_entity.dart';
import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Register new user using Google Auth
///
/// Return [UserEntity] or [Failure]
abstract class SignUpGoogleUseCase
    implements
        BaseUseCase<Future<Either<Failure, UserEntity>>, SignUpGoogleArgs> {}

@Injectable(as: SignUpGoogleUseCase)
class SignUpUseCaseImpl implements SignUpGoogleUseCase {
  const SignUpUseCaseImpl(this._authRepository, this._userRepository);

  final AuthRepository _authRepository;

  final UserRepository _userRepository;

  @override
  Future<Either<Failure, UserEntity>> call(SignUpGoogleArgs args) async {
    try {
      AuthInfoEntity authInfo = await _authRepository.signInGoogle();
      UserEntity user = UserEntity(
        id: authInfo.id,
        name: authInfo.name,
        about: "",
        email: authInfo.email,
        imageUrl: authInfo.imageUrl,
      );

      await _userRepository.addUser(user);
      _userRepository.setProfileUser(user);

      return Right(user);
    } catch (e) {
      _authRepository.signOut();
      return Left(Failure(e.toString()));
    }
  }
}

class SignUpGoogleArgs {}
