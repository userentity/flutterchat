import 'package:injectable/injectable.dart';

import '../../repositories/chat_repository.dart';
import '../base_use_case.dart';

abstract class MessageViewedUseCase
    implements BaseUseCase<Future<void>, ViewedMessagesArgs> {}

@Injectable(as: MessageViewedUseCase)
class MessageViewedUseCaseImpl implements MessageViewedUseCase {
  const MessageViewedUseCaseImpl(this._chatRepository);

  final ChatRepository _chatRepository;

  @override
  Future<void> call(ViewedMessagesArgs args) async {
    await _chatRepository.viewMessage(args.messageId);
  }
}

class ViewedMessagesArgs {
  const ViewedMessagesArgs({required this.messageId});
  final String messageId;
}
