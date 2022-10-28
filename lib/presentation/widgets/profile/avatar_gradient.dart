import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

import '../../../core/const/ui.dart';
import '../gradients.dart';
import '../loading_indicator.dart';

class AvatarGradient extends StatelessWidget {
  const AvatarGradient({
    Key? key,
    required this.size,
    required this.name,
    this.imageUrl,
  }) : super(key: key);

  final double size;

  final String name;

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: gradientBlueRadial,
      ),
      child: ClipOval(
        child: Container(
          width: size * 0.95,
          height: size * 0.95,
          decoration: const BoxDecoration(
            color: UI.darkBcgColor,
          ),
          child: imageUrl != null && imageUrl!.isNotEmpty
              ? ExtendedImage.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                  cache: true,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.loading:
                        return const LoadingIndicator();
                      case LoadState.completed:
                        return Image(
                          image: state.imageProvider,
                          fit: BoxFit.cover,
                        );
                      case LoadState.failed:
                        return Icon(
                          Icons.warning_amber_outlined,
                          color: UI.whiteColor,
                          size: size / 2.5,
                        );
                    }
                  },
                )
              : Center(
                  child: Text(
                    name[0],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: size / 2,
                      color: UI.whiteColor,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
