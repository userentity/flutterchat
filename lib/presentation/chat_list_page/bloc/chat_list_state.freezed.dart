// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatEntity> chats) loadSuccess,
    required TResult Function(String text) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatEntity> chats)? loadSuccess,
    TResult? Function(String text)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatEntity> chats)? loadSuccess,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatListInitial value) initial,
    required TResult Function(ChatListLoading value) loading,
    required TResult Function(ChatListLoadSuccess value) loadSuccess,
    required TResult Function(ChatListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListInitial value)? initial,
    TResult? Function(ChatListLoading value)? loading,
    TResult? Function(ChatListLoadSuccess value)? loadSuccess,
    TResult? Function(ChatListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListInitial value)? initial,
    TResult Function(ChatListLoading value)? loading,
    TResult Function(ChatListLoadSuccess value)? loadSuccess,
    TResult Function(ChatListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListStateCopyWith<$Res> {
  factory $ChatListStateCopyWith(
          ChatListState value, $Res Function(ChatListState) then) =
      _$ChatListStateCopyWithImpl<$Res, ChatListState>;
}

/// @nodoc
class _$ChatListStateCopyWithImpl<$Res, $Val extends ChatListState>
    implements $ChatListStateCopyWith<$Res> {
  _$ChatListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatListInitialCopyWith<$Res> {
  factory _$$ChatListInitialCopyWith(
          _$ChatListInitial value, $Res Function(_$ChatListInitial) then) =
      __$$ChatListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatListInitialCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$ChatListInitial>
    implements _$$ChatListInitialCopyWith<$Res> {
  __$$ChatListInitialCopyWithImpl(
      _$ChatListInitial _value, $Res Function(_$ChatListInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatListInitial implements ChatListInitial {
  const _$ChatListInitial();

  @override
  String toString() {
    return 'ChatListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatEntity> chats) loadSuccess,
    required TResult Function(String text) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatEntity> chats)? loadSuccess,
    TResult? Function(String text)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatEntity> chats)? loadSuccess,
    TResult Function(String text)? error,
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
    required TResult Function(ChatListInitial value) initial,
    required TResult Function(ChatListLoading value) loading,
    required TResult Function(ChatListLoadSuccess value) loadSuccess,
    required TResult Function(ChatListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListInitial value)? initial,
    TResult? Function(ChatListLoading value)? loading,
    TResult? Function(ChatListLoadSuccess value)? loadSuccess,
    TResult? Function(ChatListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListInitial value)? initial,
    TResult Function(ChatListLoading value)? loading,
    TResult Function(ChatListLoadSuccess value)? loadSuccess,
    TResult Function(ChatListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatListInitial implements ChatListState {
  const factory ChatListInitial() = _$ChatListInitial;
}

/// @nodoc
abstract class _$$ChatListLoadingCopyWith<$Res> {
  factory _$$ChatListLoadingCopyWith(
          _$ChatListLoading value, $Res Function(_$ChatListLoading) then) =
      __$$ChatListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatListLoadingCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$ChatListLoading>
    implements _$$ChatListLoadingCopyWith<$Res> {
  __$$ChatListLoadingCopyWithImpl(
      _$ChatListLoading _value, $Res Function(_$ChatListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatListLoading implements ChatListLoading {
  const _$ChatListLoading();

  @override
  String toString() {
    return 'ChatListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatEntity> chats) loadSuccess,
    required TResult Function(String text) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatEntity> chats)? loadSuccess,
    TResult? Function(String text)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatEntity> chats)? loadSuccess,
    TResult Function(String text)? error,
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
    required TResult Function(ChatListInitial value) initial,
    required TResult Function(ChatListLoading value) loading,
    required TResult Function(ChatListLoadSuccess value) loadSuccess,
    required TResult Function(ChatListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListInitial value)? initial,
    TResult? Function(ChatListLoading value)? loading,
    TResult? Function(ChatListLoadSuccess value)? loadSuccess,
    TResult? Function(ChatListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListInitial value)? initial,
    TResult Function(ChatListLoading value)? loading,
    TResult Function(ChatListLoadSuccess value)? loadSuccess,
    TResult Function(ChatListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatListLoading implements ChatListState {
  const factory ChatListLoading() = _$ChatListLoading;
}

/// @nodoc
abstract class _$$ChatListLoadSuccessCopyWith<$Res> {
  factory _$$ChatListLoadSuccessCopyWith(_$ChatListLoadSuccess value,
          $Res Function(_$ChatListLoadSuccess) then) =
      __$$ChatListLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatEntity> chats});
}

/// @nodoc
class __$$ChatListLoadSuccessCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$ChatListLoadSuccess>
    implements _$$ChatListLoadSuccessCopyWith<$Res> {
  __$$ChatListLoadSuccessCopyWithImpl(
      _$ChatListLoadSuccess _value, $Res Function(_$ChatListLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$ChatListLoadSuccess(
      null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
    ));
  }
}

/// @nodoc

class _$ChatListLoadSuccess implements ChatListLoadSuccess {
  const _$ChatListLoadSuccess(final List<ChatEntity> chats) : _chats = chats;

  final List<ChatEntity> _chats;
  @override
  List<ChatEntity> get chats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatListState.loadSuccess(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListLoadSuccess &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListLoadSuccessCopyWith<_$ChatListLoadSuccess> get copyWith =>
      __$$ChatListLoadSuccessCopyWithImpl<_$ChatListLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatEntity> chats) loadSuccess,
    required TResult Function(String text) error,
  }) {
    return loadSuccess(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatEntity> chats)? loadSuccess,
    TResult? Function(String text)? error,
  }) {
    return loadSuccess?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatEntity> chats)? loadSuccess,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatListInitial value) initial,
    required TResult Function(ChatListLoading value) loading,
    required TResult Function(ChatListLoadSuccess value) loadSuccess,
    required TResult Function(ChatListError value) error,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListInitial value)? initial,
    TResult? Function(ChatListLoading value)? loading,
    TResult? Function(ChatListLoadSuccess value)? loadSuccess,
    TResult? Function(ChatListError value)? error,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListInitial value)? initial,
    TResult Function(ChatListLoading value)? loading,
    TResult Function(ChatListLoadSuccess value)? loadSuccess,
    TResult Function(ChatListError value)? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatListLoadSuccess implements ChatListState {
  const factory ChatListLoadSuccess(final List<ChatEntity> chats) =
      _$ChatListLoadSuccess;

  List<ChatEntity> get chats;
  @JsonKey(ignore: true)
  _$$ChatListLoadSuccessCopyWith<_$ChatListLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatListErrorCopyWith<$Res> {
  factory _$$ChatListErrorCopyWith(
          _$ChatListError value, $Res Function(_$ChatListError) then) =
      __$$ChatListErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ChatListErrorCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$ChatListError>
    implements _$$ChatListErrorCopyWith<$Res> {
  __$$ChatListErrorCopyWithImpl(
      _$ChatListError _value, $Res Function(_$ChatListError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ChatListError(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatListError implements ChatListError {
  const _$ChatListError(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChatListState.error(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListError &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListErrorCopyWith<_$ChatListError> get copyWith =>
      __$$ChatListErrorCopyWithImpl<_$ChatListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatEntity> chats) loadSuccess,
    required TResult Function(String text) error,
  }) {
    return error(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatEntity> chats)? loadSuccess,
    TResult? Function(String text)? error,
  }) {
    return error?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatEntity> chats)? loadSuccess,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatListInitial value) initial,
    required TResult Function(ChatListLoading value) loading,
    required TResult Function(ChatListLoadSuccess value) loadSuccess,
    required TResult Function(ChatListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatListInitial value)? initial,
    TResult? Function(ChatListLoading value)? loading,
    TResult? Function(ChatListLoadSuccess value)? loadSuccess,
    TResult? Function(ChatListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatListInitial value)? initial,
    TResult Function(ChatListLoading value)? loading,
    TResult Function(ChatListLoadSuccess value)? loadSuccess,
    TResult Function(ChatListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatListError implements ChatListState {
  const factory ChatListError(final String text) = _$ChatListError;

  String get text;
  @JsonKey(ignore: true)
  _$$ChatListErrorCopyWith<_$ChatListError> get copyWith =>
      throw _privateConstructorUsedError;
}
