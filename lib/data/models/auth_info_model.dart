import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info_model.freezed.dart';

@freezed
class AuthInfoModel with _$AuthInfoModel {
  const factory AuthInfoModel({
    required String id,
    String? name,
    String? email,
    String? imageUrl,
  }) = _AuthInfoModel;
}
