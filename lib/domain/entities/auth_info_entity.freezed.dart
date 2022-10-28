// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthInfoEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthInfoEntityCopyWith<AuthInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoEntityCopyWith<$Res> {
  factory $AuthInfoEntityCopyWith(
          AuthInfoEntity value, $Res Function(AuthInfoEntity) then) =
      _$AuthInfoEntityCopyWithImpl<$Res, AuthInfoEntity>;
  @useResult
  $Res call({String id, String name, String email, String imageUrl});
}

/// @nodoc
class _$AuthInfoEntityCopyWithImpl<$Res, $Val extends AuthInfoEntity>
    implements $AuthInfoEntityCopyWith<$Res> {
  _$AuthInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthInfoEntityCopyWith<$Res>
    implements $AuthInfoEntityCopyWith<$Res> {
  factory _$$_AuthInfoEntityCopyWith(
          _$_AuthInfoEntity value, $Res Function(_$_AuthInfoEntity) then) =
      __$$_AuthInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String email, String imageUrl});
}

/// @nodoc
class __$$_AuthInfoEntityCopyWithImpl<$Res>
    extends _$AuthInfoEntityCopyWithImpl<$Res, _$_AuthInfoEntity>
    implements _$$_AuthInfoEntityCopyWith<$Res> {
  __$$_AuthInfoEntityCopyWithImpl(
      _$_AuthInfoEntity _value, $Res Function(_$_AuthInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_AuthInfoEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthInfoEntity implements _AuthInfoEntity {
  const _$_AuthInfoEntity(
      {required this.id,
      required this.name,
      required this.email,
      required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'AuthInfoEntity(id: $id, name: $name, email: $email, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthInfoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthInfoEntityCopyWith<_$_AuthInfoEntity> get copyWith =>
      __$$_AuthInfoEntityCopyWithImpl<_$_AuthInfoEntity>(this, _$identity);
}

abstract class _AuthInfoEntity implements AuthInfoEntity {
  const factory _AuthInfoEntity(
      {required final String id,
      required final String name,
      required final String email,
      required final String imageUrl}) = _$_AuthInfoEntity;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AuthInfoEntityCopyWith<_$_AuthInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
