import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_entity.dart';
import 'user_entity.dart';

part 'chat_entity.freezed.dart';

@freezed
class ChatEntity with _$ChatEntity {
  const factory ChatEntity({
    required String id,
    required UserEntity withUser,
    @Default(0) int unreadCount,
    MessageEntity? lastMessage,
  }) = _ChatEntity;
}

extension ChatEntityX on ChatEntity {
  String get name {
    return withUser.name;
  }

  String get image {
    return withUser.imageUrl;
  }
}
