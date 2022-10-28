import 'package:flutter/material.dart';

import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';

enum InfoType {
  success,
  error,
  info,
}

extension InfoColor on InfoType {
  Color get color {
    switch (this) {
      case InfoType.success:
        return UI.whiteColor;
      case InfoType.error:
        return UI.whiteColor;
      case InfoType.info:
        return UI.whiteColor;
    }
  }

  Color get background {
    switch (this) {
      case InfoType.success:
        return UI.greenColor;
      case InfoType.error:
        return UI.redColor;
      case InfoType.info:
        return UI.blueColor;
    }
  }

  IconData get icon {
    switch (this) {
      case InfoType.success:
        return Icons.check_circle_outline;
      case InfoType.error:
        return Icons.warning_amber_outlined;
      case InfoType.info:
        return Icons.info_outline;
    }
  }
}

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.text,
    required this.type,
  }) : super(key: key);

  final String text;

  final InfoType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Margin.symmetric(
          horizontal: UI.padding * 1.5, vertical: UI.padding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: type.background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            type.icon,
            color: type.color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: type.color,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
