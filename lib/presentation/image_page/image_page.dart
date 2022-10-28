import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key, required this.provider}) : super(key: key);

  final ImageProvider provider;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: ExtendedImage(
        image: provider,
        fit: BoxFit.contain,
        mode: ExtendedImageMode.gesture,
      ),
    );
  }
}
