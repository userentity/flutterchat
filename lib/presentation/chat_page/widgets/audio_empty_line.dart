import 'package:flutter/material.dart';

class AudioEmptyLine extends StatelessWidget {
  const AudioEmptyLine({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: AudioEmptyPainter(),
    );
  }
}

class AudioEmptyPainter extends CustomPainter {
  final wavePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2
    ..strokeCap = StrokeCap.round
    ..color = Colors.white;

  @override
  void paint(Canvas canvas, Size size) {
    for (double x = 0; x < 100; x++) {
      if (x * 3 > size.width) {
        break;
      }
      canvas.drawLine(
        Offset(x * 3, 0),
        Offset(x * 3, 1),
        wavePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
