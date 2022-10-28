import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failure.dart';
import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Sign In using email and password
///
/// Return [UserEntity] or [Failure]
abstract class SignInUseCase
    implements BaseUseCase<Future<Either<Failure, UserEntity>>, SignInArgs> {}

@Injectable(as: SignInUseCase)
class SignInUseCaseImpl implements SignInUseCase {
  const SignInUseCaseImpl(this._authRepository, this._userRepository);

  final AuthRepository _authRepository;

  final UserRepository _userRepository;

  @override
  Future<Either<Failure, UserEntity>> call(SignInArgs args) async {
    try {
      String userId = await _authRepository.signIn(args.email, args.password);
      UserEntity user = await _userRepository.fetchUser(userId);
      _userRepository.setProfileUser(user);

      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}

class SignInArgs {
  const SignInArgs({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;
}
