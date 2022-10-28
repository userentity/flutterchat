import 'package:flutter/material.dart';

class ScaffoldScrollBottom extends StatelessWidget {
  const ScaffoldScrollBottom({Key? key, this.appBar, required this.body})
      : super(key: key);

  final PreferredSizeWidget? appBar;

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        reverse: true,
        child: body,
      ),
    );
  }
}
