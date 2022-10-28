import 'package:flutter/material.dart';

import '../../core/const/ui.dart';

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: UI.blueBorderColor,
    );
  }
}
