import 'package:equatable/equatable.dart';

import '../../../domain/entities/chat_entity.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/entities/message_entity.dart';

enum ChatBarStatus { text, audio, video }

enum ChatRecordStatus { none, init, recording, finish }

class ChatState extends Equatable {
  const ChatState({
    required this.chat,
    required this.profileUser,
    this.chatBarStatus = ChatBarStatus.text,
    this.recordStatus = ChatRecordStatus.none,
    this.messages,
    this.error = "",
    this.isLoading = true,
  });

  final List<MessageEntity>? messages;

  final ChatBarStatus chatBarStatus;

  final ChatRecordStatus recordStatus;

  final ChatEntity chat;

  final UserEntity profileUser;

  final String error;

  final bool isLoading;

  ChatState copyWith({
    List<MessageEntity>? messages,
    String? error,
    bool? isLoading,
    ChatRecordStatus? recordStatus,
    ChatBarStatus? chatBarStatus,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      recordStatus: recordStatus ?? this.recordStatus,
      chatBarStatus: chatBarStatus ?? this.chatBarStatus,
      chat: chat,
      profileUser: profileUser,
      error: error ?? "",
      isLoading: isLoading ?? false,
    );
  }

  @override
  List<Object?> get props => [
        messages,
        chat,
        profileUser,
        error,
        isLoading,
        recordStatus,
        chatBarStatus,
      ];
}
