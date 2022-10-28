import 'package:flutter/material.dart';

import '../../../core/const/ui.dart';

class CreatedTime extends StatelessWidget {
  const CreatedTime({Key? key, required this.timeString}) : super(key: key);

  final String timeString;

  @override
  Widget build(BuildContext context) {
    return Text(
      timeString,
      textAlign: TextAlign.right,
      style: TextStyle(
        color: UI.whiteColor.withOpacity(0.6),
        fontSize: 12,
      ),
    );
  }
}
