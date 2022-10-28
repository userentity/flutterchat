// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEntity {
  String get id => throw _privateConstructorUsedError;
  String get fromId => throw _privateConstructorUsedError;
  String get toId => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  dynamic get isOwner => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        text,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        image,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        audio,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)
        video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult? Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageTextEntity value) text,
    required TResult Function(MessageImageEntity value) image,
    required TResult Function(MessageAudioEntity value) audio,
    required TResult Function(MessageVideoEntity value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageTextEntity value)? text,
    TResult? Function(MessageImageEntity value)? image,
    TResult? Function(MessageAudioEntity value)? audio,
    TResult? Function(MessageVideoEntity value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageTextEntity value)? text,
    TResult Function(MessageImageEntity value)? image,
    TResult Function(MessageAudioEntity value)? audio,
    TResult Function(MessageVideoEntity value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res, MessageEntity>;
  @useResult
  $Res call(
      {String id,
      String fromId,
      String toId,
      String chatId,
      String content,
      bool isViewed,
      DateTime createdAt,
      dynamic isOwner});
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res, $Val extends MessageEntity>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromId = null,
    Object? toId = null,
    Object? chatId = null,
    Object? content = null,
    Object? isViewed = null,
    Object? createdAt = null,
    Object? isOwner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageTextEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageTextEntityCopyWith(
          _$MessageTextEntity value, $Res Function(_$MessageTextEntity) then) =
      __$$MessageTextEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fromId,
      String toId,
      String chatId,
      String content,
      bool isViewed,
      DateTime createdAt,
      dynamic isOwner});
}

/// @nodoc
class __$$MessageTextEntityCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageTextEntity>
    implements _$$MessageTextEntityCopyWith<$Res> {
  __$$MessageTextEntityCopyWithImpl(
      _$MessageTextEntity _value, $Res Function(_$MessageTextEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromId = null,
    Object? toId = null,
    Object? chatId = null,
    Object? content = null,
    Object? isViewed = null,
    Object? createdAt = null,
    Object? isOwner = null,
  }) {
    return _then(_$MessageTextEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOwner: null == isOwner ? _value.isOwner : isOwner,
    ));
  }
}

/// @nodoc

class _$MessageTextEntity implements MessageTextEntity {
  const _$MessageTextEntity(
      {required this.id,
      required this.fromId,
      required this.toId,
      required this.chatId,
      required this.content,
      required this.isViewed,
      required this.createdAt,
      this.isOwner = false});

  @override
  final String id;
  @override
  final String fromId;
  @override
  final String toId;
  @override
  final String chatId;
  @override
  final String content;
  @override
  final bool isViewed;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final dynamic isOwner;

  @override
  String toString() {
    return 'MessageEntity.text(id: $id, fromId: $fromId, toId: $toId, chatId: $chatId, content: $content, isViewed: $isViewed, createdAt: $createdAt, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageTextEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.isOwner, isOwner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fromId,
      toId,
      chatId,
      content,
      isViewed,
      createdAt,
      const DeepCollectionEquality().hash(isOwner));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageTextEntityCopyWith<_$MessageTextEntity> get copyWith =>
      __$$MessageTextEntityCopyWithImpl<_$MessageTextEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        text,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        image,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        audio,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)
        video,
  }) {
    return text(
        id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult? Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
  }) {
    return text?.call(
        id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(
          id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageTextEntity value) text,
    required TResult Function(MessageImageEntity value) image,
    required TResult Function(MessageAudioEntity value) audio,
    required TResult Function(MessageVideoEntity value) video,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageTextEntity value)? text,
    TResult? Function(MessageImageEntity value)? image,
    TResult? Function(MessageAudioEntity value)? audio,
    TResult? Function(MessageVideoEntity value)? video,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageTextEntity value)? text,
    TResult Function(MessageImageEntity value)? image,
    TResult Function(MessageAudioEntity value)? audio,
    TResult Function(MessageVideoEntity value)? video,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class MessageTextEntity implements MessageEntity {
  const factory MessageTextEntity(
      {required final String id,
      required final String fromId,
      required final String toId,
      required final String chatId,
      required final String content,
      required final bool isViewed,
      required final DateTime createdAt,
      final dynamic isOwner}) = _$MessageTextEntity;

  @override
  String get id;
  @override
  String get fromId;
  @override
  String get toId;
  @override
  String get chatId;
  @override
  String get content;
  @override
  bool get isViewed;
  @override
  DateTime get createdAt;
  @override
  dynamic get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$MessageTextEntityCopyWith<_$MessageTextEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageImageEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageImageEntityCopyWith(_$MessageImageEntity value,
          $Res Function(_$MessageImageEntity) then) =
      __$$MessageImageEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fromId,
      String toId,
      String chatId,
      String content,
      bool isViewed,
      DateTime createdAt,
      dynamic isOwner});
}

