import 'package:flutter/material.dart';

class LinearLoadingIndicator extends StatelessWidget {
  const LinearLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator(
      minHeight: 2,
    );
  }
}
