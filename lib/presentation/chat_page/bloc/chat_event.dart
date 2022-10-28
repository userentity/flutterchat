import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/message_entity.dart';

part 'chat_event.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.messagesFetched({String? lastId}) =
      ChatMessagesFetched;
  const factory ChatEvent.messageViewed(String messageId) = ChatMessageViewed;
  const factory ChatEvent.newMessageFetched(MessageEntity message) =
      ChatNewMessageFetched;

  const factory ChatEvent.audioRecordTapped() = ChatAudioRecordTapped;
  const factory ChatEvent.audioRecordStarted() = ChatAudioRecordStarted;
  const factory ChatEvent.audioRecordCancelled() = ChatAudioRecordCancelled;
  const factory ChatEvent.audioMessageSent(String path) = ChatAudioMessageSent;

  const factory ChatEvent.videoRecordTapped() = ChatVideoRecordTapped;
  const factory ChatEvent.videoRecordStarted() = ChatVideoRecordStarted;
  const factory ChatEvent.videoRecordCancelled() = ChatVideoRecordCancelled;
  const factory ChatEvent.videoMessageSent(String path) = ChatVideoMessageSent;

  const factory ChatEvent.imageMessageSent(String path) = ChatImageMessageSent;

  const factory ChatEvent.textMessageSent(String text) = ChatTextMessageSent;
}
