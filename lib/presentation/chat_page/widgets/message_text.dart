import 'package:flutter/material.dart';

import '../../../core/utils/date.dart';
import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../../domain/entities/message_entity.dart';
import 'created_time.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageTextEntity message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: message.isOwner
          ? Margin.left(MediaQuery.of(context).size.width * 0.2)
          : Margin.right(MediaQuery.of(context).size.width * 0.2),
      child: Container(
        margin: const Margin.bottom(UI.padding),
        padding: const Margin.only(
          left: UI.padding * 0.75,
          right: UI.padding * 0.75,
          top: UI.padding * 0.75,
          bottom: UI.padding / 2,
        ),
        decoration: BoxDecoration(
          color: message.isOwner ? UI.blueColor : UI.darkBcgLightColor,
          borderRadius: BorderRadius.circular(UI.borderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.content,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: UI.whiteColor,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CreatedTime(timeString: message.createdAt.messageTime),
              ],
            )
          ],
        ),
      ),
    );
  }
}
