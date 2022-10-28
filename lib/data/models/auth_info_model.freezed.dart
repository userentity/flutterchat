// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthInfoModel {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthInfoModelCopyWith<AuthInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoModelCopyWith<$Res> {
  factory $AuthInfoModelCopyWith(
          AuthInfoModel value, $Res Function(AuthInfoModel) then) =
      _$AuthInfoModelCopyWithImpl<$Res, AuthInfoModel>;
  @useResult
  $Res call({String id, String? name, String? email, String? imageUrl});
}

/// @nodoc
class _$AuthInfoModelCopyWithImpl<$Res, $Val extends AuthInfoModel>
    implements $AuthInfoModelCopyWith<$Res> {
  _$AuthInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthInfoModelCopyWith<$Res>
    implements $AuthInfoModelCopyWith<$Res> {
  factory _$$_AuthInfoModelCopyWith(
          _$_AuthInfoModel value, $Res Function(_$_AuthInfoModel) then) =
      __$$_AuthInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name, String? email, String? imageUrl});
}

/// @nodoc
class __$$_AuthInfoModelCopyWithImpl<$Res>
    extends _$AuthInfoModelCopyWithImpl<$Res, _$_AuthInfoModel>
    implements _$$_AuthInfoModelCopyWith<$Res> {
  __$$_AuthInfoModelCopyWithImpl(
      _$_AuthInfoModel _value, $Res Function(_$_AuthInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_AuthInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthInfoModel implements _AuthInfoModel {
  const _$_AuthInfoModel(
      {required this.id, this.name, this.email, this.imageUrl});

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'AuthInfoModel(id: $id, name: $name, email: $email, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthInfoModel &&
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
  _$$_AuthInfoModelCopyWith<_$_AuthInfoModel> get copyWith =>
      __$$_AuthInfoModelCopyWithImpl<_$_AuthInfoModel>(this, _$identity);
}

abstract class _AuthInfoModel implements AuthInfoModel {
  const factory _AuthInfoModel(
      {required final String id,
      final String? name,
      final String? email,
      final String? imageUrl}) = _$_AuthInfoModel;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AuthInfoModelCopyWith<_$_AuthInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
