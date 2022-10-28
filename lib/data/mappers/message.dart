import '../../data/models/message_model.dart';
import '../../domain/entities/message_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../../service_locator.dart' as locator;

extension MessageModelMapper on MessageModel {
  MessageEntity toEntity() {
    final profileUserId = locator.getIt<UserRepository>().fetchProfileUser().id;
    if (type == "video") {
      return MessageVideoEntity(
        id: id,
        fromId: fromId,
        toId: toId,
        chatId: chatId,
        content: content,
        isViewed: isViewed,
        createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
        thumbnailUrl: thumbnailUrl ?? "",
        isOwner: profileUserId != toId,
      );
    } else if (type == "audio") {
      return MessageAudioEntity(
        id: id,
        fromId: fromId,
        toId: toId,
        chatId: chatId,
        content: content,
        isViewed: isViewed,
        createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
        isOwner: profileUserId != toId,
      );
    } else if (type == "image") {
      return MessageImageEntity(
        id: id,
        fromId: fromId,
        toId: toId,
        chatId: chatId,
        content: content,
        isViewed: isViewed,
        createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
        isOwner: profileUserId != toId,
      );
    } else {
      return MessageTextEntity(
        id: id,
        fromId: fromId,
        toId: toId,
        chatId: chatId,
        content: content,
        isViewed: isViewed,
        createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
        isOwner: profileUserId != toId,
      );
    }
  }
}

extension MessageMapper on MessageEntity {
  MessageModel toModel() {
    String type = "";
    String? thumbnailUrl;

    map(
      text: (message) {
        type = "text";
      },
      image: (message) {
        type = "image";
      },
      audio: (message) {
        type = "audio";
      },
      video: (message) {
        type = "video";
        thumbnailUrl = message.thumbnailUrl;
      },
    );

    return MessageModel(
      id: id,
      fromId: fromId,
      toId: toId,
      chatId: chatId,
      type: type,
      content: content,
      isViewed: isViewed,
      createdAt: createdAt.millisecondsSinceEpoch,
      thumbnailUrl: thumbnailUrl,
    );
  }
}
