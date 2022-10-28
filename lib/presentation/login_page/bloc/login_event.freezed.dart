// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInPressed,
    required TResult Function() signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInPressed,
    TResult? Function()? signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInPressed,
    TResult Function()? signUpGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInPressed value) signInPressed,
    required TResult Function(LoginSignInGooglePressed value)
        signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInPressed value)? signInPressed,
    TResult? Function(LoginSignInGooglePressed value)? signUpGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInPressed value)? signInPressed,
    TResult Function(LoginSignInGooglePressed value)? signUpGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginSignInPressedCopyWith<$Res> {
  factory _$$LoginSignInPressedCopyWith(_$LoginSignInPressed value,
          $Res Function(_$LoginSignInPressed) then) =
      __$$LoginSignInPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginSignInPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSignInPressed>
    implements _$$LoginSignInPressedCopyWith<$Res> {
  __$$LoginSignInPressedCopyWithImpl(
      _$LoginSignInPressed _value, $Res Function(_$LoginSignInPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginSignInPressed(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginSignInPressed implements LoginSignInPressed {
  const _$LoginSignInPressed({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.signInPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSignInPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSignInPressedCopyWith<_$LoginSignInPressed> get copyWith =>
      __$$LoginSignInPressedCopyWithImpl<_$LoginSignInPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInPressed,
    required TResult Function() signUpGooglePressed,
  }) {
    return signInPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInPressed,
    TResult? Function()? signUpGooglePressed,
  }) {
    return signInPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInPressed,
    TResult Function()? signUpGooglePressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSignInPressed value) signInPressed,
    required TResult Function(LoginSignInGooglePressed value)
        signUpGooglePressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInPressed value)? signInPressed,
    TResult? Function(LoginSignInGooglePressed value)? signUpGooglePressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInPressed value)? signInPressed,
    TResult Function(LoginSignInGooglePressed value)? signUpGooglePressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class LoginSignInPressed implements LoginEvent {
  const factory LoginSignInPressed(
      {required final String email,
      required final String password}) = _$LoginSignInPressed;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginSignInPressedCopyWith<_$LoginSignInPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSignInGooglePressedCopyWith<$Res> {
  factory _$$LoginSignInGooglePressedCopyWith(_$LoginSignInGooglePressed value,
          $Res Function(_$LoginSignInGooglePressed) then) =
      __$$LoginSignInGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSignInGooglePressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSignInGooglePressed>
    implements _$$LoginSignInGooglePressedCopyWith<$Res> {
  __$$LoginSignInGooglePressedCopyWithImpl(_$LoginSignInGooglePressed _value,
      $Res Function(_$LoginSignInGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSignInGooglePressed implements LoginSignInGooglePressed {
  const _$LoginSignInGooglePressed();

  @override
  String toString() {
    return 'LoginEvent.signUpGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSignInGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInPressed,
    required TResult Function() signUpGooglePressed,
  }) {
    return signUpGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInPressed,
    TResult? Function()? signUpGooglePressed,
  }) {
    return signUpGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInPressed,
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
    required TResult Function(LoginSignInPressed value) signInPressed,
    required TResult Function(LoginSignInGooglePressed value)
        signUpGooglePressed,
  }) {
    return signUpGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSignInPressed value)? signInPressed,
    TResult? Function(LoginSignInGooglePressed value)? signUpGooglePressed,
  }) {
    return signUpGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSignInPressed value)? signInPressed,
    TResult Function(LoginSignInGooglePressed value)? signUpGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpGooglePressed != null) {
      return signUpGooglePressed(this);
    }
    return orElse();
  }
}

abstract class LoginSignInGooglePressed implements LoginEvent {
  const factory LoginSignInGooglePressed() = _$LoginSignInGooglePressed;
}
