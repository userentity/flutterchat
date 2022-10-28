import 'package:flutter/material.dart';

import 'gradients.dart';

class ShaderGradient extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  const ShaderGradient({
    Key? key,
    required this.child,
    this.gradient = gradientBlueLinear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: child,
    );
  }
}
