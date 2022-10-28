import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';
import '../../data/data_sources/remote/firebase_const.dart';

/// A lot of smell code. Only for debug
class DebugPage extends StatefulWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  final _firestoreUsers =
      FirebaseFirestore.instance.collection(FirebaseConst.userCollection);
  final _firestoreChats =
      FirebaseFirestore.instance.collection(FirebaseConst.chatCollection);
  final _firestoreMessages =
      FirebaseFirestore.instance.collection(FirebaseConst.messageCollection);

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DEBUG PAGE"),
      ),
      body: Padding(
        padding: const Margin.all(UI.padding),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                if (isLoading) ...[
                  const Padding(
                    padding: Margin.vertical(UI.padding),
                    child: LinearProgressIndicator(),
                  ),
                ],
                TextButton(
                  onPressed: () => isLoading ? null : _generate(),
                  child: const Text(
                    "Generate Users \n with chats and messages",
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  onPressed: () => isLoading ? null : _delete(),
                  child: const Text(
                    "Delete All",
                    style: TextStyle(
                      color: UI.redColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _generate() async {
    setState(() {
      isLoading = true;
    });

    const userCount = 10;
    const messagesMaxCount = 40;

    String? profileUserId = _firebaseAuth.currentUser?.uid;
    if (profileUserId == null) return;

    for (int i = 0; i < userCount; i++) {
      // Create new user
      final userId = faker.guid.guid();
      Map<String, dynamic> user = {
        FirebaseConst.userIdField: userId,
        FirebaseConst.userNameField: faker.person.name(),
        FirebaseConst.userAboutField: faker.lorem
            .sentences(faker.randomGenerator.integer(5, min: 0))
            .join(" "),
        FirebaseConst.userEmailField: faker.internet.email(),
        FirebaseConst.userImageUrlField: faker.randomGenerator.integer(100) > 30
            ? faker.image.image(random: true)
            : "",
        'faker': true,
      };
      await _firestoreUsers.doc(userId).set(user);

      // Create chat and messages for this user related to Profile User. Randomly
      if (faker.randomGenerator.boolean()) {
        // Create Chat
        final chatId = faker.guid.guid();
        Map<String, dynamic> chat = {
          FirebaseConst.chatIdField: chatId,
          FirebaseConst.chatUsersField: [
            _firestoreUsers.doc(userId),
            _firestoreUsers.doc(profileUserId),
          ],
          'faker': true,
        };
        await _firestoreChats.doc(chatId).set(chat);

        // Create messages
        final int messageCount =
            faker.randomGenerator.integer(messagesMaxCount, min: 1);
        var createdAt = faker.date.dateTime(minYear: 2020, maxYear: 2022);

        for (int y = 0; y <= messageCount; y++) {
          final messageId = faker.guid.guid();

          // improve logic
          final messageType = faker.randomGenerator.fromPattern([
            "text",
            "text",
            "text",
            "audio",
            "image",
          ]);

          String content = "";

          if (messageType == "video") {
            content =
                "https://joy.videvo.net/videvo_files/video/free/2017-12/originalContent/171124_B2_UHD_001.mp4";
          } else if (messageType == "audio") {
            content =
                "https://content.videvo.net/videvo_files/audio/premium/audio0065/conversions/mp3_option/Cold-Espionage_15_EXT01234.mp3";
          } else if (messageType == "image") {
            content = faker.image.image(
                keywords: ["man", "people", "women", "child"], random: true);
          } else {
            content = faker.lorem
                .sentences(faker.randomGenerator.integer(3, min: 1))
                .join(" ");
          }

          final fromId =
              faker.randomGenerator.boolean() ? userId : profileUserId;
          final toId = fromId == userId ? profileUserId : userId;

          Map<String, dynamic> message = {
            FirebaseConst.messageIdField: messageId,
            FirebaseConst.messageFromIdField: fromId,
            FirebaseConst.messageToIdField: toId,
            FirebaseConst.messageChatIdField: chatId,
            FirebaseConst.messageTypeField: messageType,
            FirebaseConst.messageContentField: content,
            FirebaseConst.messageIsViewedField:
                y == messageCount ? faker.randomGenerator.boolean() : true,
            FirebaseConst.messageCreatedAtField:
                createdAt.millisecondsSinceEpoch,
            'faker': true,
          };
          createdAt = createdAt.add(
            Duration(
              seconds: faker.randomGenerator.integer(10000, min: 10),
            ),
          );

          await _firestoreMessages.doc(messageId).set(message);
        }
      }
    }

    setState(() {
      isLoading = false;
    });
  }

  Future<void> _delete() async {
    setState(() {
      isLoading = true;
    });
    var users = await _firestoreUsers.where("faker", isEqualTo: true).get();
    // var users = await _firestoreUsers.get();
    for (var user in users.docs) {
      await user.reference.delete();
    }

    var chats = await _firestoreChats.get();
    for (var chat in chats.docs) {
      await chat.reference.delete();
    }

    var messages = await _firestoreMessages.get();
    for (var message in messages.docs) {
      await message.reference.delete();
    }
    setState(() {
      isLoading = false;
    });
  }
}
