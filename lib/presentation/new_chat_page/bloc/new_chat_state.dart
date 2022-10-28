import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/chat_entity.dart';
import '../../../domain/entities/user_entity.dart';

part 'new_chat_state.freezed.dart';

@freezed
class NewChatState with _$NewChatState {
  const factory NewChatState.initial() = NewChatInitial;

  const factory NewChatState.loading() = NewChatLoading;

  const factory NewChatState.loadSuccess([
    @Default([]) List<UserEntity> users,
  ]) = NewChatLoadSuccess;

  const factory NewChatState.chatDone(ChatEntity chat) = NewChatDone;
}
