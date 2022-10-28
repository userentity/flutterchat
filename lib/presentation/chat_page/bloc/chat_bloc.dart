import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/chat_entity.dart';
import '../../../domain/use_cases/chat/send_image_message_use_case.dart';
import '../../../domain/use_cases/chat/message_viewed_use_case.dart';
import '../../../domain/use_cases/chat/send_audio_message_use_case.dart';
import '../../../domain/use_cases/chat/send_text_message_use_case.dart';
import '../../../domain/use_cases/chat/send_video_message_use_case.dart';
import '../../../domain/use_cases/chat/subscribe_for_messages_use_case.dart';
import '../../../domain/use_cases/user/fetch_profile_user_use_case.dart';
import '../../../domain/entities/message_entity.dart';
import '../../../domain/use_cases/chat/fetch_messages_use_case.dart';
import 'chat_event.dart';
import 'chat_state.dart';

// TODO Separate logic
// TODO Add loading for send message
@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(
    this._fetchMessagesUseCase,
    FetchProfileUserUseCase fetchProfileUserUseCase,
    @factoryParam this._chat,
    this._sendTextMessagesUseCase,
    this._sendAudioMessagesUseCase,
    this._sendVideoMessagesUseCase,
    this._subscribeForMessagesUseCase,
    this._viewMessagesUseCase,
    this._sendImageMessagesUseCase,
  ) : super(
          ChatState(
            chat: _chat,
            profileUser: fetchProfileUserUseCase(FetchProfileUserArgs()),
          ),
        ) {
    on<ChatMessagesFetched>(
        (event, emit) => _onChatMessagesFetched(event, emit));
    on<ChatNewMessageFetched>(
        (event, emit) => _onNewMessageFetched(event, emit));
    on<ChatMessageViewed>((event, emit) => _onChatMessageViewed(event, emit));

    on<ChatTextMessageSent>(
        (event, emit) async => await _onChatTextMessageSent(event, emit));

    on<ChatImageMessageSent>(
        (event, emit) async => await _onChatImageMessageSent(event, emit));

    // Audio Record
    on<ChatAudioRecordTapped>(
        (event, emit) async => await _onChatAudioRecordTapped(event, emit));
    on<ChatAudioRecordStarted>(
        (event, emit) async => await _onChatAudioRecordStarted(event, emit));
    on<ChatAudioRecordCancelled>(
        (event, emit) async => await _onChatAudioRecordCancelled(event, emit));
    on<ChatAudioMessageSent>(
        (event, emit) async => await _onChatAudioMessageSent(event, emit));

    // Video Record
    on<ChatVideoRecordTapped>(
        (event, emit) async => await _onChatVideoRecordTapped(event, emit));
    on<ChatVideoRecordStarted>(
        (event, emit) async => await _onChatVideoRecordStarted(event, emit));
    on<ChatVideoRecordCancelled>(
        (event, emit) async => await _onChatVideoRecordCancelled(event, emit));
    on<ChatVideoMessageSent>(
        (event, emit) async => await _onChatVideoMessageSent(event, emit));

    add(const ChatMessagesFetched());

    /// subscribe for new messages
    _onNewMessage ??= _subscribeForMessagesUseCase(SubscribeForMessagesArgs())
        .listen((message) => add(ChatNewMessageFetched(message)));
  }

  final ChatEntity _chat;

  final FetchMessagesUseCase _fetchMessagesUseCase;

  final SendTextMessagesUseCase _sendTextMessagesUseCase;
  final SendAudioMessagesUseCase _sendAudioMessagesUseCase;
  final SendVideoMessagesUseCase _sendVideoMessagesUseCase;
  final SendImageMessagesUseCase _sendImageMessagesUseCase;
  final SubscribeForMessagesUseCase _subscribeForMessagesUseCase;
  final MessageViewedUseCase _viewMessagesUseCase;

  StreamSubscription<MessageEntity>? _onNewMessage;

  @override
  Future<void> close() async {
    _onNewMessage?.cancel();
    super.close();
  }

  void _onNewMessageFetched(
      ChatNewMessageFetched event, Emitter<ChatState> emit) {
    if (event.message.chatId != _chat.id) {
      // Show notification about new message
    } else {
      _addMessageToBegin(event.message, emit);
    }
  }

  Future<void> _onChatMessagesFetched(
      ChatMessagesFetched event, Emitter<ChatState> emit) async {
    emit(state.copyWith(isLoading: true));
    List<MessageEntity> messages = await _fetchMessagesUseCase(
        FetchMessagesArgs(chatId: _chat.id, lastId: event.lastId));
    emit(state.copyWith(messages: [...state.messages ?? [], ...messages]));
  }

  Future<void> _onChatMessageViewed(
      ChatMessageViewed event, Emitter<ChatState> emit) async {
    _viewMessagesUseCase(ViewedMessagesArgs(messageId: event.messageId));
  }

  Future<void> _onChatTextMessageSent(
      ChatTextMessageSent event, Emitter<ChatState> emit) async {
    final newMessage = await _sendTextMessagesUseCase(SendTextMessagesArgs(
      chatId: _chat.id,
      toId: _chat.withUser.id,
      text: event.text,
    ));

    _addMessageToBegin(newMessage, emit);
  }

  Future<void> _onChatImageMessageSent(
      ChatImageMessageSent event, Emitter<ChatState> emit) async {
    final message = await _sendImageMessagesUseCase(SendImageMessagesArgs(
      chatId: _chat.id,
      toId: _chat.withUser.id,
      path: event.path,
    ));
    _addMessageToBegin(message, emit);
  }

  // Audio Record

  Future<void> _onChatAudioRecordTapped(
      ChatAudioRecordTapped event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.audio,
      recordStatus: ChatRecordStatus.init,
    ));
  }

  Future<void> _onChatAudioRecordStarted(
      ChatAudioRecordStarted event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.audio,
      recordStatus: ChatRecordStatus.recording,
    ));
  }

  Future<void> _onChatAudioRecordCancelled(
      ChatAudioRecordCancelled event, Emitter<ChatState> emit) async {
    emit(
      state.copyWith(
        chatBarStatus: ChatBarStatus.text,
        recordStatus: ChatRecordStatus.none,
      ),
    );
  }

  Future<void> _onChatAudioMessageSent(
      ChatAudioMessageSent event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.audio,
      recordStatus: ChatRecordStatus.finish,
    ));

    final message = await _sendAudioMessagesUseCase(SendAudioMessagesArgs(
      chatId: _chat.id,
      toId: _chat.withUser.id,
      path: event.path,
    ));

    _addMessageToBegin(message, emit);

    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.text,
      recordStatus: ChatRecordStatus.none,
    ));
  }

  // Video Record

  Future<void> _onChatVideoRecordTapped(
      ChatVideoRecordTapped event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.video,
      recordStatus: ChatRecordStatus.init,
    ));
  }

  Future<void> _onChatVideoRecordStarted(
      ChatVideoRecordStarted event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.video,
      recordStatus: ChatRecordStatus.recording,
    ));
  }

  Future<void> _onChatVideoRecordCancelled(
      ChatVideoRecordCancelled event, Emitter<ChatState> emit) async {
    emit(
      state.copyWith(
        chatBarStatus: ChatBarStatus.text,
        recordStatus: ChatRecordStatus.none,
      ),
    );
  }

  Future<void> _onChatVideoMessageSent(
      ChatVideoMessageSent event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.video,
      recordStatus: ChatRecordStatus.finish,
    ));

    final message = await _sendVideoMessagesUseCase(SendVideoMessagesArgs(
      chatId: _chat.id,
      toId: _chat.withUser.id,
      path: event.path,
    ));

    _addMessageToBegin(message, emit);

    emit(state.copyWith(
      chatBarStatus: ChatBarStatus.text,
      recordStatus: ChatRecordStatus.none,
    ));
  }

  void _addMessageToBegin(MessageEntity newMessage, Emitter<ChatState> emit) {
    List<MessageEntity> messages = List.from(state.messages ?? []);
    messages = [newMessage, ...messages];
    emit(state.copyWith(messages: messages));

    if (!newMessage.isOwner) {
      add(ChatMessageViewed(newMessage.id));
    }
  }
}
