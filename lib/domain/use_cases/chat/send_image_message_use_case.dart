import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../entities/message_entity.dart';
import '../../repositories/chat_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

abstract class SendImageMessagesUseCase
    implements BaseUseCase<Future<MessageEntity>, SendImageMessagesArgs> {}

@Injectable(as: SendImageMessagesUseCase)
class SendImageMessagesUseCaseImpl implements SendImageMessagesUseCase {
  const SendImageMessagesUseCaseImpl(
      this._chatRepository, this._userRepository);

  final ChatRepository _chatRepository;

  final UserRepository _userRepository;

  @override
  Future<MessageEntity> call(SendImageMessagesArgs args) async {
    final fileUrl = await _chatRepository.downloadFile(args.path);

    final profileUserId = _userRepository.fetchProfileUser().id;

    final message = MessageImageEntity(
      id: const Uuid().v4(),
      fromId: profileUserId,
      toId: args.toId,
      chatId: args.chatId,
      content: fileUrl,
      isViewed: false,
      createdAt: DateTime.now(),
      isOwner: true,
    );

    await _chatRepository.addMessage(message);

    return message;
  }
}

class SendImageMessagesArgs {
  const SendImageMessagesArgs({
    required this.chatId,
    required this.path,
    required this.toId,
  });
  final String chatId;
  final String toId;
  final String path;
}