/// @nodoc
class __$$MessageImageEntityCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageImageEntity>
    implements _$$MessageImageEntityCopyWith<$Res> {
  __$$MessageImageEntityCopyWithImpl(
      _$MessageImageEntity _value, $Res Function(_$MessageImageEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromId = null,
    Object? toId = null,
    Object? chatId = null,
    Object? content = null,
    Object? isViewed = null,
    Object? createdAt = null,
    Object? isOwner = null,
  }) {
    return _then(_$MessageImageEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOwner: null == isOwner ? _value.isOwner : isOwner,
    ));
  }
}

/// @nodoc

class _$MessageImageEntity implements MessageImageEntity {
  const _$MessageImageEntity(
      {required this.id,
      required this.fromId,
      required this.toId,
      required this.chatId,
      required this.content,
      required this.isViewed,
      required this.createdAt,
      this.isOwner = false});

  @override
  final String id;
  @override
  final String fromId;
  @override
  final String toId;
  @override
  final String chatId;
  @override
  final String content;
  @override
  final bool isViewed;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final dynamic isOwner;

  @override
  String toString() {
    return 'MessageEntity.image(id: $id, fromId: $fromId, toId: $toId, chatId: $chatId, content: $content, isViewed: $isViewed, createdAt: $createdAt, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImageEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.isOwner, isOwner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fromId,
      toId,
      chatId,
      content,
      isViewed,
      createdAt,
      const DeepCollectionEquality().hash(isOwner));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImageEntityCopyWith<_$MessageImageEntity> get copyWith =>
      __$$MessageImageEntityCopyWithImpl<_$MessageImageEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        text,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        image,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        audio,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)
        video,
  }) {
    return image(
        id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult? Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
  }) {
    return image?.call(
        id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(
          id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageTextEntity value) text,
    required TResult Function(MessageImageEntity value) image,
    required TResult Function(MessageAudioEntity value) audio,
    required TResult Function(MessageVideoEntity value) video,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageTextEntity value)? text,
    TResult? Function(MessageImageEntity value)? image,
    TResult? Function(MessageAudioEntity value)? audio,
    TResult? Function(MessageVideoEntity value)? video,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageTextEntity value)? text,
    TResult Function(MessageImageEntity value)? image,
    TResult Function(MessageAudioEntity value)? audio,
    TResult Function(MessageVideoEntity value)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class MessageImageEntity implements MessageEntity {
  const factory MessageImageEntity(
      {required final String id,
      required final String fromId,
      required final String toId,
      required final String chatId,
      required final String content,
      required final bool isViewed,
      required final DateTime createdAt,
      final dynamic isOwner}) = _$MessageImageEntity;

  @override
  String get id;
  @override
  String get fromId;
  @override
  String get toId;
  @override
  String get chatId;
  @override
  String get content;
  @override
  bool get isViewed;
  @override
  DateTime get createdAt;
  @override
  dynamic get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$MessageImageEntityCopyWith<_$MessageImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageAudioEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageAudioEntityCopyWith(_$MessageAudioEntity value,
          $Res Function(_$MessageAudioEntity) then) =
      __$$MessageAudioEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fromId,
      String toId,
      String chatId,
      String content,
      bool isViewed,
      DateTime createdAt,
      dynamic isOwner});
}

