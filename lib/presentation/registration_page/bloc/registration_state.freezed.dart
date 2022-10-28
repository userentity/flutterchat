// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String text) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String text)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationInitialCopyWith<$Res> {
  factory _$$RegistrationInitialCopyWith(_$RegistrationInitial value,
          $Res Function(_$RegistrationInitial) then) =
      __$$RegistrationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationInitialCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationInitial>
    implements _$$RegistrationInitialCopyWith<$Res> {
  __$$RegistrationInitialCopyWithImpl(
      _$RegistrationInitial _value, $Res Function(_$RegistrationInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationInitial implements RegistrationInitial {
  const _$RegistrationInitial();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistrationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String text) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String text)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegistrationInitial implements RegistrationState {
  const factory RegistrationInitial() = _$RegistrationInitial;
}

/// @nodoc
abstract class _$$RegistrationLoadingCopyWith<$Res> {
  factory _$$RegistrationLoadingCopyWith(_$RegistrationLoading value,
          $Res Function(_$RegistrationLoading) then) =
      __$$RegistrationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationLoadingCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationLoading>
    implements _$$RegistrationLoadingCopyWith<$Res> {
  __$$RegistrationLoadingCopyWithImpl(
      _$RegistrationLoading _value, $Res Function(_$RegistrationLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationLoading implements RegistrationLoading {
  const _$RegistrationLoading();

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistrationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String text) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String text)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistrationLoading implements RegistrationState {
  const factory RegistrationLoading() = _$RegistrationLoading;
}

/// @nodoc
abstract class _$$RegistrationSuccessCopyWith<$Res> {
  factory _$$RegistrationSuccessCopyWith(_$RegistrationSuccess value,
          $Res Function(_$RegistrationSuccess) then) =
      __$$RegistrationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSuccessCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationSuccess>
    implements _$$RegistrationSuccessCopyWith<$Res> {
  __$$RegistrationSuccessCopyWithImpl(
      _$RegistrationSuccess _value, $Res Function(_$RegistrationSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationSuccess implements RegistrationSuccess {
  const _$RegistrationSuccess();

  @override
  String toString() {
    return 'RegistrationState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistrationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String text) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String text)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccess implements RegistrationState {
  const factory RegistrationSuccess() = _$RegistrationSuccess;
}

/// @nodoc
abstract class _$$RegistrationErrorCopyWith<$Res> {
  factory _$$RegistrationErrorCopyWith(
          _$RegistrationError value, $Res Function(_$RegistrationError) then) =
      __$$RegistrationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$RegistrationErrorCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationError>
    implements _$$RegistrationErrorCopyWith<$Res> {
  __$$RegistrationErrorCopyWithImpl(
      _$RegistrationError _value, $Res Function(_$RegistrationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$RegistrationError(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationError implements RegistrationError {
  const _$RegistrationError(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'RegistrationState.error(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationError &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationErrorCopyWith<_$RegistrationError> get copyWith =>
      __$$RegistrationErrorCopyWithImpl<_$RegistrationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String text) error,
  }) {
    return error(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String text)? error,
  }) {
    return error?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(RegistrationInitial value) initial,
    required TResult Function(RegistrationLoading value) loading,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationInitial value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitial value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegistrationError implements RegistrationState {
  const factory RegistrationError(final String text) = _$RegistrationError;

  String get text;
  @JsonKey(ignore: true)
  _$$RegistrationErrorCopyWith<_$RegistrationError> get copyWith =>
      throw _privateConstructorUsedError;
}
