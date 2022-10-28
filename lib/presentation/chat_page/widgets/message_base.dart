import 'package:flutter/material.dart';

import '../../../core/utils/date.dart';
import '../../../domain/entities/message_entity.dart';
import 'messages_list_header_time.dart';
import 'message_image.dart';
import 'message_audio.dart';
import 'message_text.dart';
import 'message_video.dart';

class MessageBase extends StatefulWidget {
  const MessageBase(
      {Key? key,
      required this.message,
      required this.onView,
      this.messageListHeaderTime})
      : super(key: key);

  final MessageEntity message;

  final DateTime? messageListHeaderTime;

  final void Function() onView;

  @override
  State<MessageBase> createState() => _MessageBaseState();
}

class _MessageBaseState extends State<MessageBase> {
  @override
  void initState() {
    super.initState();
    if (!widget.message.isViewed) {
      widget.onView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.messageListHeaderTime != null)
          MessagesListHeaderTime(
              timeString: widget.messageListHeaderTime!.messageHeaderTime),
        widget.message.map(
          text: (message) => TextMessage(
            message: message,
          ),
          image: (message) => MessageImage(
            message: message,
          ),
          audio: (message) => AudioMessage(
            message: message,
          ),
          video: (message) => VideoMessage(
            message: message,
          ),
        ),
      ],
    );
  }
}
