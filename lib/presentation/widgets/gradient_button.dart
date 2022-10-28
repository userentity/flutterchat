import 'package:flutter/material.dart';
import 'gradients.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.gradient = gradientBlueLinear,
    this.background,
    this.borderColor,
    this.color,
  }) : super(key: key);

  final void Function()? onPressed;

  final String text;

  final Color? color;

  final Gradient? gradient;

  final Color? background;

  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: background ?? Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
          ),
        ),
      ),
    );
  }
}
