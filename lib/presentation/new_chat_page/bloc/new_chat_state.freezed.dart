// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users) loadSuccess,
    required TResult Function(ChatEntity chat) chatDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users)? loadSuccess,
    TResult? Function(ChatEntity chat)? chatDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users)? loadSuccess,
    TResult Function(ChatEntity chat)? chatDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatInitial value) initial,
    required TResult Function(NewChatLoading value) loading,
    required TResult Function(NewChatLoadSuccess value) loadSuccess,
    required TResult Function(NewChatDone value) chatDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatInitial value)? initial,
    TResult? Function(NewChatLoading value)? loading,
    TResult? Function(NewChatLoadSuccess value)? loadSuccess,
    TResult? Function(NewChatDone value)? chatDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatInitial value)? initial,
    TResult Function(NewChatLoading value)? loading,
    TResult Function(NewChatLoadSuccess value)? loadSuccess,
    TResult Function(NewChatDone value)? chatDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewChatStateCopyWith<$Res> {
  factory $NewChatStateCopyWith(
          NewChatState value, $Res Function(NewChatState) then) =
      _$NewChatStateCopyWithImpl<$Res, NewChatState>;
}

/// @nodoc
class _$NewChatStateCopyWithImpl<$Res, $Val extends NewChatState>
    implements $NewChatStateCopyWith<$Res> {
  _$NewChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewChatInitialCopyWith<$Res> {
  factory _$$NewChatInitialCopyWith(
          _$NewChatInitial value, $Res Function(_$NewChatInitial) then) =
      __$$NewChatInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewChatInitialCopyWithImpl<$Res>
    extends _$NewChatStateCopyWithImpl<$Res, _$NewChatInitial>
    implements _$$NewChatInitialCopyWith<$Res> {
  __$$NewChatInitialCopyWithImpl(
      _$NewChatInitial _value, $Res Function(_$NewChatInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewChatInitial implements NewChatInitial {
  const _$NewChatInitial();

  @override
  String toString() {
    return 'NewChatState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewChatInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users) loadSuccess,
    required TResult Function(ChatEntity chat) chatDone,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users)? loadSuccess,
    TResult? Function(ChatEntity chat)? chatDone,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users)? loadSuccess,
    TResult Function(ChatEntity chat)? chatDone,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatInitial value) initial,
    required TResult Function(NewChatLoading value) loading,
    required TResult Function(NewChatLoadSuccess value) loadSuccess,
    required TResult Function(NewChatDone value) chatDone,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatInitial value)? initial,
    TResult? Function(NewChatLoading value)? loading,
    TResult? Function(NewChatLoadSuccess value)? loadSuccess,
    TResult? Function(NewChatDone value)? chatDone,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatInitial value)? initial,
    TResult Function(NewChatLoading value)? loading,
    TResult Function(NewChatLoadSuccess value)? loadSuccess,
    TResult Function(NewChatDone value)? chatDone,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewChatInitial implements NewChatState {
  const factory NewChatInitial() = _$NewChatInitial;
}

/// @nodoc
abstract class _$$NewChatLoadingCopyWith<$Res> {
  factory _$$NewChatLoadingCopyWith(
          _$NewChatLoading value, $Res Function(_$NewChatLoading) then) =
      __$$NewChatLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewChatLoadingCopyWithImpl<$Res>
    extends _$NewChatStateCopyWithImpl<$Res, _$NewChatLoading>
    implements _$$NewChatLoadingCopyWith<$Res> {
  __$$NewChatLoadingCopyWithImpl(
      _$NewChatLoading _value, $Res Function(_$NewChatLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewChatLoading implements NewChatLoading {
  const _$NewChatLoading();

  @override
  String toString() {
    return 'NewChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewChatLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users) loadSuccess,
    required TResult Function(ChatEntity chat) chatDone,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users)? loadSuccess,
    TResult? Function(ChatEntity chat)? chatDone,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users)? loadSuccess,
    TResult Function(ChatEntity chat)? chatDone,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatInitial value) initial,
    required TResult Function(NewChatLoading value) loading,
    required TResult Function(NewChatLoadSuccess value) loadSuccess,
    required TResult Function(NewChatDone value) chatDone,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatInitial value)? initial,
    TResult? Function(NewChatLoading value)? loading,
    TResult? Function(NewChatLoadSuccess value)? loadSuccess,
    TResult? Function(NewChatDone value)? chatDone,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatInitial value)? initial,
    TResult Function(NewChatLoading value)? loading,
    TResult Function(NewChatLoadSuccess value)? loadSuccess,
    TResult Function(NewChatDone value)? chatDone,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewChatLoading implements NewChatState {
  const factory NewChatLoading() = _$NewChatLoading;
}

/// @nodoc
abstract class _$$NewChatLoadSuccessCopyWith<$Res> {
  factory _$$NewChatLoadSuccessCopyWith(_$NewChatLoadSuccess value,
          $Res Function(_$NewChatLoadSuccess) then) =
      __$$NewChatLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> users});
}

/// @nodoc
class __$$NewChatLoadSuccessCopyWithImpl<$Res>
    extends _$NewChatStateCopyWithImpl<$Res, _$NewChatLoadSuccess>
    implements _$$NewChatLoadSuccessCopyWith<$Res> {
  __$$NewChatLoadSuccessCopyWithImpl(
      _$NewChatLoadSuccess _value, $Res Function(_$NewChatLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$NewChatLoadSuccess(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$NewChatLoadSuccess implements NewChatLoadSuccess {
  const _$NewChatLoadSuccess([final List<UserEntity> users = const []])
      : _users = users;

  final List<UserEntity> _users;
  @override
  @JsonKey()
  List<UserEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'NewChatState.loadSuccess(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewChatLoadSuccess &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewChatLoadSuccessCopyWith<_$NewChatLoadSuccess> get copyWith =>
      __$$NewChatLoadSuccessCopyWithImpl<_$NewChatLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users) loadSuccess,
    required TResult Function(ChatEntity chat) chatDone,
  }) {
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users)? loadSuccess,
    TResult? Function(ChatEntity chat)? chatDone,
  }) {
    return loadSuccess?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users)? loadSuccess,
    TResult Function(ChatEntity chat)? chatDone,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatInitial value) initial,
    required TResult Function(NewChatLoading value) loading,
    required TResult Function(NewChatLoadSuccess value) loadSuccess,
    required TResult Function(NewChatDone value) chatDone,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatInitial value)? initial,
    TResult? Function(NewChatLoading value)? loading,
    TResult? Function(NewChatLoadSuccess value)? loadSuccess,
    TResult? Function(NewChatDone value)? chatDone,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatInitial value)? initial,
    TResult Function(NewChatLoading value)? loading,
    TResult Function(NewChatLoadSuccess value)? loadSuccess,
    TResult Function(NewChatDone value)? chatDone,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class NewChatLoadSuccess implements NewChatState {
  const factory NewChatLoadSuccess([final List<UserEntity> users]) =
      _$NewChatLoadSuccess;

  List<UserEntity> get users;
  @JsonKey(ignore: true)
  _$$NewChatLoadSuccessCopyWith<_$NewChatLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewChatDoneCopyWith<$Res> {
  factory _$$NewChatDoneCopyWith(
          _$NewChatDone value, $Res Function(_$NewChatDone) then) =
      __$$NewChatDoneCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatEntity chat});

  $ChatEntityCopyWith<$Res> get chat;
}

