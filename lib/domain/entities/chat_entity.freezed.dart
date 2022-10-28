// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEntity {
  String get id => throw _privateConstructorUsedError;
  UserEntity get withUser => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  MessageEntity? get lastMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEntityCopyWith<ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEntityCopyWith<$Res> {
  factory $ChatEntityCopyWith(
          ChatEntity value, $Res Function(ChatEntity) then) =
      _$ChatEntityCopyWithImpl<$Res, ChatEntity>;
  @useResult
  $Res call(
      {String id,
      UserEntity withUser,
      int unreadCount,
      MessageEntity? lastMessage});

  $UserEntityCopyWith<$Res> get withUser;
  $MessageEntityCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatEntityCopyWithImpl<$Res, $Val extends ChatEntity>
    implements $ChatEntityCopyWith<$Res> {
  _$ChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? withUser = null,
    Object? unreadCount = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      withUser: null == withUser
          ? _value.withUser
          : withUser // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get withUser {
    return $UserEntityCopyWith<$Res>(_value.withUser, (value) {
      return _then(_value.copyWith(withUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageEntityCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatEntityCopyWith<$Res>
    implements $ChatEntityCopyWith<$Res> {
  factory _$$_ChatEntityCopyWith(
          _$_ChatEntity value, $Res Function(_$_ChatEntity) then) =
      __$$_ChatEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      UserEntity withUser,
      int unreadCount,
      MessageEntity? lastMessage});

  @override
  $UserEntityCopyWith<$Res> get withUser;
  @override
  $MessageEntityCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$_ChatEntityCopyWithImpl<$Res>
    extends _$ChatEntityCopyWithImpl<$Res, _$_ChatEntity>
    implements _$$_ChatEntityCopyWith<$Res> {
  __$$_ChatEntityCopyWithImpl(
      _$_ChatEntity _value, $Res Function(_$_ChatEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? withUser = null,
    Object? unreadCount = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_$_ChatEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      withUser: null == withUser
          ? _value.withUser
          : withUser // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
    ));
  }
}

/// @nodoc

class _$_ChatEntity implements _ChatEntity {
  const _$_ChatEntity(
      {required this.id,
      required this.withUser,
      this.unreadCount = 0,
      this.lastMessage});

  @override
  final String id;
  @override
  final UserEntity withUser;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  final MessageEntity? lastMessage;

  @override
  String toString() {
    return 'ChatEntity(id: $id, withUser: $withUser, unreadCount: $unreadCount, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.withUser, withUser) ||
                other.withUser == withUser) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, withUser, unreadCount, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatEntityCopyWith<_$_ChatEntity> get copyWith =>
      __$$_ChatEntityCopyWithImpl<_$_ChatEntity>(this, _$identity);
}

abstract class _ChatEntity implements ChatEntity {
  const factory _ChatEntity(
      {required final String id,
      required final UserEntity withUser,
      final int unreadCount,
      final MessageEntity? lastMessage}) = _$_ChatEntity;

  @override
  String get id;
  @override
  UserEntity get withUser;
  @override
  int get unreadCount;
  @override
  MessageEntity? get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatEntityCopyWith<_$_ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