/// @nodoc
class __$$MessageAudioEntityCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageAudioEntity>
    implements _$$MessageAudioEntityCopyWith<$Res> {
  __$$MessageAudioEntityCopyWithImpl(
      _$MessageAudioEntity _value, $Res Function(_$MessageAudioEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromId = null,
    Object? toId = null,
    Object? chatId = null,
    Object? content = null,
    Object? isViewed = null,
    Object? createdAt = null,
    Object? isOwner = null,
  }) {
    return _then(_$MessageAudioEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOwner: null == isOwner ? _value.isOwner : isOwner,
    ));
  }
}

/// @nodoc

class _$MessageAudioEntity implements MessageAudioEntity {
  const _$MessageAudioEntity(
      {required this.id,
      required this.fromId,
      required this.toId,
      required this.chatId,
      required this.content,
      required this.isViewed,
      required this.createdAt,
      this.isOwner = false});

  @override
  final String id;
  @override
  final String fromId;
  @override
  final String toId;
  @override
  final String chatId;
  @override
  final String content;
  @override
  final bool isViewed;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final dynamic isOwner;

  @override
  String toString() {
    return 'MessageEntity.audio(id: $id, fromId: $fromId, toId: $toId, chatId: $chatId, content: $content, isViewed: $isViewed, createdAt: $createdAt, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAudioEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.isOwner, isOwner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fromId,
      toId,
      chatId,
      content,
      isViewed,
      createdAt,
      const DeepCollectionEquality().hash(isOwner));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAudioEntityCopyWith<_$MessageAudioEntity> get copyWith =>
      __$$MessageAudioEntityCopyWithImpl<_$MessageAudioEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        text,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        image,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        audio,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)
        video,
  }) {
    return audio(
        id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult? Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
  }) {
    return audio?.call(
        id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(
          id, fromId, toId, chatId, content, isViewed, createdAt, isOwner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageTextEntity value) text,
    required TResult Function(MessageImageEntity value) image,
    required TResult Function(MessageAudioEntity value) audio,
    required TResult Function(MessageVideoEntity value) video,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageTextEntity value)? text,
    TResult? Function(MessageImageEntity value)? image,
    TResult? Function(MessageAudioEntity value)? audio,
    TResult? Function(MessageVideoEntity value)? video,
  }) {
    return audio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageTextEntity value)? text,
    TResult Function(MessageImageEntity value)? image,
    TResult Function(MessageAudioEntity value)? audio,
    TResult Function(MessageVideoEntity value)? video,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }
}

abstract class MessageAudioEntity implements MessageEntity {
  const factory MessageAudioEntity(
      {required final String id,
      required final String fromId,
      required final String toId,
      required final String chatId,
      required final String content,
      required final bool isViewed,
      required final DateTime createdAt,
      final dynamic isOwner}) = _$MessageAudioEntity;

  @override
  String get id;
  @override
  String get fromId;
  @override
  String get toId;
  @override
  String get chatId;
  @override
  String get content;
  @override
  bool get isViewed;
  @override
  DateTime get createdAt;
  @override
  dynamic get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$MessageAudioEntityCopyWith<_$MessageAudioEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageVideoEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageVideoEntityCopyWith(_$MessageVideoEntity value,
          $Res Function(_$MessageVideoEntity) then) =
      __$$MessageVideoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fromId,
      String toId,
      String chatId,
      String content,
      bool isViewed,
      DateTime createdAt,
      String thumbnailUrl,
      dynamic isOwner});
}

