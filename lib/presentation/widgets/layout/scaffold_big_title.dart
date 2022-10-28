import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldBigTitle extends StatelessWidget {
  const ScaffoldBigTitle({
    Key? key,
    required this.largeTitle,
    this.middle,
    this.leading,
    this.trailing,
    this.bottomNavigationBar,
    required this.body,
  }) : super(key: key);

  final Widget largeTitle;

  final Widget? middle;

  final Widget? leading;

  final Widget? trailing;

  final Widget? bottomNavigationBar;

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerScrolled) {
          return [
            CupertinoSliverNavigationBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              largeTitle: largeTitle,
              middle: middle,
              leading: leading,
              trailing: trailing,
            ),
          ];
        },
        body: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
