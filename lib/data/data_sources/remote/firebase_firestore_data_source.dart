import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/exceptions.dart';
import '../../models/chat_model.dart';
import '../../models/message_model.dart';
import '../../models/user_model.dart';
import 'firebase_const.dart';

abstract class FirebaseFirestoreDataSource {
  Stream<MessageModel> get newMessageStream;

  /// Get all user chats from Cloud Firestore
  ///
  /// Return list of [ChatModel]
  Future<List<ChatModel>> fetchChats(String userId);

  /// Create new chat in Cloud Firestore
  Future<void> addChat(ChatModel chat);

  /// /// Get chat if exist from Firebase
  ///
  /// Return [ChatModel] or null
  Future<ChatModel?> getChat(String userId, String userProfileId);

  /// Get all messages from current chat from Cloud Firestore
  ///
  /// Return list of [MessageModel]
  Future<List<MessageModel>> fetchMessages(String chatId, String? lastId);

  /// Get last message from current chat from Cloud Firestore
  ///
  /// Return [MessageModel] or null
  Future<MessageModel?> fetchLastMessage(String chatId);

  /// Get unread message count
  ///
  /// Return int
  Future<int> fetchUnreadMessageCount(String chatId, String profileUserId);

  /// Get User from Cloud Firestore by User Id
  ///
  /// Return [UserModel]
  Future<UserModel> fetchUser(String id);

  /// Get Users from Cloud Firestore
  ///
  /// Return list of [UserModel]
  Future<List<UserModel>> fetchUsers({String? search});

  /// Add user to Cloud Firestore
  Future<void> addUser(UserModel user);

  /// Edit user at Cloud Firestore
  Future<void> editUser(UserModel user);

  /// Add message to Cloud Firestore
  Future<void> addMessage(MessageModel message);

  /// Set message like viewed
  Future<void> messageViewed(String messageId);

  /// Return Message stream from Firestore
  /// Get snapshot from any message that belong to profile user where fromId or toId is equal profile user id
  Stream<MessageModel> subscribeForMessages(String userId);

  /// Delete chat
  Future<void> deleteChat(String chatId);
}

@Singleton(as: FirebaseFirestoreDataSource)
class FirebaseFirestoreDataSourceImpl implements FirebaseFirestoreDataSource {
  final _userCollection =
      FirebaseFirestore.instance.collection(FirebaseConst.userCollection);

  final _messageCollection =
      FirebaseFirestore.instance.collection(FirebaseConst.messageCollection);

  final _chatCollection =
      FirebaseFirestore.instance.collection(FirebaseConst.chatCollection);

  final _newMessageController = StreamController<MessageModel>.broadcast();

  @override
  Stream<MessageModel> get newMessageStream => _newMessageController.stream;

  MessageModel? lastValue;

  StreamSubscription? _firebaseMessageStream;

  bool _streamFirstValue = true;

  @override
  Future<UserModel> fetchUser(String id) async {
    DocumentSnapshot<Map<String, dynamic>> userDocument =
        await _userCollection.doc(id).get();
    Map<String, dynamic>? userData = userDocument.data();

    // if firebase doesn't contain user return exception
    if (userData == null) throw UserNotExistException();

    UserModel userModel = UserModel.fromJson(userData);

    return userModel;
  }

  @override
  Future<List<UserModel>> fetchUsers({String? search}) async {
    Query<Map<String, dynamic>> query =
        _userCollection.orderBy(FirebaseConst.userNameField);

    if (search != null && search.isNotEmpty) {
      query = query.where(FirebaseConst.userEmailField, isEqualTo: search);
    }

    QuerySnapshot<Map<String, dynamic>> data = await query.get();

    return data.docs
        .map((userData) => UserModel.fromJson(userData.data()))
        .toList();
  }

  @override
  Future<void> addUser(UserModel user) async {
    // Check if user already exist
    // If exist return exception
    DocumentSnapshot<Map<String, dynamic>> userDocument =
        await _userCollection.doc(user.id).get();
    Map<String, dynamic>? userData = userDocument.data();
    if (userData != null) throw SignUpEmailAlreadyInUseException();

    await _userCollection.doc(user.id).set(user.toJson());
  }

  @override
  Future<void> editUser(UserModel user) async {
    await _userCollection.doc(user.id).update(user.toJson());
  }

