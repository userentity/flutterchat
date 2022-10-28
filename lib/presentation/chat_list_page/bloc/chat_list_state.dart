import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/chat_entity.dart';

part 'chat_list_state.freezed.dart';

@freezed
class ChatListState with _$ChatListState {
  const factory ChatListState.initial() = ChatListInitial;
  const factory ChatListState.loading() = ChatListLoading;
  const factory ChatListState.loadSuccess(List<ChatEntity> chats) =
      ChatListLoadSuccess;
  const factory ChatListState.error(String text) = ChatListError;
}
