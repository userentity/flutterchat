import 'package:injectable/injectable.dart';

import '../../entities/chat_entity.dart';
import '../../repositories/chat_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

abstract class FetchChatsUseCase
    implements BaseUseCase<Future<List<ChatEntity>>, FetchChatsArgs> {}

@Injectable(as: FetchChatsUseCase)
class FetchChatsUseCaseImpl implements FetchChatsUseCase {
  const FetchChatsUseCaseImpl(this._chatRepository, this._userRepository);

  final ChatRepository _chatRepository;

  final UserRepository _userRepository;

  @override
  Future<List<ChatEntity>> call(FetchChatsArgs args) async {
    final profileUser = _userRepository.fetchProfileUser();
    final chats = await _chatRepository.fetchChats(profileUser.id);

    chats.sort(
      (a, b) {
        int result;
        if (a.lastMessage == null) {
          result = 1;
        } else if (b.lastMessage == null) {
          result = -1;
        } else {
          result = b.lastMessage!.createdAt.compareTo(a.lastMessage!.createdAt);
        }
        return result;
      },
    );

    return chats;
  }
}

class FetchChatsArgs {}
