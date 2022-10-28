import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/chat_router/chat_router.gr.dart';
import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';
import '../../service_locator.dart' as locator;
import '../widgets/loading_indicator.dart';
import 'bloc/onboarding_bloc.dart';
import 'bloc/onboarding_state.dart';
import 'widgets/onboarding_auth_buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.getIt<OnboardingBloc>(),
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingUserAuth) {
            context.router.replaceAll([const MainRoute()]);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const Margin.horizontal(UI.padding),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  // fit: StackFit.expand,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(
                            flex: 1,
                          ),
                          AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              ColorizeAnimatedText(
                                'FLUTTER',
                                speed: const Duration(milliseconds: 600),
                                textAlign: TextAlign.center,
                                textStyle: const TextStyle(
                                  fontSize: 48.0,
                                  // fontFamily: 'Horizon',
                                  fontWeight: FontWeight.w900,
                                ),
                                colors: UI.blueColors,
                              ),
                            ],
                            isRepeatingAnimation: true,
                          ),
                          AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              ColorizeAnimatedText(
                                'CHAT APP',
                                speed: const Duration(milliseconds: 600),
                                textAlign: TextAlign.center,
                                textStyle: const TextStyle(
                                  color: UI.blueColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w300,
                                ),
                                colors: UI.blueColors,
                              ),
                            ],
                            isRepeatingAnimation: true,
                          ),
                          const SizedBox(
                            height: UI.padding * 2,
                          ),
                          Padding(
                            padding: const Margin.horizontal(30),
                            child: Text(
                              AppLocalizations.of(context)!.flutterInto,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    if (state is OnboardingUserNotAuth)
                      OnboardingAuthButtons(
                        onLoginTap: () => openLoginPage(context),
                        onRegisterTap: () => openRegistrationPage(context),
                      ),
                    if (state is OnboardingLoading)
                      Container(
                        margin: const Margin.bottom(UI.padding * 6),
                        child: const LoadingIndicator(),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void openLoginPage(BuildContext context) {
    AutoRouter.of(context).pushNamed("login");
  }

  void openRegistrationPage(BuildContext context) {
    AutoRouter.of(context).pushNamed("registration");
  }
}
