import 'package:flutter/material.dart';

import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    Key? key,
    required this.label,
    this.error,
    this.controller,
    this.marginBottom = UI.padding * 1.25,
    this.onValidate,
    this.initialValue,
    this.autofocus = false,
    this.isPassword = false,
    this.contentPadding,
    this.onChanged,
  }) : super(key: key);

  final String label;

  final String? error;

  final double marginBottom;

  final TextEditingController? controller;

  final String? Function(String?)? onValidate;

  final ValueChanged<String>? onChanged;

  final String? initialValue;

  final bool isPassword;

  final bool autofocus;

  final EdgeInsets? contentPadding;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _contentVisible = true;

  @override
  void initState() {
    super.initState();
    if (widget.isPassword) _contentVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margin.bottom(widget.marginBottom),
      child: TextFormField(
        autofocus: widget.autofocus,
        controller: widget.controller,
        initialValue: widget.initialValue,
        decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          labelText: widget.label,
          errorText: widget.error,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    !_contentVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _contentVisible = !_contentVisible;
                    });
                  },
                )
              : null,
        ),
        validator: widget.onValidate,
        obscureText: !_contentVisible,
        enableSuggestions: widget.isPassword ? false : true,
        autocorrect: widget.isPassword ? false : true,
        onChanged: widget.onChanged,
      ),
    );
  }
}
