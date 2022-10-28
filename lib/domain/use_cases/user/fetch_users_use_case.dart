import 'package:injectable/injectable.dart';

import '../../entities/user_entity.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

/// Get users
///
/// return list of [UserEntity]
abstract class FetchUsersUseCase
    implements BaseUseCase<Future<List<UserEntity>>, FetchUsersArgs> {}

@Injectable(as: FetchUsersUseCase)
class FetchUsersUseCaseImpl implements FetchUsersUseCase {
  const FetchUsersUseCaseImpl(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<List<UserEntity>> call(FetchUsersArgs args) async {
    final users = await _userRepository.fetchUsers(search: args.search);
    final profileUserId = _userRepository.fetchProfileUser().id;
    users.removeWhere((user) => user.id == profileUserId);
    return users;
  }
}

class FetchUsersArgs {
  const FetchUsersArgs({
    this.search,
    this.page,
  });

  final String? search;

  final int? page;
}
