import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/chat_router/chat_router.gr.dart';
import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';
import '../../service_locator.dart' as locator;
import '../widgets/separator.dart';
import '../widgets/loading_indicator.dart';
import '../widgets/search_input.dart';
import 'bloc/new_chat_state.dart';
import 'bloc/new_chat_bloc.dart';
import 'bloc/new_chat_event.dart';
import 'widgets/user_tile.dart';

class NewChatPage extends StatefulWidget {
  const NewChatPage({Key? key}) : super(key: key);

  @override
  State<NewChatPage> createState() => _NewChatPageState();
}

class _NewChatPageState extends State<NewChatPage> {
  final _searchTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.getIt<NewChatBloc>(),
      child: BlocConsumer<NewChatBloc, NewChatState>(
        listener: (context, state) {
          if (state is NewChatDone) {
            context.router.pop();
            context.router.push(ChatRoute(chat: state.chat));
          }
        },
        buildWhen: (context, state) {
          if (state is NewChatDone) {
            return false;
          }
          return true;
        },
        builder: (context, state) {
          return Column(
            children: [
              SearchInput(
                label: AppLocalizations.of(context)!.searchEmailField,
                textEditingController: _searchTextController,
                onChanged: (text) => context.read<NewChatBloc>().add(
                      NewChatFetched(search: text),
                    ),
              ),
              if (state is NewChatLoadSuccess)
                Expanded(
                  child: ListView.separated(
                    itemCount: state.users.length,
                    padding: const Margin.bottom(UI.padding),
                    itemBuilder: (context, index) {
                      return UserTile(user: state.users[index]);
                    },
                    separatorBuilder: (context, index) => const Separator(),
                  ),
                ),
              if (state is NewChatLoading)
                const Expanded(child: LoadingIndicator()),
            ],
          );
        },
      ),
    );
  }
}
