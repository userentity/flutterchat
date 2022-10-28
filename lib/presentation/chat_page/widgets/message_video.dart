import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

import '../../../domain/entities/message_entity.dart';
import '../../../core/utils/date.dart';
import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../video_page/video_page.dart';
import '../../widgets/loading_indicator.dart';
import 'created_time.dart';

class VideoMessage extends StatelessWidget {
  const VideoMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageVideoEntity message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: message.isOwner
          ? Margin.left(MediaQuery.of(context).size.width * 0.2)
          : Margin.right(MediaQuery.of(context).size.width * 0.2),
      margin: const Margin.bottom(UI.padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(UI.borderRadius),
        child: GestureDetector(
          onTap: () => _openVideoPage(context, message.content),
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ExtendedImage.network(
                  message.thumbnailUrl,
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
                        return const Icon(
                          Icons.warning_amber_outlined,
                          color: UI.whiteColor,
                        );
                    }
                  },
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 30,
                    height: 30,
                    margin: const Margin.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: UI.whiteColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const Margin.only(bottom: 6, right: 12),
                    child:
                        CreatedTime(timeString: message.createdAt.messageTime),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openVideoPage(BuildContext context, String path) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => VideoPage(path: path),
    );
    // context.router.push(VideoRoute(path: path));
  }
}
