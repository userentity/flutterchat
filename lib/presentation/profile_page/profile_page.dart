import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/chat_router/chat_router.gr.dart';
import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';
import '../debug_page/debug_page.dart';
import '../widgets/loading_indicator.dart';
import '../widgets/profile/avatar_gradient.dart';
import 'bloc/profile_bloc.dart';
import 'bloc/profile_event.dart';
import 'bloc/profile_state.dart';

// TODO loading
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileSignOut) {
          context.router.replaceAll([const OnboardingRoute()]);
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            if (state is ProfileSuccess)
              Padding(
                padding: const Margin.all(UI.padding),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AvatarGradient(
                        size: 150,
                        name: state.user.name,
                        imageUrl: state.user.imageUrl.isNotEmpty
                            ? state.user.imageUrl
                            : null,
                      ),
                      const SizedBox(
                        height: UI.padding,
                      ),
                      Text(
                        state.user.name,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        state.user.email,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: UI.padding,
                      ),
                      const Spacer(),
                      if (kDebugMode)
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DebugPage()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                CupertinoIcons.settings,
                                color: UI.redColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Debug Page",
                                style: TextStyle(
                                  color: UI.redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      TextButton(
                        onPressed: () => context
                            .read<ProfileBloc>()
                            .add(const ProfileSignOutPressed()),
                        child: Text(
                          AppLocalizations.of(context)!.signOutBtn,
                          style: const TextStyle(
                            color: UI.redColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (state is ProfileLoading)
              const Center(
                child: LoadingIndicator(),
              ),
          ],
        );
      },
    );
  }
}
