import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info_entity.freezed.dart';

@freezed
class AuthInfoEntity with _$AuthInfoEntity {
  const factory AuthInfoEntity({
    required String id,
    required String name,
    required String email,
    required String imageUrl,
  }) = _AuthInfoEntity;
}
