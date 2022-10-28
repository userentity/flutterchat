// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cache_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CacheEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int progress) download,
    required TResult Function(String path) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int progress)? download,
    TResult? Function(String path)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int progress)? download,
    TResult Function(String path)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheDownload value) download,
    required TResult Function(CacheFinish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheDownload value)? download,
    TResult? Function(CacheFinish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheDownload value)? download,
    TResult Function(CacheFinish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheEventCopyWith<$Res> {
  factory $CacheEventCopyWith(
          CacheEvent value, $Res Function(CacheEvent) then) =
      _$CacheEventCopyWithImpl<$Res, CacheEvent>;
}

/// @nodoc
class _$CacheEventCopyWithImpl<$Res, $Val extends CacheEvent>
    implements $CacheEventCopyWith<$Res> {
  _$CacheEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CacheDownloadCopyWith<$Res> {
  factory _$$CacheDownloadCopyWith(
          _$CacheDownload value, $Res Function(_$CacheDownload) then) =
      __$$CacheDownloadCopyWithImpl<$Res>;
  @useResult
  $Res call({int progress});
}

/// @nodoc
class __$$CacheDownloadCopyWithImpl<$Res>
    extends _$CacheEventCopyWithImpl<$Res, _$CacheDownload>
    implements _$$CacheDownloadCopyWith<$Res> {
  __$$CacheDownloadCopyWithImpl(
      _$CacheDownload _value, $Res Function(_$CacheDownload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$CacheDownload(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CacheDownload implements CacheDownload {
  const _$CacheDownload(this.progress);

  @override
  final int progress;

  @override
  String toString() {
    return 'CacheEvent.download(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheDownload &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheDownloadCopyWith<_$CacheDownload> get copyWith =>
      __$$CacheDownloadCopyWithImpl<_$CacheDownload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int progress) download,
    required TResult Function(String path) finish,
  }) {
    return download(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int progress)? download,
    TResult? Function(String path)? finish,
  }) {
    return download?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int progress)? download,
    TResult Function(String path)? finish,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheDownload value) download,
    required TResult Function(CacheFinish value) finish,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheDownload value)? download,
    TResult? Function(CacheFinish value)? finish,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheDownload value)? download,
    TResult Function(CacheFinish value)? finish,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class CacheDownload implements CacheEvent {
  const factory CacheDownload(final int progress) = _$CacheDownload;

  int get progress;
  @JsonKey(ignore: true)
  _$$CacheDownloadCopyWith<_$CacheDownload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFinishCopyWith<$Res> {
  factory _$$CacheFinishCopyWith(
          _$CacheFinish value, $Res Function(_$CacheFinish) then) =
      __$$CacheFinishCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$CacheFinishCopyWithImpl<$Res>
    extends _$CacheEventCopyWithImpl<$Res, _$CacheFinish>
    implements _$$CacheFinishCopyWith<$Res> {
  __$$CacheFinishCopyWithImpl(
      _$CacheFinish _value, $Res Function(_$CacheFinish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$CacheFinish(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFinish implements CacheFinish {
  const _$CacheFinish({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'CacheEvent.finish(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFinish &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFinishCopyWith<_$CacheFinish> get copyWith =>
      __$$CacheFinishCopyWithImpl<_$CacheFinish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int progress) download,
    required TResult Function(String path) finish,
  }) {
    return finish(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int progress)? download,
    TResult? Function(String path)? finish,
  }) {
    return finish?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int progress)? download,
    TResult Function(String path)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheDownload value) download,
    required TResult Function(CacheFinish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheDownload value)? download,
    TResult? Function(CacheFinish value)? finish,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheDownload value)? download,
    TResult Function(CacheFinish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class CacheFinish implements CacheEvent {
  const factory CacheFinish({required final String path}) = _$CacheFinish;

  String get path;
  @JsonKey(ignore: true)
  _$$CacheFinishCopyWith<_$CacheFinish> get copyWith =>
      throw _privateConstructorUsedError;
}
