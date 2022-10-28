import 'package:injectable/injectable.dart';

import '../../entities/message_entity.dart';
import '../../repositories/user_repository.dart';
import '../../repositories/chat_repository.dart';
import '../base_use_case.dart';

abstract class SubscribeForMessagesUseCase
    implements BaseUseCase<Stream<MessageEntity>, SubscribeForMessagesArgs> {}

@Injectable(as: SubscribeForMessagesUseCase)
class SubscribeForMessagesUseCaseImpl implements SubscribeForMessagesUseCase {
  const SubscribeForMessagesUseCaseImpl(
      this._chatRepository, this._userRepository);

  final ChatRepository _chatRepository;

  final UserRepository _userRepository;

  @override
  Stream<MessageEntity> call(SubscribeForMessagesArgs args) {
    final profileUserId = _userRepository.fetchProfileUser().id;

    return _chatRepository.subscribeForMessages(profileUserId);
  }
}

class SubscribeForMessagesArgs {}
