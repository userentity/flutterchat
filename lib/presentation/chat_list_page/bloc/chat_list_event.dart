import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/message_entity.dart';

part 'chat_list_event.freezed.dart';

@freezed
class ChatListEvent with _$ChatListEvent {
  const factory ChatListEvent.chatsFetched() = ChatListChatsFetched;
  const factory ChatListEvent.chatDeleted(String chatId) = ChatListChatDeleted;
  const factory ChatListEvent.messageFetched(MessageEntity message) =
      ChatListMessageFetched;
}
