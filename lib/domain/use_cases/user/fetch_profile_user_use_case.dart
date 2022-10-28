import 'package:injectable/injectable.dart';

import '../../entities/user_entity.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Get current user
///
/// return [UserEntity]
abstract class FetchProfileUserUseCase
    implements BaseUseCase<UserEntity, FetchProfileUserArgs> {}

@Injectable(as: FetchProfileUserUseCase)
class FetchProfileUserUseCaseImpl implements FetchProfileUserUseCase {
  const FetchProfileUserUseCaseImpl(this._userRepository);

  final UserRepository _userRepository;

  @override
  UserEntity call(FetchProfileUserArgs args) {
    return _userRepository.fetchProfileUser();
  }
}

class FetchProfileUserArgs {}