/// @nodoc
class __$$MessageVideoEntityCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageVideoEntity>
    implements _$$MessageVideoEntityCopyWith<$Res> {
  __$$MessageVideoEntityCopyWithImpl(
      _$MessageVideoEntity _value, $Res Function(_$MessageVideoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromId = null,
    Object? toId = null,
    Object? chatId = null,
    Object? content = null,
    Object? isViewed = null,
    Object? createdAt = null,
    Object? thumbnailUrl = null,
    Object? isOwner = null,
  }) {
    return _then(_$MessageVideoEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: null == isOwner ? _value.isOwner : isOwner,
    ));
  }
}

/// @nodoc

class _$MessageVideoEntity implements MessageVideoEntity {
  const _$MessageVideoEntity(
      {required this.id,
      required this.fromId,
      required this.toId,
      required this.chatId,
      required this.content,
      required this.isViewed,
      required this.createdAt,
      required this.thumbnailUrl,
      this.isOwner = false});

  @override
  final String id;
  @override
  final String fromId;
  @override
  final String toId;
  @override
  final String chatId;
  @override
  final String content;
  @override
  final bool isViewed;
  @override
  final DateTime createdAt;
  @override
  final String thumbnailUrl;
  @override
  @JsonKey()
  final dynamic isOwner;

  @override
  String toString() {
    return 'MessageEntity.video(id: $id, fromId: $fromId, toId: $toId, chatId: $chatId, content: $content, isViewed: $isViewed, createdAt: $createdAt, thumbnailUrl: $thumbnailUrl, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageVideoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality().equals(other.isOwner, isOwner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fromId,
      toId,
      chatId,
      content,
      isViewed,
      createdAt,
      thumbnailUrl,
      const DeepCollectionEquality().hash(isOwner));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageVideoEntityCopyWith<_$MessageVideoEntity> get copyWith =>
      __$$MessageVideoEntityCopyWithImpl<_$MessageVideoEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        text,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        image,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            dynamic isOwner)
        audio,
    required TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)
        video,
  }) {
    return video(id, fromId, toId, chatId, content, isViewed, createdAt,
        thumbnailUrl, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult? Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult? Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
  }) {
    return video?.call(id, fromId, toId, chatId, content, isViewed, createdAt,
        thumbnailUrl, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        text,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        image,
    TResult Function(String id, String fromId, String toId, String chatId,
            String content, bool isViewed, DateTime createdAt, dynamic isOwner)?
        audio,
    TResult Function(
            String id,
            String fromId,
            String toId,
            String chatId,
            String content,
            bool isViewed,
            DateTime createdAt,
            String thumbnailUrl,
            dynamic isOwner)?
        video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(id, fromId, toId, chatId, content, isViewed, createdAt,
          thumbnailUrl, isOwner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageTextEntity value) text,
    required TResult Function(MessageImageEntity value) image,
    required TResult Function(MessageAudioEntity value) audio,
    required TResult Function(MessageVideoEntity value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageTextEntity value)? text,
    TResult? Function(MessageImageEntity value)? image,
    TResult? Function(MessageAudioEntity value)? audio,
    TResult? Function(MessageVideoEntity value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageTextEntity value)? text,
    TResult Function(MessageImageEntity value)? image,
    TResult Function(MessageAudioEntity value)? audio,
    TResult Function(MessageVideoEntity value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }
}

abstract class MessageVideoEntity implements MessageEntity {
  const factory MessageVideoEntity(
      {required final String id,
      required final String fromId,
      required final String toId,
      required final String chatId,
      required final String content,
      required final bool isViewed,
      required final DateTime createdAt,
      required final String thumbnailUrl,
      final dynamic isOwner}) = _$MessageVideoEntity;

  @override
  String get id;
  @override
  String get fromId;
  @override
  String get toId;
  @override
  String get chatId;
  @override
  String get content;
  @override
  bool get isViewed;
  @override
  DateTime get createdAt;
  String get thumbnailUrl;
  @override
  dynamic get isOwner;
  @override
  @JsonKey(ignore: true)
  _$$MessageVideoEntityCopyWith<_$MessageVideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
