import 'package:flutter/material.dart';

class ScaffoldSmallTitle extends StatelessWidget {
  const ScaffoldSmallTitle({
    Key? key,
    required this.body,
    this.title,
    this.actions,
    this.bottomNavigationBar,
    this.leading,
    this.leadingWidth,
  }) : super(key: key);

  final Widget? title;

  final Widget? leading;

  final List<Widget>? actions;

  final Widget body;

  final Widget? bottomNavigationBar;

  final double? leadingWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leadingWidth: leadingWidth,
        titleSpacing: actions != null ? -10 : 0,
        title: title,
        leading: leading,
        actions: actions,
        centerTitle: true,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
