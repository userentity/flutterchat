import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/linear_loading_indicator.dart';
import 'bloc/chat_list_bloc.dart';
import 'bloc/chat_list_state.dart';
import 'widgets/chat_list.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatListBloc, ChatListState>(
      builder: (context, state) {
        return Stack(
          children: [
            const ChatList(),
            if (state is ChatListLoading) const LinearLoadingIndicator(),
          ],
        );
      },
    );
  }
}
