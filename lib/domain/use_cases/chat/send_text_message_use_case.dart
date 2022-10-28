import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../entities/message_entity.dart';
import '../../repositories/user_repository.dart';
import '../../repositories/chat_repository.dart';
import '../base_use_case.dart';

abstract class SendTextMessagesUseCase
    implements BaseUseCase<Future<MessageEntity>, SendTextMessagesArgs> {}

@Injectable(as: SendTextMessagesUseCase)
class SendTextMessagesUseCaseImpl implements SendTextMessagesUseCase {
  const SendTextMessagesUseCaseImpl(this._chatRepository, this._userRepository);

  final ChatRepository _chatRepository;

  final UserRepository _userRepository;

  @override
  Future<MessageEntity> call(SendTextMessagesArgs args) async {
    final message = MessageTextEntity(
      id: const Uuid().v4(),
      fromId: _userRepository.fetchProfileUser().id,
      toId: args.toId,
      chatId: args.chatId,
      content: args.text,
      isViewed: false,
      createdAt: DateTime.now(),
      isOwner: true,
    );

    await _chatRepository.addMessage(message);

    return message;
  }
}

class SendTextMessagesArgs {
  const SendTextMessagesArgs({
    required this.chatId,
    required this.toId,
    required this.text,
  });
  final String chatId;
  final String toId;
  final String text;
}
