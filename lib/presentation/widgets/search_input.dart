import 'package:flutter/material.dart';

import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';
import 'text_input.dart';

class SearchInput extends StatelessWidget {
  const SearchInput(
      {Key? key,
      required this.label,
      required this.textEditingController,
      this.onChanged})
      : super(key: key);

  final String label;

  final ValueChanged<String>? onChanged;

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Margin.all(UI.padding),
      child: TextInput(
        label: label,
        marginBottom: 0,
        contentPadding:
            const Margin.only(left: 15, right: 15, top: 10, bottom: 12),
        onChanged: onChanged,
      ),
    );
  }
}
