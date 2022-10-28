import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failure.dart';
import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Check authorized user or not
///
/// Return bool value or [Failure]
abstract class CheckAuthUseCase
    implements BaseUseCase<Future<Either<Failure, bool>>, CheckAuthArgs> {}

@Injectable(as: CheckAuthUseCase)
class CheckAuthUseCaseImpl implements CheckAuthUseCase {
  const CheckAuthUseCaseImpl(this._authRepository, this._userRepository);

  final AuthRepository _authRepository;

  final UserRepository _userRepository;

  @override
  Future<Either<Failure, bool>> call(CheckAuthArgs args) async {
    try {
      String? userId = await _authRepository.checkAuth();

      if (userId != null) {
        UserEntity profileUser = await _userRepository.fetchUser(userId);
        _userRepository.setProfileUser(profileUser);
      }

      return Right(userId != null);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}

class CheckAuthArgs {}
