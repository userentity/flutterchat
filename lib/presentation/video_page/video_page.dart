import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/margin.dart';
import '../widgets/loading_indicator.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();

    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.path,
      cacheConfiguration: BetterPlayerCacheConfiguration(
        useCache: true,
        key: widget.path,
      ),
    );

    _betterPlayerController = BetterPlayerController(
      const BetterPlayerConfiguration(
        autoPlay: true,
        looping: true,
        deviceOrientationsAfterFullScreen: [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
        fit: BoxFit.contain,
        autoDetectFullscreenAspectRatio: true,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          // enableProgressText: false,
          enableSkips: false,
          enableQualities: false,
          enablePip: false,
          enableSubtitles: false,
          enableOverflowMenu: false,
          playIcon: Icons.play_arrow_rounded,
          loadingWidget: LoadingIndicator(),
        ),
      ),
      betterPlayerDataSource: betterPlayerDataSource,
    );
  }

  @override
  void dispose() {
    _betterPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: Margin.zero,
      child: AspectRatio(
        aspectRatio: _betterPlayerController.getAspectRatio() ?? 16 / 9,
        child: BetterPlayer(
          controller: _betterPlayerController,
        ),
      ),
    );
  }
}
