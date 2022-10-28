// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function(String chatId) chatDeleted,
    required TResult Function(MessageEntity message) messageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function(String chatId)? chatDeleted,
    TResult? Function(MessageEntity message)? messageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function(String chatId)? chatDeleted,
    TResult Function(MessageEntity message)? messageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatListChatsFetched value) chatsFetched,
    required TResult Function(ChatListChatDeleted value) chatDeleted,
    required TResult Function(ChatListMessageFetched value) messageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListChatsFetched value)? chatsFetched,
    TResult? Function(ChatListChatDeleted value)? chatDeleted,
    TResult? Function(ChatListMessageFetched value)? messageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListChatsFetched value)? chatsFetched,
    TResult Function(ChatListChatDeleted value)? chatDeleted,
    TResult Function(ChatListMessageFetched value)? messageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListEventCopyWith<$Res> {
  factory $ChatListEventCopyWith(
          ChatListEvent value, $Res Function(ChatListEvent) then) =
      _$ChatListEventCopyWithImpl<$Res, ChatListEvent>;
}

/// @nodoc
class _$ChatListEventCopyWithImpl<$Res, $Val extends ChatListEvent>
    implements $ChatListEventCopyWith<$Res> {
  _$ChatListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatListChatsFetchedCopyWith<$Res> {
  factory _$$ChatListChatsFetchedCopyWith(_$ChatListChatsFetched value,
          $Res Function(_$ChatListChatsFetched) then) =
      __$$ChatListChatsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatListChatsFetchedCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$ChatListChatsFetched>
    implements _$$ChatListChatsFetchedCopyWith<$Res> {
  __$$ChatListChatsFetchedCopyWithImpl(_$ChatListChatsFetched _value,
      $Res Function(_$ChatListChatsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatListChatsFetched implements ChatListChatsFetched {
  const _$ChatListChatsFetched();

  @override
  String toString() {
    return 'ChatListEvent.chatsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatListChatsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function(String chatId) chatDeleted,
    required TResult Function(MessageEntity message) messageFetched,
  }) {
    return chatsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function(String chatId)? chatDeleted,
    TResult? Function(MessageEntity message)? messageFetched,
  }) {
    return chatsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function(String chatId)? chatDeleted,
    TResult Function(MessageEntity message)? messageFetched,
    required TResult orElse(),
  }) {
    if (chatsFetched != null) {
      return chatsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatListChatsFetched value) chatsFetched,
    required TResult Function(ChatListChatDeleted value) chatDeleted,
    required TResult Function(ChatListMessageFetched value) messageFetched,
  }) {
    return chatsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListChatsFetched value)? chatsFetched,
    TResult? Function(ChatListChatDeleted value)? chatDeleted,
    TResult? Function(ChatListMessageFetched value)? messageFetched,
  }) {
    return chatsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListChatsFetched value)? chatsFetched,
    TResult Function(ChatListChatDeleted value)? chatDeleted,
    TResult Function(ChatListMessageFetched value)? messageFetched,
    required TResult orElse(),
  }) {
    if (chatsFetched != null) {
      return chatsFetched(this);
    }
    return orElse();
  }
}

abstract class ChatListChatsFetched implements ChatListEvent {
  const factory ChatListChatsFetched() = _$ChatListChatsFetched;
}

