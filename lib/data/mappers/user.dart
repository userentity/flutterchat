import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      about: about,
      email: email,
      imageUrl: imageUrl,
    );
  }
}

extension UserMapper on UserEntity {
  UserModel toModel() {
    return UserModel(
      id: id,
      name: name,
      about: about,
      email: email,
      imageUrl: imageUrl,
    );
  }
}
