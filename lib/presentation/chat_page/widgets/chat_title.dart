import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/const/ui.dart';
import '../../../domain/entities/chat_entity.dart';
import '../../widgets/profile/avatar_gradient.dart';
import '../bloc/chat_bloc.dart';
import '../bloc/chat_state.dart';

class ChatTitle extends StatelessWidget {
  const ChatTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AvatarGradient(
              size: 36,
              name: state.chat.name,
              imageUrl: state.chat.image,
            ),
            const SizedBox(
              width: UI.padding,
            ),
            Expanded(
              child: Text(
                state.chat.name,
                maxLines: 1,
                overflow: TextOverflow.fade,
                softWrap: false,
              ),
            )
          ],
        );
      },
    );
  }
}
