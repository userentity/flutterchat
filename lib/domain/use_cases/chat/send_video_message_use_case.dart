import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../core/services/video_service.dart';
import '../../entities/message_entity.dart';
import '../../repositories/chat_repository.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

abstract class SendVideoMessagesUseCase
    implements BaseUseCase<Future<MessageEntity>, SendVideoMessagesArgs> {}

@Injectable(as: SendVideoMessagesUseCase)
class SendVideoMessagesUseCaseImpl implements SendVideoMessagesUseCase {
  const SendVideoMessagesUseCaseImpl(
      this._chatRepository, this._userRepository, this._videoService);

  final ChatRepository _chatRepository;

  final UserRepository _userRepository;

  final VideoService _videoService;

  @override
  Future<MessageEntity> call(SendVideoMessagesArgs args) async {
    final fileUrl = await _chatRepository.downloadFile(args.path);

    final profileUserId = _userRepository.fetchProfileUser().id;

    final thumbnailPath = await _videoService.makeThumbnail(args.path);

    final thumbnailUrl = await _chatRepository.downloadFile(thumbnailPath);

    final message = MessageVideoEntity(
      id: const Uuid().v4(),
      fromId: profileUserId,
      toId: args.toId,
      chatId: args.chatId,
      content: fileUrl,
      isViewed: false,
      createdAt: DateTime.now(),
      thumbnailUrl: thumbnailUrl,
      isOwner: true,
    );

    await _chatRepository.addMessage(message);

    return message;
  }
}

class SendVideoMessagesArgs {
  const SendVideoMessagesArgs({
    required this.chatId,
    required this.path,
    required this.toId,
  });
  final String chatId;
  final String toId;
  final String path;
}
