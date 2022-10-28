class FirebaseConst {
  // Collections
  static const userCollection = "users";
  static const chatCollection = "chats";
  static const messageCollection = "messages";

  // User fields
  static const userIdField = "id";
  static const userEmailField = "email";
  static const userNameField = "name";
  static const userImageUrlField = "imageUrl";
  static const userAboutField = "about";

  // Chat fields
  static const chatIdField = "id";
  static const chatUsersField = "usersRef";

  // Message fields
  static const messageIdField = "id";
  static const messageFromIdField = "fromId";
  static const messageToIdField = "toId";
  static const messageChatIdField = "chatId";
  static const messageTypeField = "type";
  static const messageContentField = "content";
  static const messageWaveformField = "waveform";
  static const messageIsViewedField = "isViewed";
  static const messageCreatedAtField = "createdAt";
}
