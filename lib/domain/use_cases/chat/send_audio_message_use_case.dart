import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../entities/message_entity.dart';
import '../../repositories/chat_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

abstract class SendAudioMessagesUseCase
    implements BaseUseCase<Future<MessageEntity>, SendAudioMessagesArgs> {}

@Injectable(as: SendAudioMessagesUseCase)
class SendAudioMessagesUseCaseImpl implements SendAudioMessagesUseCase {
  const SendAudioMessagesUseCaseImpl(
      this._chatRepository, this._userRepository);

  final ChatRepository _chatRepository;

  final UserRepository _userRepository;

  @override
  Future<MessageEntity> call(SendAudioMessagesArgs args) async {
    final path = args.path.replaceAll("file:///private", "");

    final storageUrl = await _chatRepository.downloadFile(path);

    final message = MessageAudioEntity(
      id: const Uuid().v4(),
      fromId: _userRepository.fetchProfileUser().id,
      toId: args.toId,
      chatId: args.chatId,
      content: storageUrl,
      isViewed: false,
      createdAt: DateTime.now(),
      isOwner: true,
    );

    await _chatRepository.addMessage(message);

    return message;
  }
}

class SendAudioMessagesArgs {
  const SendAudioMessagesArgs({
    required this.chatId,
    required this.toId,
    required this.path,
  });
  final String chatId;
  final String toId;
  final String path;
}