/// @nodoc
abstract class _$$ChatListChatDeletedCopyWith<$Res> {
  factory _$$ChatListChatDeletedCopyWith(_$ChatListChatDeleted value,
          $Res Function(_$ChatListChatDeleted) then) =
      __$$ChatListChatDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$ChatListChatDeletedCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$ChatListChatDeleted>
    implements _$$ChatListChatDeletedCopyWith<$Res> {
  __$$ChatListChatDeletedCopyWithImpl(
      _$ChatListChatDeleted _value, $Res Function(_$ChatListChatDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$ChatListChatDeleted(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatListChatDeleted implements ChatListChatDeleted {
  const _$ChatListChatDeleted(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatListEvent.chatDeleted(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListChatDeleted &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListChatDeletedCopyWith<_$ChatListChatDeleted> get copyWith =>
      __$$ChatListChatDeletedCopyWithImpl<_$ChatListChatDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function(String chatId) chatDeleted,
    required TResult Function(MessageEntity message) messageFetched,
  }) {
    return chatDeleted(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function(String chatId)? chatDeleted,
    TResult? Function(MessageEntity message)? messageFetched,
  }) {
    return chatDeleted?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function(String chatId)? chatDeleted,
    TResult Function(MessageEntity message)? messageFetched,
    required TResult orElse(),
  }) {
    if (chatDeleted != null) {
      return chatDeleted(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatListChatsFetched value) chatsFetched,
    required TResult Function(ChatListChatDeleted value) chatDeleted,
    required TResult Function(ChatListMessageFetched value) messageFetched,
  }) {
    return chatDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListChatsFetched value)? chatsFetched,
    TResult? Function(ChatListChatDeleted value)? chatDeleted,
    TResult? Function(ChatListMessageFetched value)? messageFetched,
  }) {
    return chatDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListChatsFetched value)? chatsFetched,
    TResult Function(ChatListChatDeleted value)? chatDeleted,
    TResult Function(ChatListMessageFetched value)? messageFetched,
    required TResult orElse(),
  }) {
    if (chatDeleted != null) {
      return chatDeleted(this);
    }
    return orElse();
  }
}

abstract class ChatListChatDeleted implements ChatListEvent {
  const factory ChatListChatDeleted(final String chatId) =
      _$ChatListChatDeleted;

  String get chatId;
  @JsonKey(ignore: true)
  _$$ChatListChatDeletedCopyWith<_$ChatListChatDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatListMessageFetchedCopyWith<$Res> {
  factory _$$ChatListMessageFetchedCopyWith(_$ChatListMessageFetched value,
          $Res Function(_$ChatListMessageFetched) then) =
      __$$ChatListMessageFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity message});

  $MessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChatListMessageFetchedCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$ChatListMessageFetched>
    implements _$$ChatListMessageFetchedCopyWith<$Res> {
  __$$ChatListMessageFetchedCopyWithImpl(_$ChatListMessageFetched _value,
      $Res Function(_$ChatListMessageFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChatListMessageFetched(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res> get message {
    return $MessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$ChatListMessageFetched implements ChatListMessageFetched {
  const _$ChatListMessageFetched(this.message);

  @override
  final MessageEntity message;

  @override
  String toString() {
    return 'ChatListEvent.messageFetched(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListMessageFetched &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListMessageFetchedCopyWith<_$ChatListMessageFetched> get copyWith =>
      __$$ChatListMessageFetchedCopyWithImpl<_$ChatListMessageFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chatsFetched,
    required TResult Function(String chatId) chatDeleted,
    required TResult Function(MessageEntity message) messageFetched,
  }) {
    return messageFetched(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? chatsFetched,
    TResult? Function(String chatId)? chatDeleted,
    TResult? Function(MessageEntity message)? messageFetched,
  }) {
    return messageFetched?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chatsFetched,
    TResult Function(String chatId)? chatDeleted,
    TResult Function(MessageEntity message)? messageFetched,
    required TResult orElse(),
  }) {
    if (messageFetched != null) {
      return messageFetched(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatListChatsFetched value) chatsFetched,
    required TResult Function(ChatListChatDeleted value) chatDeleted,
    required TResult Function(ChatListMessageFetched value) messageFetched,
  }) {
    return messageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListChatsFetched value)? chatsFetched,
    TResult? Function(ChatListChatDeleted value)? chatDeleted,
    TResult? Function(ChatListMessageFetched value)? messageFetched,
  }) {
    return messageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListChatsFetched value)? chatsFetched,
    TResult Function(ChatListChatDeleted value)? chatDeleted,
    TResult Function(ChatListMessageFetched value)? messageFetched,
    required TResult orElse(),
  }) {
    if (messageFetched != null) {
      return messageFetched(this);
    }
    return orElse();
  }
}

abstract class ChatListMessageFetched implements ChatListEvent {
  const factory ChatListMessageFetched(final MessageEntity message) =
      _$ChatListMessageFetched;

  MessageEntity get message;
  @JsonKey(ignore: true)
  _$$ChatListMessageFetchedCopyWith<_$ChatListMessageFetched> get copyWith =>
      throw _privateConstructorUsedError;
}
