import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../../core/utils/date.dart';
import '../../../domain/entities/chat_entity.dart';
import '../../../domain/entities/message_entity.dart';
import '../../widgets/gradients.dart';
import '../../widgets/profile/avatar_gradient.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.chat,
    required this.onTap,
    required this.onDelete,
  }) : super(key: key);

  final void Function() onTap;
  final void Function() onDelete;

  final ChatEntity chat;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.2,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) => onDelete(),
            backgroundColor: UI.redColor,
            foregroundColor: UI.whiteColor,
            icon: CupertinoIcons.delete,
            label: "Delete",
          ),
        ],
      ),
      child: SizedBox(
        height: 72,
        child: ListTile(
          leading: AvatarGradient(
            size: 54,
            name: chat.name,
            imageUrl: chat.image,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  chat.name,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.headline1?.color,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                width: UI.padding,
              ),
              if (chat.lastMessage != null)
                Text(
                  chat.lastMessage!.createdAt.chatTime,
                  maxLines: 1,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1?.color,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
            ],
          ),
          subtitle: chat.lastMessage != null
              ? Padding(
                  padding: const Margin.top(5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          chat.lastMessage!.getPreview,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: TextStyle(
                            fontStyle: (chat.lastMessage!
                                        is MessageAudioEntity ||
                                    chat.lastMessage! is MessageVideoEntity ||
                                    chat.lastMessage! is MessageImageEntity)
                                ? FontStyle.italic
                                : null,
                            color: Theme.of(context).textTheme.bodyText1?.color,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Opacity(
                        opacity: chat.unreadCount == 0 ? 0 : 1,
                        child: Container(
                          height: 20,
                          padding: const Margin.horizontal(8),
                          decoration: const BoxDecoration(
                            color: UI.blueColor,
                            gradient: gradientBlueLinear,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              chat.unreadCount.toString(),
                              style: const TextStyle(
                                color: UI.whiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : null,
          onTap: onTap,
        ),
      ),
    );
  }
}
