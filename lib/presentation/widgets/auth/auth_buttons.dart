import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({Key? key, required this.onGoogleTap}) : super(key: key);

  final VoidCallback onGoogleTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const Margin.bottom(UI.padding * 1.5),
      child: SignInButton(
        Buttons.GoogleDark,
        onPressed: onGoogleTap,
      ),
    );
  }
}
