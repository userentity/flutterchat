import '../../domain/entities/auth_info_entity.dart';
import '../models/auth_info_model.dart';

extension AuthInfoModelMapper on AuthInfoModel {
  AuthInfoEntity toEntity() {
    return AuthInfoEntity(
      id: id,
      name: name ?? "",
      email: email ?? "",
      imageUrl: imageUrl ?? "",
    );
  }
}
