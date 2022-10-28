import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const/ui.dart';
import '../../../../core/utils/margin.dart';
import '../../../widgets/gradients.dart';
import '../../bloc/chat_state.dart';
import '../../bloc/chat_bloc.dart';

class ChatBatButton extends StatelessWidget {
  const ChatBatButton(
      {Key? key,
      required this.activeStatus,
      required this.icon,
      required this.onTapDown})
      : super(key: key);

  final ChatBarStatus activeStatus;

  final IconData icon;

  final void Function(TapDownDetails) onTapDown;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return GestureDetector(
          onTapDown: onTapDown,
          child: Container(
            decoration: BoxDecoration(
              color: state.chatBarStatus == activeStatus
                  ? null
                  : Colors.transparent,
              shape: BoxShape.circle,
              gradient: state.chatBarStatus == activeStatus
                  ? gradientBlueLinear
                  : null,
            ),
            child: Container(
              height: 42,
              width: 42,
              margin: const Margin.all(3),
              decoration: BoxDecoration(
                color: state.chatBarStatus == activeStatus
                    ? UI.whiteColor
                    : UI.darkBcgMediumColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: UI.blueColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
