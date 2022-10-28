import 'package:auto_route/auto_route.dart';

import '../../presentation/registration_page/registration_page.dart';
import '../../presentation/chat_page/chat_page.dart';
import '../../presentation/main_page/main_page.dart';
import '../../presentation/login_page/login_page.dart';
import '../../presentation/profile_page/profile_page.dart';
import '../../presentation/onboarding_page/onboarding_page.dart';
import '../../presentation/profile_edit_page/profile_edit_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OnboardingPage, path: "onboarding", initial: true),
    CustomRoute(
      page: MainPage,
      path: "main",
      durationInMilliseconds: 0,
    ),
    AutoRoute(page: RegistrationPage, path: "registration"),
    AutoRoute(page: LoginPage, path: "login"),
    AutoRoute(page: ChatPage, path: "chat"),
    AutoRoute(page: ProfilePage, path: "profile"),
    CustomRoute(
      page: ProfileEditPage,
      path: "profile_edit",
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
)
class $ChatRouter {}
