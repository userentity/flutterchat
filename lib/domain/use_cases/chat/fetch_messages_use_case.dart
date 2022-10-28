import 'package:injectable/injectable.dart';

import '../../entities/message_entity.dart';
import '../../repositories/user_repository.dart';
import '../../repositories/chat_repository.dart';
import '../base_use_case.dart';

abstract class FetchMessagesUseCase
    implements BaseUseCase<Future<List<MessageEntity>>, FetchMessagesArgs> {}

@Injectable(as: FetchMessagesUseCase)
class FetchMessagesUseCaseImpl implements FetchMessagesUseCase {
  const FetchMessagesUseCaseImpl(this._chatRepository, this._userRepository);

  final ChatRepository _chatRepository;

  final UserRepository _userRepository;

  @override
  Future<List<MessageEntity>> call(FetchMessagesArgs args) async {
    List<MessageEntity> messages =
        await _chatRepository.fetchMessages(args.chatId, args.lastId);

    final profileUserId = _userRepository.fetchProfileUser().id;

    messages = messages
        .map((message) =>
            message.copyWith(isOwner: profileUserId == message.fromId))
        .toList();

    return messages;
  }
}

class FetchMessagesArgs {
  const FetchMessagesArgs({
    required this.chatId,
    this.lastId,
  });

  final String chatId;

  final String? lastId;
}
