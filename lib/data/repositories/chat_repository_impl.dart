import 'package:uuid/uuid.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

import '../../domain/entities/chat_entity.dart';
import '../../domain/entities/message_entity.dart';
import '../../domain/repositories/chat_repository.dart';
import '../data_sources/remote/firebase_firestore_data_source.dart';
import '../data_sources/remote/firebase_storage_data_source.dart';
import '../mappers/chat.dart';
import '../mappers/message.dart';
import '../models/message_model.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(
    this._dbDataSource,
    this._storageDataSource,
  );

  final FirebaseFirestoreDataSource _dbDataSource;

  final FirebaseStorageDataSource _storageDataSource;

  @override
  Future<ChatEntity?> getChat(String userId, String userProfileId) async {
    final chatModel = await _dbDataSource.getChat(userId, userProfileId);
    return chatModel?.toEntity();
  }

  @override
  Future<void> addChat(ChatEntity chat) async {
    return await _dbDataSource.addChat(chat.toModel());
  }

  @override
  Future<void> addMessage(MessageEntity message) async {
    await _dbDataSource.addMessage(message.toModel());
  }

  @override
  Future<void> deleteChat(String chatId) async {
    await _dbDataSource.deleteChat(chatId);
  }

  @override
  Future<List<ChatEntity>> fetchChats(String userId) async {
    final chatModels = await _dbDataSource.fetchChats(userId);

    List<ChatEntity> chats = [];

    for (final chatModel in chatModels) {
      ChatEntity chat = await chatModel.toEntity();
      final lastMessageModel =
          await _dbDataSource.fetchLastMessage(chatModel.id);

      if (lastMessageModel != null) {
        final lastMessage = lastMessageModel.toEntity();
        final unreadMessageCount =
            await _dbDataSource.fetchUnreadMessageCount(chatModel.id, userId);

        chat = chat.copyWith(
            lastMessage: lastMessage, unreadCount: unreadMessageCount);
      }

      chats.add(chat);
    }

    return chats;
  }

  @override
  Future<List<MessageEntity>> fetchMessages(
      String chatId, String? lastId) async {
    List<MessageModel> chatMessages =
        await _dbDataSource.fetchMessages(chatId, lastId);
    return chatMessages.map((message) => message.toEntity()).toList();
  }

  @override
  Future<void> viewMessage(String messageId) async {
    await _dbDataSource.messageViewed(messageId);
  }

  @override
  Future<String> downloadFile(String path) async {
    return await _storageDataSource.uploadFile(
      path: path,
      fileName: const Uuid().v4() + extension(path),
      ref: "files",
    );
  }

  @override
  Stream<MessageEntity> subscribeForMessages(String userId) {
    return _dbDataSource
        .subscribeForMessages(userId)
        .map((message) => message.toEntity());
  }
}
