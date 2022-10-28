// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../domain/entities/chat_entity.dart' as _i10;
import '../../presentation/chat_page/chat_page.dart' as _i5;
import '../../presentation/login_page/login_page.dart' as _i4;
import '../../presentation/main_page/main_page.dart' as _i2;
import '../../presentation/onboarding_page/onboarding_page.dart' as _i1;
import '../../presentation/profile_edit_page/profile_edit_page.dart' as _i7;
import '../../presentation/profile_page/profile_page.dart' as _i6;
import '../../presentation/registration_page/registration_page.dart' as _i3;

class ChatRouter extends _i8.RootStackRouter {
  ChatRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
        durationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegistrationPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ChatPage(
          key: args.key,
          chat: args.chat,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    ProfileEditRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileEditPage(),
        transitionsBuilder: _i8.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'onboarding',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          OnboardingRoute.name,
          path: 'onboarding',
        ),
        _i8.RouteConfig(
          MainRoute.name,
          path: 'main',
        ),
        _i8.RouteConfig(
          RegistrationRoute.name,
          path: 'registration',
        ),
        _i8.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i8.RouteConfig(
          ChatRoute.name,
          path: 'chat',
        ),
        _i8.RouteConfig(
          ProfileRoute.name,
          path: 'profile',
        ),
        _i8.RouteConfig(
          ProfileEditRoute.name,
          path: 'profile_edit',
        ),
      ];
}

/// generated route for
/// [_i1.OnboardingPage]
class OnboardingRoute extends _i8.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: 'onboarding',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: 'main',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationRoute extends _i8.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(
          RegistrationRoute.name,
          path: 'registration',
        );

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.ChatPage]
class ChatRoute extends _i8.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i9.Key? key,
    required _i10.ChatEntity chat,
  }) : super(
          ChatRoute.name,
          path: 'chat',
          args: ChatRouteArgs(
            key: key,
            chat: chat,
          ),
        );

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.chat,
  });

  final _i9.Key? key;

  final _i10.ChatEntity chat;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, chat: $chat}';
  }
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.ProfileEditPage]
class ProfileEditRoute extends _i8.PageRouteInfo<void> {
  const ProfileEditRoute()
      : super(
          ProfileEditRoute.name,
          path: 'profile_edit',
        );

  static const String name = 'ProfileEditRoute';
}
