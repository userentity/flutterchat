// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_edit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String? imagePath) submitted,
    required TResult Function() fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String? imagePath)? submitted,
    TResult? Function()? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String? imagePath)? submitted,
    TResult Function()? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEditSubmitted value) submitted,
    required TResult Function(ProfileEditFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEditSubmitted value)? submitted,
    TResult? Function(ProfileEditFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEditSubmitted value)? submitted,
    TResult Function(ProfileEditFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditEventCopyWith<$Res> {
  factory $ProfileEditEventCopyWith(
          ProfileEditEvent value, $Res Function(ProfileEditEvent) then) =
      _$ProfileEditEventCopyWithImpl<$Res, ProfileEditEvent>;
}

/// @nodoc
class _$ProfileEditEventCopyWithImpl<$Res, $Val extends ProfileEditEvent>
    implements $ProfileEditEventCopyWith<$Res> {
  _$ProfileEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileEditSubmittedCopyWith<$Res> {
  factory _$$ProfileEditSubmittedCopyWith(_$ProfileEditSubmitted value,
          $Res Function(_$ProfileEditSubmitted) then) =
      __$$ProfileEditSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String? imagePath});
}

/// @nodoc
class __$$ProfileEditSubmittedCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$ProfileEditSubmitted>
    implements _$$ProfileEditSubmittedCopyWith<$Res> {
  __$$ProfileEditSubmittedCopyWithImpl(_$ProfileEditSubmitted _value,
      $Res Function(_$ProfileEditSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$ProfileEditSubmitted(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileEditSubmitted implements ProfileEditSubmitted {
  const _$ProfileEditSubmitted({required this.name, this.imagePath});

  @override
  final String name;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'ProfileEditEvent.submitted(name: $name, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEditSubmitted &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEditSubmittedCopyWith<_$ProfileEditSubmitted> get copyWith =>
      __$$ProfileEditSubmittedCopyWithImpl<_$ProfileEditSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String? imagePath) submitted,
    required TResult Function() fetched,
  }) {
    return submitted(name, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String? imagePath)? submitted,
    TResult? Function()? fetched,
  }) {
    return submitted?.call(name, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String? imagePath)? submitted,
    TResult Function()? fetched,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(name, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEditSubmitted value) submitted,
    required TResult Function(ProfileEditFetched value) fetched,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEditSubmitted value)? submitted,
    TResult? Function(ProfileEditFetched value)? fetched,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEditSubmitted value)? submitted,
    TResult Function(ProfileEditFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class ProfileEditSubmitted implements ProfileEditEvent {
  const factory ProfileEditSubmitted(
      {required final String name,
      final String? imagePath}) = _$ProfileEditSubmitted;

  String get name;
  String? get imagePath;
  @JsonKey(ignore: true)
  _$$ProfileEditSubmittedCopyWith<_$ProfileEditSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileEditFetchedCopyWith<$Res> {
  factory _$$ProfileEditFetchedCopyWith(_$ProfileEditFetched value,
          $Res Function(_$ProfileEditFetched) then) =
      __$$ProfileEditFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileEditFetchedCopyWithImpl<$Res>
    extends _$ProfileEditEventCopyWithImpl<$Res, _$ProfileEditFetched>
    implements _$$ProfileEditFetchedCopyWith<$Res> {
  __$$ProfileEditFetchedCopyWithImpl(
      _$ProfileEditFetched _value, $Res Function(_$ProfileEditFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileEditFetched implements ProfileEditFetched {
  const _$ProfileEditFetched();

  @override
  String toString() {
    return 'ProfileEditEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileEditFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String? imagePath) submitted,
    required TResult Function() fetched,
  }) {
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String? imagePath)? submitted,
    TResult? Function()? fetched,
  }) {
    return fetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String? imagePath)? submitted,
    TResult Function()? fetched,
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
    required TResult Function(ProfileEditSubmitted value) submitted,
    required TResult Function(ProfileEditFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEditSubmitted value)? submitted,
    TResult? Function(ProfileEditFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEditSubmitted value)? submitted,
    TResult Function(ProfileEditFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ProfileEditFetched implements ProfileEditEvent {
  const factory ProfileEditFetched() = _$ProfileEditFetched;
}