  @override
  Future<List<ChatModel>> fetchChats(String userId) async {
    QuerySnapshot<Map<String, dynamic>> chatsData = await _chatCollection
        .limit(20)
        .where(FirebaseConst.chatUsersField,
            arrayContainsAny: [_userCollection.doc(userId)]).get();

    return chatsData.docs
        .map((chatData) => ChatModel.fromJson(chatData.data()))
        .toList();
  }

  @override
  Stream<MessageModel> subscribeForMessages(String profileUserId) {
    _firebaseMessageStream ??= _messageCollection
        .orderBy(FirebaseConst.messageCreatedAtField, descending: true)
        .where(
          FirebaseConst.messageToIdField,
          isEqualTo: profileUserId,
        )
        .limit(1)
        .snapshots()
        .listen((snapshots) {
      if (!_streamFirstValue) {
        for (final snapshot in snapshots.docs) {
          final messageModel = MessageModel.fromJson(snapshot.data());
          if (lastValue?.id != messageModel.id) {
            lastValue = messageModel;
            _newMessageController.add(messageModel);
          }
        }
      } else {
        _streamFirstValue = false;
      }
    });

    return newMessageStream;
  }

  @override
  Future<List<MessageModel>> fetchMessages(
      String chatId, String? lastID) async {
    Query<Map<String, dynamic>> query = _messageCollection
        .orderBy(FirebaseConst.messageCreatedAtField, descending: true);
    // .where(FirebaseConst.messageChatIdField, isEqualTo: chatId);

    if (lastID != null) {
      query =
          query.startAfterDocument(await _messageCollection.doc(lastID).get());
    }

    query = query.limit(15);

    QuerySnapshot<Map<String, dynamic>> messagesData = await query.get();

    return messagesData.docs
        .map((chatData) => MessageModel.fromJson(chatData.data()))
        .toList();
  }

  @override
  Future<MessageModel?> fetchLastMessage(String chatId) async {
    QuerySnapshot<Map<String, dynamic>> snapshotData = await _messageCollection
        .orderBy(FirebaseConst.messageCreatedAtField, descending: true)
        .where(FirebaseConst.messageChatIdField, isEqualTo: chatId)
        .limit(1)
        .get();

    if (snapshotData.docs.isNotEmpty) {
      return MessageModel.fromJson(snapshotData.docs[0].data());
    }

    return null;
  }

  @override
  Future<int> fetchUnreadMessageCount(
      String chatId, String profileUserId) async {
    QuerySnapshot<Map<String, dynamic>> snapshotsData = await _messageCollection
        .orderBy(FirebaseConst.messageCreatedAtField, descending: true)
        .where(FirebaseConst.messageChatIdField, isEqualTo: chatId)
        .where(FirebaseConst.messageToIdField, isEqualTo: profileUserId)
        .where(FirebaseConst.messageIsViewedField, isEqualTo: false)
        .get();

    return snapshotsData.docs.length;
  }

  @override
  Future<void> addMessage(MessageModel message) async {
    await _messageCollection.doc(message.id).set(message.toJson());
  }

  @override
  Future<void> addChat(ChatModel chat) async {
    await _chatCollection.doc(chat.id).set(chat.toJson());
  }

  @override
  Future<ChatModel?> getChat(String userId, String userProfileId) async {
    QuerySnapshot<Map<String, dynamic>> chatsData = await _chatCollection
        .limit(1)
        .where(FirebaseConst.chatUsersField, isEqualTo: [
      _userCollection.doc(userId),
      _userCollection.doc(userProfileId)
    ]).get();

    if (chatsData.docs.isNotEmpty) {
      final chatModel = ChatModel.fromJson(chatsData.docs.first.data());

      return chatModel;
    }
    return null;
  }

  @override
  Future<void> messageViewed(String messageId) async {
    _messageCollection
        .doc(messageId)
        .update({FirebaseConst.messageIsViewedField: true});
  }

  @override
  Future<void> deleteChat(String chatId) async {
    await _chatCollection.doc(chatId).delete();
    final messagesSnapshot = await _messageCollection
        .where(FirebaseConst.messageChatIdField, isEqualTo: chatId)
        .get();
    for (var element in messagesSnapshot.docs) {
      element.reference.delete();
    }
  }
}
