import '../entities/chat_entity.dart';
import '../entities/message_entity.dart';

abstract class ChatRepository {
  /// Get all user chats by chatId
  ///
  /// Return list of [ChatEntity]
  Future<List<ChatEntity>> fetchChats(String userId);

  /// Create new chat
  Future<void> addChat(ChatEntity chat);

  /// Get chat if exist
  ///
  /// Return [ChatEntity] or null
  Future<ChatEntity?> getChat(String userId, String userProfileId);

  /// Delete chat
  Future<void> deleteChat(String chatId);

  /// Get all messages from current chat
  ///
  /// Return list of [MessageEntity]
  Future<List<MessageEntity>> fetchMessages(String chatId, String? lastId);

  /// Add new message
  Future<void> addMessage(MessageEntity message);

  /// Listen to new messages from/to user
  ///
  /// return Stream<[MessageEntity]>
  Stream<MessageEntity> subscribeForMessages(String userId);

  /// Set message like viewed
  Future<void> viewMessage(String messageId);

  /// Download file to server
  ///
  /// Return URL
  Future<String> downloadFile(String path);
}
