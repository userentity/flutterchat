import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../new_chat_page/new_chat_page.dart';
import '../bloc/chat_list_event.dart';
import '../bloc/chat_list_bloc.dart';

class ChatListAppBar extends StatefulWidget with PreferredSizeWidget {
  const ChatListAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 56);

  @override
  State<ChatListAppBar> createState() => _ChatListAppBarState();
}

class _ChatListAppBarState extends State<ChatListAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(AppLocalizations.of(context)!.chats),
      actions: [
        IconButton(
          onPressed: () => _openNewChatPage(context),
          icon: const Icon(CupertinoIcons.add),
        ),
      ],
    );
  }

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
