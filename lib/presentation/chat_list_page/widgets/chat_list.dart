import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/chat_router/chat_router.gr.dart';
import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../../domain/entities/chat_entity.dart';
import '../../new_chat_page/new_chat_page.dart';
import '../../widgets/empty_message.dart';
import '../../widgets/separator.dart';
import '../bloc/chat_list_bloc.dart';
import '../bloc/chat_list_event.dart';
import '../bloc/chat_list_state.dart';
import 'chat_tile.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatListBloc, ChatListState>(
      buildWhen: (_, state) => state is ChatListLoadSuccess,
      builder: (context, state) {
        if (state is ChatListLoadSuccess) {
          return state.chats.isNotEmpty
              ? ListView.separated(
                  itemCount: state.chats.length,
                  padding: const Margin.vertical(UI.padding),
                  itemBuilder: (context, index) {
                    return ChatTile(
                      chat: state.chats[index],
                      onTap: () => _onTap(state.chats[index]),
                      onDelete: () => _onDelete(state.chats[index].id),
                    );
                  },
                  separatorBuilder: (context, index) => const Separator(),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EmptyMessage(
                      text: AppLocalizations.of(context)!.chatsEmpty,
                    ),
                    TextButton(
                        onPressed: () => _openNewChatPage(context),
                        child: Text(AppLocalizations.of(context)!.newChat))
                  ],
                );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Future<void> _onTap(ChatEntity chat) async {
    await context.router.push(ChatRoute(chat: chat));
    if (mounted) {
      context.read<ChatListBloc>().add(const ChatListChatsFetched());
    }
  }

  Future<void> _onDelete(String chatId) async {
    context.read<ChatListBloc>().add(ChatListChatDeleted(chatId));
  }

  /// TODO DRY
  Future<void> _openNewChatPage(BuildContext context) async {
    await showBarModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder: (context) => const NewChatPage(),
    );
    if (mounted) {
      context.read<ChatListBloc>().add(const ChatListChatsFetched());
    }
  }
}
