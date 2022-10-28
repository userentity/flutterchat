import 'package:injectable/injectable.dart';

import '../../repositories/chat_repository.dart';
import '../base_use_case.dart';

abstract class DeleteChatUseCase
    implements BaseUseCase<Future<void>, DeleteChatArgs> {}

@Injectable(as: DeleteChatUseCase)
class DeleteChatUseCaseImpl implements DeleteChatUseCase {
  const DeleteChatUseCaseImpl(this._chatRepository);

  final ChatRepository _chatRepository;

  @override
  Future<void> call(DeleteChatArgs args) async {
    await _chatRepository.deleteChat(args.chatId);
  }
}

class DeleteChatArgs {
  const DeleteChatArgs({required this.chatId});
  final String chatId;
}
