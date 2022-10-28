import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity.text({
    required String id,
    required String fromId,
    required String toId,
    required String chatId,
    required String content,
    required bool isViewed,
    required DateTime createdAt,
    @Default(false) isOwner,
  }) = MessageTextEntity;

  const factory MessageEntity.image({
    required String id,
    required String fromId,
    required String toId,
    required String chatId,
    required String content,
    required bool isViewed,
    required DateTime createdAt,
    @Default(false) isOwner,
  }) = MessageImageEntity;

  const factory MessageEntity.audio({
    required String id,
    required String fromId,
    required String toId,
    required String chatId,
    required String content,
    required bool isViewed,
    required DateTime createdAt,
    @Default(false) isOwner,
  }) = MessageAudioEntity;

  const factory MessageEntity.video({
    required String id,
    required String fromId,
    required String toId,
    required String chatId,
    required String content,
    required bool isViewed,
    required DateTime createdAt,
    required String thumbnailUrl,
    @Default(false) isOwner,
  }) = MessageVideoEntity;
}

extension MessageEntityX on MessageEntity {
  String get getPreview {
    if (this is MessageTextEntity) {
      return content;
    } else if (this is MessageVideoEntity) {
      return "video...";
    } else if (this is MessageAudioEntity) {
      return "audio...";
    } else if (this is MessageImageEntity) {
      return "image...";
    }
    return "";
  }
}
