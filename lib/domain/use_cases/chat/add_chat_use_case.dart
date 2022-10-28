import 'package:injectable/injectable.dart';

import '../../entities/user_entity.dart';
import '../../entities/chat_entity.dart';
import '../../repositories/user_repository.dart';
import '../../repositories/chat_repository.dart';
import '../base_use_case.dart';
import 'package:uuid/uuid.dart';

abstract class AddChatUseCase
    implements BaseUseCase<Future<ChatEntity>, AddChatArgs> {}

@Injectable(as: AddChatUseCase)
class AddChatUseCaseImpl implements AddChatUseCase {
  const AddChatUseCaseImpl(this._chatRepository, this._userRepository);

  final ChatRepository _chatRepository;
  final UserRepository _userRepository;

  @override
  Future<ChatEntity> call(AddChatArgs args) async {
    final userId = args.user.id;
    final profileUserId = _userRepository.fetchProfileUser().id;

    ChatEntity? chat = await _chatRepository.getChat(userId, profileUserId);

    if (chat != null) {
      return chat;
    } else {
      final newChat = ChatEntity(
        id: const Uuid().v4(),
        withUser: args.user,
      );
      await _chatRepository.addChat(newChat);
      return newChat;
    }
  }
}

class AddChatArgs {
  const AddChatArgs(this.user);
  final UserEntity user;
}
