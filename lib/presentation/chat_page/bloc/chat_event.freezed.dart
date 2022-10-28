// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatMessagesFetchedCopyWith<$Res> {
  factory _$$ChatMessagesFetchedCopyWith(_$ChatMessagesFetched value,
          $Res Function(_$ChatMessagesFetched) then) =
      __$$ChatMessagesFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? lastId});
}

/// @nodoc
class __$$ChatMessagesFetchedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatMessagesFetched>
    implements _$$ChatMessagesFetchedCopyWith<$Res> {
  __$$ChatMessagesFetchedCopyWithImpl(
      _$ChatMessagesFetched _value, $Res Function(_$ChatMessagesFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastId = freezed,
  }) {
    return _then(_$ChatMessagesFetched(
      lastId: freezed == lastId
          ? _value.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatMessagesFetched implements ChatMessagesFetched {
  const _$ChatMessagesFetched({this.lastId});

  @override
  final String? lastId;

  @override
  String toString() {
    return 'ChatEvent.messagesFetched(lastId: $lastId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessagesFetched &&
            (identical(other.lastId, lastId) || other.lastId == lastId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessagesFetchedCopyWith<_$ChatMessagesFetched> get copyWith =>
      __$$ChatMessagesFetchedCopyWithImpl<_$ChatMessagesFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return messagesFetched(lastId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return messagesFetched?.call(lastId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (messagesFetched != null) {
      return messagesFetched(lastId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return messagesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return messagesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (messagesFetched != null) {
      return messagesFetched(this);
    }
    return orElse();
  }
}

abstract class ChatMessagesFetched implements ChatEvent {
  const factory ChatMessagesFetched({final String? lastId}) =
      _$ChatMessagesFetched;

  String? get lastId;
  @JsonKey(ignore: true)
  _$$ChatMessagesFetchedCopyWith<_$ChatMessagesFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMessageViewedCopyWith<$Res> {
  factory _$$ChatMessageViewedCopyWith(
          _$ChatMessageViewed value, $Res Function(_$ChatMessageViewed) then) =
      __$$ChatMessageViewedCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$ChatMessageViewedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatMessageViewed>
    implements _$$ChatMessageViewedCopyWith<$Res> {
  __$$ChatMessageViewedCopyWithImpl(
      _$ChatMessageViewed _value, $Res Function(_$ChatMessageViewed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$ChatMessageViewed(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatMessageViewed implements ChatMessageViewed {
  const _$ChatMessageViewed(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ChatEvent.messageViewed(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageViewed &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageViewedCopyWith<_$ChatMessageViewed> get copyWith =>
      __$$ChatMessageViewedCopyWithImpl<_$ChatMessageViewed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return messageViewed(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return messageViewed?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (messageViewed != null) {
      return messageViewed(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return messageViewed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return messageViewed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (messageViewed != null) {
      return messageViewed(this);
    }
    return orElse();
  }
}

abstract class ChatMessageViewed implements ChatEvent {
  const factory ChatMessageViewed(final String messageId) = _$ChatMessageViewed;

  String get messageId;
  @JsonKey(ignore: true)
  _$$ChatMessageViewedCopyWith<_$ChatMessageViewed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatNewMessageFetchedCopyWith<$Res> {
  factory _$$ChatNewMessageFetchedCopyWith(_$ChatNewMessageFetched value,
          $Res Function(_$ChatNewMessageFetched) then) =
      __$$ChatNewMessageFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity message});

  $MessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChatNewMessageFetchedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatNewMessageFetched>
    implements _$$ChatNewMessageFetchedCopyWith<$Res> {
  __$$ChatNewMessageFetchedCopyWithImpl(_$ChatNewMessageFetched _value,
      $Res Function(_$ChatNewMessageFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChatNewMessageFetched(
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

class _$ChatNewMessageFetched implements ChatNewMessageFetched {
  const _$ChatNewMessageFetched(this.message);

  @override
  final MessageEntity message;

  @override
  String toString() {
    return 'ChatEvent.newMessageFetched(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNewMessageFetched &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatNewMessageFetchedCopyWith<_$ChatNewMessageFetched> get copyWith =>
      __$$ChatNewMessageFetchedCopyWithImpl<_$ChatNewMessageFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return newMessageFetched(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return newMessageFetched?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (newMessageFetched != null) {
      return newMessageFetched(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return newMessageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return newMessageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (newMessageFetched != null) {
      return newMessageFetched(this);
    }
    return orElse();
  }
}

abstract class ChatNewMessageFetched implements ChatEvent {
  const factory ChatNewMessageFetched(final MessageEntity message) =
      _$ChatNewMessageFetched;

  MessageEntity get message;
  @JsonKey(ignore: true)
  _$$ChatNewMessageFetchedCopyWith<_$ChatNewMessageFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatAudioRecordTappedCopyWith<$Res> {
  factory _$$ChatAudioRecordTappedCopyWith(_$ChatAudioRecordTapped value,
          $Res Function(_$ChatAudioRecordTapped) then) =
      __$$ChatAudioRecordTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatAudioRecordTappedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatAudioRecordTapped>
    implements _$$ChatAudioRecordTappedCopyWith<$Res> {
  __$$ChatAudioRecordTappedCopyWithImpl(_$ChatAudioRecordTapped _value,
      $Res Function(_$ChatAudioRecordTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatAudioRecordTapped implements ChatAudioRecordTapped {
  const _$ChatAudioRecordTapped();

  @override
  String toString() {
    return 'ChatEvent.audioRecordTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatAudioRecordTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return audioRecordTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return audioRecordTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioRecordTapped != null) {
      return audioRecordTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return audioRecordTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return audioRecordTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioRecordTapped != null) {
      return audioRecordTapped(this);
    }
    return orElse();
  }
}

abstract class ChatAudioRecordTapped implements ChatEvent {
  const factory ChatAudioRecordTapped() = _$ChatAudioRecordTapped;
}

/// @nodoc
abstract class _$$ChatAudioRecordStartedCopyWith<$Res> {
  factory _$$ChatAudioRecordStartedCopyWith(_$ChatAudioRecordStarted value,
          $Res Function(_$ChatAudioRecordStarted) then) =
      __$$ChatAudioRecordStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatAudioRecordStartedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatAudioRecordStarted>
    implements _$$ChatAudioRecordStartedCopyWith<$Res> {
  __$$ChatAudioRecordStartedCopyWithImpl(_$ChatAudioRecordStarted _value,
      $Res Function(_$ChatAudioRecordStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatAudioRecordStarted implements ChatAudioRecordStarted {
  const _$ChatAudioRecordStarted();

  @override
  String toString() {
    return 'ChatEvent.audioRecordStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatAudioRecordStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return audioRecordStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return audioRecordStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioRecordStarted != null) {
      return audioRecordStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return audioRecordStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return audioRecordStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioRecordStarted != null) {
      return audioRecordStarted(this);
    }
    return orElse();
  }
}

abstract class ChatAudioRecordStarted implements ChatEvent {
  const factory ChatAudioRecordStarted() = _$ChatAudioRecordStarted;
}

/// @nodoc
abstract class _$$ChatAudioRecordCancelledCopyWith<$Res> {
  factory _$$ChatAudioRecordCancelledCopyWith(_$ChatAudioRecordCancelled value,
          $Res Function(_$ChatAudioRecordCancelled) then) =
      __$$ChatAudioRecordCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatAudioRecordCancelledCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatAudioRecordCancelled>
    implements _$$ChatAudioRecordCancelledCopyWith<$Res> {
  __$$ChatAudioRecordCancelledCopyWithImpl(_$ChatAudioRecordCancelled _value,
      $Res Function(_$ChatAudioRecordCancelled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatAudioRecordCancelled implements ChatAudioRecordCancelled {
  const _$ChatAudioRecordCancelled();

  @override
  String toString() {
    return 'ChatEvent.audioRecordCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatAudioRecordCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return audioRecordCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return audioRecordCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioRecordCancelled != null) {
      return audioRecordCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return audioRecordCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return audioRecordCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioRecordCancelled != null) {
      return audioRecordCancelled(this);
    }
    return orElse();
  }
}

abstract class ChatAudioRecordCancelled implements ChatEvent {
  const factory ChatAudioRecordCancelled() = _$ChatAudioRecordCancelled;
}

/// @nodoc
abstract class _$$ChatAudioMessageSentCopyWith<$Res> {
  factory _$$ChatAudioMessageSentCopyWith(_$ChatAudioMessageSent value,
          $Res Function(_$ChatAudioMessageSent) then) =
      __$$ChatAudioMessageSentCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ChatAudioMessageSentCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatAudioMessageSent>
    implements _$$ChatAudioMessageSentCopyWith<$Res> {
  __$$ChatAudioMessageSentCopyWithImpl(_$ChatAudioMessageSent _value,
      $Res Function(_$ChatAudioMessageSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ChatAudioMessageSent(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatAudioMessageSent implements ChatAudioMessageSent {
  const _$ChatAudioMessageSent(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.audioMessageSent(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatAudioMessageSent &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatAudioMessageSentCopyWith<_$ChatAudioMessageSent> get copyWith =>
      __$$ChatAudioMessageSentCopyWithImpl<_$ChatAudioMessageSent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return audioMessageSent(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return audioMessageSent?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioMessageSent != null) {
      return audioMessageSent(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return audioMessageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return audioMessageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (audioMessageSent != null) {
      return audioMessageSent(this);
    }
    return orElse();
  }
}

abstract class ChatAudioMessageSent implements ChatEvent {
  const factory ChatAudioMessageSent(final String path) =
      _$ChatAudioMessageSent;

  String get path;
  @JsonKey(ignore: true)
  _$$ChatAudioMessageSentCopyWith<_$ChatAudioMessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatVideoRecordTappedCopyWith<$Res> {
  factory _$$ChatVideoRecordTappedCopyWith(_$ChatVideoRecordTapped value,
          $Res Function(_$ChatVideoRecordTapped) then) =
      __$$ChatVideoRecordTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatVideoRecordTappedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatVideoRecordTapped>
    implements _$$ChatVideoRecordTappedCopyWith<$Res> {
  __$$ChatVideoRecordTappedCopyWithImpl(_$ChatVideoRecordTapped _value,
      $Res Function(_$ChatVideoRecordTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatVideoRecordTapped implements ChatVideoRecordTapped {
  const _$ChatVideoRecordTapped();

  @override
  String toString() {
    return 'ChatEvent.videoRecordTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatVideoRecordTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return videoRecordTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return videoRecordTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoRecordTapped != null) {
      return videoRecordTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return videoRecordTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return videoRecordTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoRecordTapped != null) {
      return videoRecordTapped(this);
    }
    return orElse();
  }
}

abstract class ChatVideoRecordTapped implements ChatEvent {
  const factory ChatVideoRecordTapped() = _$ChatVideoRecordTapped;
}

/// @nodoc
abstract class _$$ChatVideoRecordStartedCopyWith<$Res> {
  factory _$$ChatVideoRecordStartedCopyWith(_$ChatVideoRecordStarted value,
          $Res Function(_$ChatVideoRecordStarted) then) =
      __$$ChatVideoRecordStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatVideoRecordStartedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatVideoRecordStarted>
    implements _$$ChatVideoRecordStartedCopyWith<$Res> {
  __$$ChatVideoRecordStartedCopyWithImpl(_$ChatVideoRecordStarted _value,
      $Res Function(_$ChatVideoRecordStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatVideoRecordStarted implements ChatVideoRecordStarted {
  const _$ChatVideoRecordStarted();

  @override
  String toString() {
    return 'ChatEvent.videoRecordStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatVideoRecordStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return videoRecordStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return videoRecordStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoRecordStarted != null) {
      return videoRecordStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return videoRecordStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return videoRecordStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoRecordStarted != null) {
      return videoRecordStarted(this);
    }
    return orElse();
  }
}

abstract class ChatVideoRecordStarted implements ChatEvent {
  const factory ChatVideoRecordStarted() = _$ChatVideoRecordStarted;
}

/// @nodoc
abstract class _$$ChatVideoRecordCancelledCopyWith<$Res> {
  factory _$$ChatVideoRecordCancelledCopyWith(_$ChatVideoRecordCancelled value,
          $Res Function(_$ChatVideoRecordCancelled) then) =
      __$$ChatVideoRecordCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatVideoRecordCancelledCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatVideoRecordCancelled>
    implements _$$ChatVideoRecordCancelledCopyWith<$Res> {
  __$$ChatVideoRecordCancelledCopyWithImpl(_$ChatVideoRecordCancelled _value,
      $Res Function(_$ChatVideoRecordCancelled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatVideoRecordCancelled implements ChatVideoRecordCancelled {
  const _$ChatVideoRecordCancelled();

  @override
  String toString() {
    return 'ChatEvent.videoRecordCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatVideoRecordCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return videoRecordCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return videoRecordCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoRecordCancelled != null) {
      return videoRecordCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return videoRecordCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return videoRecordCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoRecordCancelled != null) {
      return videoRecordCancelled(this);
    }
    return orElse();
  }
}

abstract class ChatVideoRecordCancelled implements ChatEvent {
  const factory ChatVideoRecordCancelled() = _$ChatVideoRecordCancelled;
}

/// @nodoc
abstract class _$$ChatVideoMessageSentCopyWith<$Res> {
  factory _$$ChatVideoMessageSentCopyWith(_$ChatVideoMessageSent value,
          $Res Function(_$ChatVideoMessageSent) then) =
      __$$ChatVideoMessageSentCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ChatVideoMessageSentCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatVideoMessageSent>
    implements _$$ChatVideoMessageSentCopyWith<$Res> {
  __$$ChatVideoMessageSentCopyWithImpl(_$ChatVideoMessageSent _value,
      $Res Function(_$ChatVideoMessageSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ChatVideoMessageSent(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatVideoMessageSent implements ChatVideoMessageSent {
  const _$ChatVideoMessageSent(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.videoMessageSent(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatVideoMessageSent &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatVideoMessageSentCopyWith<_$ChatVideoMessageSent> get copyWith =>
      __$$ChatVideoMessageSentCopyWithImpl<_$ChatVideoMessageSent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return videoMessageSent(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return videoMessageSent?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoMessageSent != null) {
      return videoMessageSent(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return videoMessageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return videoMessageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (videoMessageSent != null) {
      return videoMessageSent(this);
    }
    return orElse();
  }
}

abstract class ChatVideoMessageSent implements ChatEvent {
  const factory ChatVideoMessageSent(final String path) =
      _$ChatVideoMessageSent;

  String get path;
  @JsonKey(ignore: true)
  _$$ChatVideoMessageSentCopyWith<_$ChatVideoMessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatImageMessageSentCopyWith<$Res> {
  factory _$$ChatImageMessageSentCopyWith(_$ChatImageMessageSent value,
          $Res Function(_$ChatImageMessageSent) then) =
      __$$ChatImageMessageSentCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$ChatImageMessageSentCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatImageMessageSent>
    implements _$$ChatImageMessageSentCopyWith<$Res> {
  __$$ChatImageMessageSentCopyWithImpl(_$ChatImageMessageSent _value,
      $Res Function(_$ChatImageMessageSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ChatImageMessageSent(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatImageMessageSent implements ChatImageMessageSent {
  const _$ChatImageMessageSent(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.imageMessageSent(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatImageMessageSent &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatImageMessageSentCopyWith<_$ChatImageMessageSent> get copyWith =>
      __$$ChatImageMessageSentCopyWithImpl<_$ChatImageMessageSent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return imageMessageSent(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return imageMessageSent?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (imageMessageSent != null) {
      return imageMessageSent(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return imageMessageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return imageMessageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (imageMessageSent != null) {
      return imageMessageSent(this);
    }
    return orElse();
  }
}

abstract class ChatImageMessageSent implements ChatEvent {
  const factory ChatImageMessageSent(final String path) =
      _$ChatImageMessageSent;

  String get path;
  @JsonKey(ignore: true)
  _$$ChatImageMessageSentCopyWith<_$ChatImageMessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatTextMessageSentCopyWith<$Res> {
  factory _$$ChatTextMessageSentCopyWith(_$ChatTextMessageSent value,
          $Res Function(_$ChatTextMessageSent) then) =
      __$$ChatTextMessageSentCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ChatTextMessageSentCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatTextMessageSent>
    implements _$$ChatTextMessageSentCopyWith<$Res> {
  __$$ChatTextMessageSentCopyWithImpl(
      _$ChatTextMessageSent _value, $Res Function(_$ChatTextMessageSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ChatTextMessageSent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatTextMessageSent implements ChatTextMessageSent {
  const _$ChatTextMessageSent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChatEvent.textMessageSent(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatTextMessageSent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatTextMessageSentCopyWith<_$ChatTextMessageSent> get copyWith =>
      __$$ChatTextMessageSentCopyWithImpl<_$ChatTextMessageSent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? lastId) messagesFetched,
    required TResult Function(String messageId) messageViewed,
    required TResult Function(MessageEntity message) newMessageFetched,
    required TResult Function() audioRecordTapped,
    required TResult Function() audioRecordStarted,
    required TResult Function() audioRecordCancelled,
    required TResult Function(String path) audioMessageSent,
    required TResult Function() videoRecordTapped,
    required TResult Function() videoRecordStarted,
    required TResult Function() videoRecordCancelled,
    required TResult Function(String path) videoMessageSent,
    required TResult Function(String path) imageMessageSent,
    required TResult Function(String text) textMessageSent,
  }) {
    return textMessageSent(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? lastId)? messagesFetched,
    TResult? Function(String messageId)? messageViewed,
    TResult? Function(MessageEntity message)? newMessageFetched,
    TResult? Function()? audioRecordTapped,
    TResult? Function()? audioRecordStarted,
    TResult? Function()? audioRecordCancelled,
    TResult? Function(String path)? audioMessageSent,
    TResult? Function()? videoRecordTapped,
    TResult? Function()? videoRecordStarted,
    TResult? Function()? videoRecordCancelled,
    TResult? Function(String path)? videoMessageSent,
    TResult? Function(String path)? imageMessageSent,
    TResult? Function(String text)? textMessageSent,
  }) {
    return textMessageSent?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? lastId)? messagesFetched,
    TResult Function(String messageId)? messageViewed,
    TResult Function(MessageEntity message)? newMessageFetched,
    TResult Function()? audioRecordTapped,
    TResult Function()? audioRecordStarted,
    TResult Function()? audioRecordCancelled,
    TResult Function(String path)? audioMessageSent,
    TResult Function()? videoRecordTapped,
    TResult Function()? videoRecordStarted,
    TResult Function()? videoRecordCancelled,
    TResult Function(String path)? videoMessageSent,
    TResult Function(String path)? imageMessageSent,
    TResult Function(String text)? textMessageSent,
    required TResult orElse(),
  }) {
    if (textMessageSent != null) {
      return textMessageSent(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesFetched value) messagesFetched,
    required TResult Function(ChatMessageViewed value) messageViewed,
    required TResult Function(ChatNewMessageFetched value) newMessageFetched,
    required TResult Function(ChatAudioRecordTapped value) audioRecordTapped,
    required TResult Function(ChatAudioRecordStarted value) audioRecordStarted,
    required TResult Function(ChatAudioRecordCancelled value)
        audioRecordCancelled,
    required TResult Function(ChatAudioMessageSent value) audioMessageSent,
    required TResult Function(ChatVideoRecordTapped value) videoRecordTapped,
    required TResult Function(ChatVideoRecordStarted value) videoRecordStarted,
    required TResult Function(ChatVideoRecordCancelled value)
        videoRecordCancelled,
    required TResult Function(ChatVideoMessageSent value) videoMessageSent,
    required TResult Function(ChatImageMessageSent value) imageMessageSent,
    required TResult Function(ChatTextMessageSent value) textMessageSent,
  }) {
    return textMessageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessagesFetched value)? messagesFetched,
    TResult? Function(ChatMessageViewed value)? messageViewed,
    TResult? Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult? Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult? Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult? Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult? Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult? Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult? Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult? Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult? Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult? Function(ChatImageMessageSent value)? imageMessageSent,
    TResult? Function(ChatTextMessageSent value)? textMessageSent,
  }) {
    return textMessageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesFetched value)? messagesFetched,
    TResult Function(ChatMessageViewed value)? messageViewed,
    TResult Function(ChatNewMessageFetched value)? newMessageFetched,
    TResult Function(ChatAudioRecordTapped value)? audioRecordTapped,
    TResult Function(ChatAudioRecordStarted value)? audioRecordStarted,
    TResult Function(ChatAudioRecordCancelled value)? audioRecordCancelled,
    TResult Function(ChatAudioMessageSent value)? audioMessageSent,
    TResult Function(ChatVideoRecordTapped value)? videoRecordTapped,
    TResult Function(ChatVideoRecordStarted value)? videoRecordStarted,
    TResult Function(ChatVideoRecordCancelled value)? videoRecordCancelled,
    TResult Function(ChatVideoMessageSent value)? videoMessageSent,
    TResult Function(ChatImageMessageSent value)? imageMessageSent,
    TResult Function(ChatTextMessageSent value)? textMessageSent,
    required TResult orElse(),
  }) {
    if (textMessageSent != null) {
      return textMessageSent(this);
    }
    return orElse();
  }
}

abstract class ChatTextMessageSent implements ChatEvent {
  const factory ChatTextMessageSent(final String text) = _$ChatTextMessageSent;

  String get text;
  @JsonKey(ignore: true)
  _$$ChatTextMessageSentCopyWith<_$ChatTextMessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}
