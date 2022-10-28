import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/chat_router/chat_router.gr.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';
import '../bloc/profile_state.dart';

class ProfileAppBar extends StatefulWidget with PreferredSizeWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 56);

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return AppBar(
          title: Text(AppLocalizations.of(context)!.profile),
          actions: [
            TextButton(
              onPressed: () => _openProfileEditPage(context),
              child: Text(AppLocalizations.of(context)!.editBtn),
            ),
          ],
        );
      },
    );
  }

  _openProfileEditPage(BuildContext context) async {
    await context.router.push(const ProfileEditRoute());
    if (mounted) {
      context.read<ProfileBloc>().add(const ProfileFetched());
    }
  }
}
