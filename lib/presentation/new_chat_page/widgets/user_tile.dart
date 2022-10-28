import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/user_entity.dart';
import '../../widgets/profile/avatar_gradient.dart';
import '../bloc/new_chat_bloc.dart';
import '../bloc/new_chat_event.dart';

class UserTile extends StatelessWidget {
  const UserTile({Key? key, required this.user}) : super(key: key);

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.read<NewChatBloc>().add(NewChatChose(user)),
      title: Text(
        user.name,
        softWrap: false,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
      subtitle: Text(
        user.email,
        softWrap: false,
        maxLines: 1,
        overflow: TextOverflow.fade,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      leading: AvatarGradient(
        size: 54,
        name: user.name,
        imageUrl: user.imageUrl,
      ),
    );
  }
}
