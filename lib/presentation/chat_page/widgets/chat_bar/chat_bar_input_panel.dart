import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/const/ui.dart';
import '../../../../core/utils/margin.dart';
import 'chat_bar_record_switcher.dart';

class ChatBarInputPanel extends StatelessWidget {
  const ChatBarInputPanel(
      {Key? key, required this.textController, required this.pickImage})
      : super(key: key);

  final TextEditingController textController;

  final void Function() pickImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: UI.padding / 2,
        ),
        IconButton(onPressed: pickImage, icon: const Icon(Icons.image_search)),
        const SizedBox(
          width: 3,
        ),
        Expanded(
          child: TextField(
            maxLines: 12,
            minLines: 1,
            controller: textController,
            decoration: InputDecoration(
              contentPadding:
                  const Margin.symmetric(horizontal: 12, vertical: 6),
              hintText: AppLocalizations.of(context)!.message,
              fillColor: Theme.of(context).scaffoldBackgroundColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: UI.darkBcgMediumColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: UI.blueColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: UI.blueBorderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: UI.redColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: UI.darkBcgMediumColor,
                ),
              ),
            ),
          ),
        ),
        ChatBarRecordSwitcher(
          textController: textController,
        ),
      ],
    );
  }
}
