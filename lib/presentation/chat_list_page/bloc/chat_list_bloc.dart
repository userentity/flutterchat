import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/chat_entity.dart';
import '../../../domain/use_cases/chat/delete_chat_use_case.dart';
import '../../../domain/use_cases/chat/fetch_chats_use_case.dart';
import '../../../domain/entities/message_entity.dart';
import '../../../domain/use_cases/chat/subscribe_for_messages_use_case.dart';
import 'chat_list_event.dart';
import 'chat_list_state.dart';

@injectable
class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  ChatListBloc(this._fetchChatsUseCase, this._subscribeForMessagesUseCase,
      this._deleteChatUseCase)
      : super(const ChatListInitial()) {
    on<ChatListChatsFetched>(
        (event, emit) => _onChatListChatsFetched(event, emit));

    on<ChatListMessageFetched>(
        (event, emit) async => _onChatListMessageFetched(event, emit));

    on<ChatListChatDeleted>(
        (event, emit) async => _onChatListChatDeleted(event, emit));

    add(const ChatListChatsFetched());

    /// subscribe for new messages
    _onNewMessage ??= _subscribeForMessagesUseCase(SubscribeForMessagesArgs())
        .listen((message) => add(ChatListMessageFetched(message)));
  }

  final FetchChatsUseCase _fetchChatsUseCase;

  final SubscribeForMessagesUseCase _subscribeForMessagesUseCase;

  final DeleteChatUseCase _deleteChatUseCase;

  StreamSubscription<MessageEntity>? _onNewMessage;

  void _onChatListMessageFetched(
      ChatListMessageFetched event, Emitter<ChatListState> emit) {
    add(const ChatListChatsFetched());
  }

  Future<void> _onChatListChatDeleted(
      ChatListChatDeleted event, Emitter<ChatListState> emit) async {
    if (state is ChatListLoadSuccess) {
      final chats = List<ChatEntity>.from((state as ChatListLoadSuccess).chats);
      chats.removeWhere((chat) => chat.id == event.chatId);
      emit(ChatListLoadSuccess(chats));
    }

    await _deleteChatUseCase(DeleteChatArgs(chatId: event.chatId));
    add(const ChatListChatsFetched());
  }

  Future<void> _onChatListChatsFetched(
      ChatListChatsFetched event, Emitter<ChatListState> emit) async {
    emit(const ChatListLoading());
    final List<ChatEntity> chats =
        List.from(await _fetchChatsUseCase(FetchChatsArgs()));
    emit(ChatListLoadSuccess(chats));
  }
}
