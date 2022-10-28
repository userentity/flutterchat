import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/chat_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../../service_locator.dart' as locator;
import '../data_sources/remote/firebase_const.dart';
import '../mappers/user.dart';
import '../models/chat_model.dart';
import '../models/user_model.dart';

extension ChatModelMapper on ChatModel {
  Future<ChatEntity> toEntity() async {
    final profileUserId = locator.getIt<UserRepository>().fetchProfileUser().id;

    List<DocumentSnapshot<Map<String, dynamic>>> userSnapshots = [];
    for (DocumentReference<Map<String, dynamic>> userRef in usersRef) {
      if (userRef.id != profileUserId) {
        userSnapshots.add(await userRef.get());
      }
    }

    final user = UserModel.fromJson(userSnapshots[0].data()!).toEntity();

    return ChatEntity(
      id: id,
      withUser: user,
    );
  }
}

extension ChatMapper on ChatEntity {
  ChatModel toModel() {
    final profileUserId = locator.getIt<UserRepository>().fetchProfileUser().id;
    final profileUserRef = FirebaseFirestore.instance
        .collection(FirebaseConst.userCollection)
        .doc(profileUserId);

    final userRef = FirebaseFirestore.instance
        .collection(FirebaseConst.userCollection)
        .doc(withUser.id);

    return ChatModel(
      id: id,
      usersRef: [userRef, profileUserRef],
    );
  }
}
