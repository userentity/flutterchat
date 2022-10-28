import 'package:injectable/injectable.dart';

import '../../../core/error/failure.dart';
import '../../repositories/auth_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Sign Out current User
///
/// Return [Failure] if error. Return null if success
abstract class SignOutUseCase
    implements BaseUseCase<Future<Failure?>, SignOutArgs> {}

@Injectable(as: SignOutUseCase)
class SignOutUseCaseImpl implements SignOutUseCase {
  const SignOutUseCaseImpl(this._authRepository, this._userRepository);

  final AuthRepository _authRepository;

  final UserRepository _userRepository;

  @override
  Future<Failure?> call(SignOutArgs args) async {
    try {
      await _authRepository.signOut();
      _userRepository.setProfileUser(null);
    } catch (e) {
      return Failure(e.toString());
    }
    return null;
  }
}

class SignOutArgs {}
