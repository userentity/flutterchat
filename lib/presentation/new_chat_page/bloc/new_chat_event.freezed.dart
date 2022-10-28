// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetched,
    required TResult Function(UserEntity user) chose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetched,
    TResult? Function(UserEntity user)? chose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetched,
    TResult Function(UserEntity user)? chose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatFetched value) fetched,
    required TResult Function(NewChatChose value) chose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatFetched value)? fetched,
    TResult? Function(NewChatChose value)? chose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatFetched value)? fetched,
    TResult Function(NewChatChose value)? chose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewChatEventCopyWith<$Res> {
  factory $NewChatEventCopyWith(
          NewChatEvent value, $Res Function(NewChatEvent) then) =
      _$NewChatEventCopyWithImpl<$Res, NewChatEvent>;
}

/// @nodoc
class _$NewChatEventCopyWithImpl<$Res, $Val extends NewChatEvent>
    implements $NewChatEventCopyWith<$Res> {
  _$NewChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewChatFetchedCopyWith<$Res> {
  factory _$$NewChatFetchedCopyWith(
          _$NewChatFetched value, $Res Function(_$NewChatFetched) then) =
      __$$NewChatFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$NewChatFetchedCopyWithImpl<$Res>
    extends _$NewChatEventCopyWithImpl<$Res, _$NewChatFetched>
    implements _$$NewChatFetchedCopyWith<$Res> {
  __$$NewChatFetchedCopyWithImpl(
      _$NewChatFetched _value, $Res Function(_$NewChatFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$NewChatFetched(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewChatFetched implements NewChatFetched {
  const _$NewChatFetched({this.search});

  @override
  final String? search;

  @override
  String toString() {
    return 'NewChatEvent.fetched(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewChatFetched &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewChatFetchedCopyWith<_$NewChatFetched> get copyWith =>
      __$$NewChatFetchedCopyWithImpl<_$NewChatFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetched,
    required TResult Function(UserEntity user) chose,
  }) {
    return fetched(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetched,
    TResult? Function(UserEntity user)? chose,
  }) {
    return fetched?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetched,
    TResult Function(UserEntity user)? chose,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatFetched value) fetched,
    required TResult Function(NewChatChose value) chose,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatFetched value)? fetched,
    TResult? Function(NewChatChose value)? chose,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatFetched value)? fetched,
    TResult Function(NewChatChose value)? chose,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class NewChatFetched implements NewChatEvent {
  const factory NewChatFetched({final String? search}) = _$NewChatFetched;

  String? get search;
  @JsonKey(ignore: true)
  _$$NewChatFetchedCopyWith<_$NewChatFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewChatChoseCopyWith<$Res> {
  factory _$$NewChatChoseCopyWith(
          _$NewChatChose value, $Res Function(_$NewChatChose) then) =
      __$$NewChatChoseCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$NewChatChoseCopyWithImpl<$Res>
    extends _$NewChatEventCopyWithImpl<$Res, _$NewChatChose>
    implements _$$NewChatChoseCopyWith<$Res> {
  __$$NewChatChoseCopyWithImpl(
      _$NewChatChose _value, $Res Function(_$NewChatChose) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$NewChatChose(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$NewChatChose implements NewChatChose {
  const _$NewChatChose(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'NewChatEvent.chose(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewChatChose &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewChatChoseCopyWith<_$NewChatChose> get copyWith =>
      __$$NewChatChoseCopyWithImpl<_$NewChatChose>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) fetched,
    required TResult Function(UserEntity user) chose,
  }) {
    return chose(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? fetched,
    TResult? Function(UserEntity user)? chose,
  }) {
    return chose?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? fetched,
    TResult Function(UserEntity user)? chose,
    required TResult orElse(),
  }) {
    if (chose != null) {
      return chose(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewChatFetched value) fetched,
    required TResult Function(NewChatChose value) chose,
  }) {
    return chose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewChatFetched value)? fetched,
    TResult? Function(NewChatChose value)? chose,
  }) {
    return chose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewChatFetched value)? fetched,
    TResult Function(NewChatChose value)? chose,
    required TResult orElse(),
  }) {
    if (chose != null) {
      return chose(this);
    }
    return orElse();
  }
}

abstract class NewChatChose implements NewChatEvent {
  const factory NewChatChose(final UserEntity user) = _$NewChatChose;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$NewChatChoseCopyWith<_$NewChatChose> get copyWith =>
      throw _privateConstructorUsedError;
}
