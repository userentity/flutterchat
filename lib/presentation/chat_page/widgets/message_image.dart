import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/message_entity.dart';
import '../../../core/utils/date.dart';
import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../../presentation/image_page/image_page.dart';
import '../../widgets/loading_indicator.dart';
import 'created_time.dart';

class MessageImage extends StatelessWidget {
  const MessageImage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageImageEntity message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: message.isOwner
          ? Margin.left(MediaQuery.of(context).size.width * 0.2)
          : Margin.right(MediaQuery.of(context).size.width * 0.2),
      margin: const Margin.bottom(UI.padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(UI.borderRadius),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: ExtendedImage.network(
                message.content,
                fit: BoxFit.cover,
                cache: true,
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.loading:
                      return const LoadingIndicator();
                    case LoadState.completed:
                      return InkWell(
                        onTap: () =>
                            _openImagePage(context, state.imageProvider),
                        child: Image(
                          image: state.imageProvider,
                          fit: BoxFit.cover,
                        ),
                      );
                    case LoadState.failed:
                      return const Icon(
                        Icons.warning_amber_outlined,
                        color: UI.whiteColor,
                      );
                  }
                },
              ),
            ),
            Padding(
              padding: const Margin.only(bottom: 6, right: 12),
              child: CreatedTime(timeString: message.createdAt.messageTime),
            ),
          ],
        ),
      ),
    );
  }

  void _openImagePage(
      BuildContext context, ImageProvider<Object> imageProvider) {
    showDialog(
      context: context,
      builder: (_) => ImagePage(provider: imageProvider),
    );
  }
}
