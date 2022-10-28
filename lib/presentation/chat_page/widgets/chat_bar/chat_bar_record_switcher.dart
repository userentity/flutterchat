import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/chat_bloc.dart';
import '../../bloc/chat_event.dart';
import '../../bloc/chat_state.dart';
import 'chat_bar_button.dart';

class ChatBarRecordSwitcher extends StatefulWidget {
  const ChatBarRecordSwitcher({Key? key, required this.textController})
      : super(key: key);

  final TextEditingController textController;

  @override
  State<ChatBarRecordSwitcher> createState() => _ChatBarRecordSwitcherState();
}

class _ChatBarRecordSwitcherState extends State<ChatBarRecordSwitcher> {
  bool isAudio = true;

  bool isSendButton = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      isSendButton = widget.textController.text.trim().isNotEmpty;
    });

    widget.textController.addListener(_textListener);
  }

  @override
  void dispose() {
    widget.textController.removeListener(_textListener);
    super.dispose();
  }

  _textListener() {
    setState(() {
      isSendButton = widget.textController.text.trim().isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return SizedBox(
          width: 70,
          child: isSendButton
              ? ChatBatButton(
                  activeStatus: ChatBarStatus.text,
                  icon: Icons.send,
                  onTapDown: (_) => _sendTextMessage(),
                )
              : GestureDetector(
                  onPanEnd: state.chatBarStatus == ChatBarStatus.text
                      ? _detectSwipe
                      : null,
                  child: isAudio
                      ? ChatBatButton(
                          activeStatus: ChatBarStatus.audio,
                          icon: CupertinoIcons.mic,
                          onTapDown: (_) => context.read<ChatBloc>().add(
                                const ChatAudioRecordTapped(),
                              ),
                        )
                      : ChatBatButton(
                          activeStatus: ChatBarStatus.audio,
                          icon: CupertinoIcons.camera,
                          onTapDown: (_) => context.read<ChatBloc>().add(
                                const ChatVideoRecordTapped(),
                              ),
                        ),
                ),
        );
      },
    );
  }

  void _detectSwipe(DragEndDetails details) {
    setState(() {
      isAudio = !isAudio;
    });
  }

  void _sendTextMessage() {
    context.read<ChatBloc>().add(
          ChatTextMessageSent(widget.textController.text.trim()),
        );
    widget.textController.text = "";
  }
}