/// @nodoc
class __$$NewChatDoneCopyWithImpl<$Res>
    extends _$NewChatStateCopyWithImpl<$Res, _$NewChatDone>
    implements _$$NewChatDoneCopyWith<$Res> {
  __$$NewChatDoneCopyWithImpl(
      _$NewChatDone _value, $Res Function(_$NewChatDone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
  }) {
    return _then(_$NewChatDone(
      null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatEntityCopyWith<$Res> get chat {
    return $ChatEntityCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$NewChatDone implements NewChatDone {
  const _$NewChatDone(this.chat);

  @override
  final ChatEntity chat;

  @override
  String toString() {
    return 'NewChatState.chatDone(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewChatDone &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewChatDoneCopyWith<_$NewChatDone> get copyWith =>
      __$$NewChatDoneCopyWithImpl<_$NewChatDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> users) loadSuccess,
    required TResult Function(ChatEntity chat) chatDone,
  }) {
    return chatDone(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> users)? loadSuccess,
    TResult? Function(ChatEntity chat)? chatDone,
  }) {
    return chatDone?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> users)? loadSuccess,
    TResult Function(ChatEntity chat)? chatDone,
    required TResult orElse(),
  }) {
    if (chatDone != null) {
      return chatDone(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatInitial value) initial,
    required TResult Function(NewChatLoading value) loading,
    required TResult Function(NewChatLoadSuccess value) loadSuccess,
    required TResult Function(NewChatDone value) chatDone,
  }) {
    return chatDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatInitial value)? initial,
    TResult? Function(NewChatLoading value)? loading,
    TResult? Function(NewChatLoadSuccess value)? loadSuccess,
    TResult? Function(NewChatDone value)? chatDone,
  }) {
    return chatDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatInitial value)? initial,
    TResult Function(NewChatLoading value)? loading,
    TResult Function(NewChatLoadSuccess value)? loadSuccess,
    TResult Function(NewChatDone value)? chatDone,
    required TResult orElse(),
  }) {
    if (chatDone != null) {
      return chatDone(this);
    }
    return orElse();
  }
}

abstract class NewChatDone implements NewChatState {
  const factory NewChatDone(final ChatEntity chat) = _$NewChatDone;

  ChatEntity get chat;
  @JsonKey(ignore: true)
  _$$NewChatDoneCopyWith<_$NewChatDone> get copyWith =>
      throw _privateConstructorUsedError;
}
