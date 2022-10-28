import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failure.dart';
import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Register new user using email and password
///
/// Return [UserEntity] or [Failure]
abstract class SignUpUseCase
    implements BaseUseCase<Future<Either<Failure, UserEntity>>, SignUpArgs> {}

@Injectable(as: SignUpUseCase)
class SignUpUseCaseImpl implements SignUpUseCase {
  const SignUpUseCaseImpl(this._authRepository, this._userRepository);

  final AuthRepository _authRepository;

  final UserRepository _userRepository;

  @override
  Future<Either<Failure, UserEntity>> call(SignUpArgs args) async {
    try {
      String userId = await _authRepository.signUp(args.email, args.password);
      UserEntity user = UserEntity(
        id: userId,
        name: args.name,
        about: "",
        email: args.email,
        imageUrl: "",
      );
      await _userRepository.addUser(user);
      _userRepository.setProfileUser(user);

      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}

class SignUpArgs {
  const SignUpArgs({
    required this.email,
    required this.password,
    required this.name,
  });

  final String email;

  final String password;

  final String name;
}
