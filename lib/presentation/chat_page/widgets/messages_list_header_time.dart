import 'package:flutter/material.dart';

import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../widgets/gradients.dart';

class MessagesListHeaderTime extends StatelessWidget {
  const MessagesListHeaderTime({Key? key, required this.timeString})
      : super(key: key);

  final String timeString;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.9,
          child: Container(
            margin: const Margin.only(
              top: UI.padding * 0.25,
              bottom: UI.padding * 1.25,
            ),
            padding: const Margin.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UI.borderRadius),
              gradient: gradientBlueLinear,
            ),
            child: Text(
              timeString,
              style: const TextStyle(
                color: UI.whiteColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
