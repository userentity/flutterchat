import 'package:flutter/cupertino.dart';
import 'gradients.dart';
import 'shader_gradient.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShaderGradient(
      gradient: gradientBlueLinear,
      child: CupertinoActivityIndicator(),
    );
  }
}
