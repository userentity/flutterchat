// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String name, String? imagePath)
        signUpPressed,
    required TResult Function() signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String name, String? imagePath)?
        signUpPressed,
    TResult? Function()? signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String name, String? imagePath)?
        signUpPressed,
    TResult Function()? signUpGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationSignUpPressed value) signUpPressed,
    required TResult Function(RegistrationSignUpGooglePressed value)
        signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationSignUpPressed value)? signUpPressed,
    TResult? Function(RegistrationSignUpGooglePressed value)?
        signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationSignUpPressed value)? signUpPressed,
    TResult Function(RegistrationSignUpGooglePressed value)?
        signUpGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationSignUpPressedCopyWith<$Res> {
  factory _$$RegistrationSignUpPressedCopyWith(
          _$RegistrationSignUpPressed value,
          $Res Function(_$RegistrationSignUpPressed) then) =
      __$$RegistrationSignUpPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String name, String? imagePath});
}

/// @nodoc
class __$$RegistrationSignUpPressedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationSignUpPressed>
    implements _$$RegistrationSignUpPressedCopyWith<$Res> {
  __$$RegistrationSignUpPressedCopyWithImpl(_$RegistrationSignUpPressed _value,
      $Res Function(_$RegistrationSignUpPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$RegistrationSignUpPressed(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$RegistrationSignUpPressed implements RegistrationSignUpPressed {
  const _$RegistrationSignUpPressed(
      {required this.email,
      required this.password,
      required this.name,
      this.imagePath});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'RegistrationEvent.signUpPressed(email: $email, password: $password, name: $name, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSignUpPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, name, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationSignUpPressedCopyWith<_$RegistrationSignUpPressed>
      get copyWith => __$$RegistrationSignUpPressedCopyWithImpl<
          _$RegistrationSignUpPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String name, String? imagePath)
        signUpPressed,
    required TResult Function() signUpGooglePressed,
  }) {
    return signUpPressed(email, password, name, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String name, String? imagePath)?
        signUpPressed,
    TResult? Function()? signUpGooglePressed,
  }) {
    return signUpPressed?.call(email, password, name, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String name, String? imagePath)?
        signUpPressed,
    TResult Function()? signUpGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(email, password, name, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationSignUpPressed value) signUpPressed,
    required TResult Function(RegistrationSignUpGooglePressed value)
        signUpGooglePressed,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationSignUpPressed value)? signUpPressed,
    TResult? Function(RegistrationSignUpGooglePressed value)?
        signUpGooglePressed,
  }) {
    return signUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationSignUpPressed value)? signUpPressed,
    TResult Function(RegistrationSignUpGooglePressed value)?
        signUpGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class RegistrationSignUpPressed implements RegistrationEvent {
  const factory RegistrationSignUpPressed(
      {required final String email,
      required final String password,
      required final String name,
      final String? imagePath}) = _$RegistrationSignUpPressed;

  String get email;
  String get password;
  String get name;
  String? get imagePath;
  @JsonKey(ignore: true)
  _$$RegistrationSignUpPressedCopyWith<_$RegistrationSignUpPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationSignUpGooglePressedCopyWith<$Res> {
  factory _$$RegistrationSignUpGooglePressedCopyWith(
          _$RegistrationSignUpGooglePressed value,
          $Res Function(_$RegistrationSignUpGooglePressed) then) =
      __$$RegistrationSignUpGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSignUpGooglePressedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$RegistrationSignUpGooglePressed>
    implements _$$RegistrationSignUpGooglePressedCopyWith<$Res> {
  __$$RegistrationSignUpGooglePressedCopyWithImpl(
      _$RegistrationSignUpGooglePressed _value,
      $Res Function(_$RegistrationSignUpGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationSignUpGooglePressed
    implements RegistrationSignUpGooglePressed {
  const _$RegistrationSignUpGooglePressed();

  @override
  String toString() {
    return 'RegistrationEvent.signUpGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSignUpGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String name, String? imagePath)
        signUpPressed,
    required TResult Function() signUpGooglePressed,
  }) {
    return signUpGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String name, String? imagePath)?
        signUpPressed,
    TResult? Function()? signUpGooglePressed,
  }) {
    return signUpGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String name, String? imagePath)?
        signUpPressed,
    TResult Function()? signUpGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpGooglePressed != null) {
      return signUpGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationSignUpPressed value) signUpPressed,
    required TResult Function(RegistrationSignUpGooglePressed value)
        signUpGooglePressed,
  }) {
    return signUpGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationSignUpPressed value)? signUpPressed,
    TResult? Function(RegistrationSignUpGooglePressed value)?
        signUpGooglePressed,
  }) {
    return signUpGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationSignUpPressed value)? signUpPressed,
    TResult Function(RegistrationSignUpGooglePressed value)?
        signUpGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpGooglePressed != null) {
      return signUpGooglePressed(this);
    }
    return orElse();
  }
}

abstract class RegistrationSignUpGooglePressed implements RegistrationEvent {
  const factory RegistrationSignUpGooglePressed() =
      _$RegistrationSignUpGooglePressed;
}
