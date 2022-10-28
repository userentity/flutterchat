import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/utils/date.dart';
import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../widgets/empty_message.dart';
import '../../widgets/linear_loading_indicator.dart';
import '../bloc/chat_event.dart';
import '../bloc/chat_bloc.dart';
import '../bloc/chat_state.dart';
import 'message_base.dart';

class MessagesList extends StatefulWidget {
  const MessagesList({
    Key? key,
  }) : super(key: key);

  @override
  State<MessagesList> createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  String? lastId;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Stack(
          children: [
            if (state.messages != null && state.messages!.isNotEmpty) ...[
              ListView.builder(
                reverse: true,
                padding: const Margin.all(UI.padding),
                itemCount: state.messages!.length,
                itemBuilder: (context, index) {
                  // Simple lazy scroll
                  // Start download new messages if less than 5 message left
                  if (index >= state.messages!.length - 5 &&
                      lastId != state.messages!.last.id) {
                    lastId = state.messages!.last.id;
                    context
                        .read<ChatBloc>()
                        .add(ChatMessagesFetched(lastId: lastId));
                  }

                  final message = state.messages![index];

                  return MessageBase(
                    message: message,
                    onView: () => _onView(message.id),
                    messageListHeaderTime:
                        !(state.messages!.asMap().containsKey(index + 1) &&
                                message.createdAt.isSameDate(
                                    state.messages![index + 1].createdAt))
                            ? message.createdAt
                            : null,
                  );
                },
              )
            ] else if (state.messages != null && state.messages!.isEmpty) ...[
              EmptyMessage(
                text: AppLocalizations.of(context)!.messagesEmpty,
              ),
            ],
            if (state.isLoading) const LinearLoadingIndicator(),
          ],
        );
      },
    );
  }

  void _onView(String messageId) {
    context.read<ChatBloc>().add(ChatMessageViewed(messageId));
  }
}
