import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/utils/margin.dart';
import '../../core/services/toast_service.dart';
import '../../service_locator.dart' as locator;
import '../chat_list_page/bloc/chat_list_bloc.dart';
import '../chat_list_page/chat_list_page.dart';
import '../chat_list_page/widgets/chat_list_app_bar.dart';
import '../profile_page/widgets/profile_app_bar.dart';
import '../profile_page/bloc/profile_bloc.dart';
import '../profile_page/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pages = [
    const ChatListPage(),
    const ProfilePage(),
  ];

  final List<PreferredSizeWidget> _appBars = [
    const ChatListAppBar(),
    const ProfileAppBar(),
  ];

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    ToastService.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator.getIt<ProfileBloc>()),
        BlocProvider(create: (context) => locator.getIt<ChatListBloc>()),
      ],
      child: Scaffold(
        appBar: _appBars[_selectedIndex],
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Padding(
                padding: Margin.bottom(5),
                child: Icon(
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              label: AppLocalizations.of(context)!.chats,
            ),
            BottomNavigationBarItem(
              icon: const Padding(
                padding: Margin.bottom(5),
                child: Icon(
                  CupertinoIcons.profile_circled,
                ),
              ),
              label: AppLocalizations.of(context)!.profile,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
