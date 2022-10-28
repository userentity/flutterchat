// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileSignOutPressed value) signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileSignOutPressed value)? signOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileSignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileFetchedCopyWith<$Res> {
  factory _$$ProfileFetchedCopyWith(
          _$ProfileFetched value, $Res Function(_$ProfileFetched) then) =
      __$$ProfileFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileFetchedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileFetched>
    implements _$$ProfileFetchedCopyWith<$Res> {
  __$$ProfileFetchedCopyWithImpl(
      _$ProfileFetched _value, $Res Function(_$ProfileFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileFetched implements ProfileFetched {
  const _$ProfileFetched();

  @override
  String toString() {
    return 'ProfileEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() signOutPressed,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? signOutPressed,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileSignOutPressed value) signOutPressed,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileSignOutPressed value)? signOutPressed,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileSignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ProfileFetched implements ProfileEvent {
  const factory ProfileFetched() = _$ProfileFetched;
}

/// @nodoc
abstract class _$$ProfileSignOutPressedCopyWith<$Res> {
  factory _$$ProfileSignOutPressedCopyWith(_$ProfileSignOutPressed value,
          $Res Function(_$ProfileSignOutPressed) then) =
      __$$ProfileSignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileSignOutPressedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileSignOutPressed>
    implements _$$ProfileSignOutPressedCopyWith<$Res> {
  __$$ProfileSignOutPressedCopyWithImpl(_$ProfileSignOutPressed _value,
      $Res Function(_$ProfileSignOutPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileSignOutPressed implements ProfileSignOutPressed {
  const _$ProfileSignOutPressed();

  @override
  String toString() {
    return 'ProfileEvent.signOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileSignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetched,
    required TResult Function() signOutPressed,
  }) {
    return signOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetched,
    TResult? Function()? signOutPressed,
  }) {
    return signOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetched,
    TResult Function()? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetched value) fetched,
    required TResult Function(ProfileSignOutPressed value) signOutPressed,
  }) {
    return signOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetched value)? fetched,
    TResult? Function(ProfileSignOutPressed value)? signOutPressed,
  }) {
    return signOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetched value)? fetched,
    TResult Function(ProfileSignOutPressed value)? signOutPressed,
    required TResult orElse(),
  }) {
    if (signOutPressed != null) {
      return signOutPressed(this);
    }
    return orElse();
  }
}

abstract class ProfileSignOutPressed implements ProfileEvent {
  const factory ProfileSignOutPressed() = _$ProfileSignOutPressed;
}
