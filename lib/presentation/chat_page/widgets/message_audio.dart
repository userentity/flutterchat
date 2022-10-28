import 'dart:async';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';

import '../../../core/services/cache_service.dart';
import '../../../core/utils/duration.dart';
import '../../../core/const/ui.dart';
import '../../../core/utils/custom_player_controller.dart';
import '../../../core/utils/margin.dart';
import '../../../core/utils/date.dart';
import '../../../domain/entities/message_entity.dart';
import '../../../service_locator.dart' as locator;
import '../../widgets/loading_indicator.dart';

import 'audio_empty_line.dart';
import 'created_time.dart';

class AudioMessage extends StatefulWidget {
  const AudioMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageAudioEntity message;

  @override
  State<AudioMessage> createState() => _AudioMessageState();
}

class _AudioMessageState extends State<AudioMessage> {
  final CustomPlayerController _playerController = CustomPlayerController();
  final _cacheService = locator.getIt<CacheService>();

  StreamSubscription? _playerSubscription;
  StreamSubscription? _playerDurationSubscription;
  StreamSubscription? _cacheSubscription;

  bool _isPlaying = false;

  bool _isReady = false;
  bool _isCached = false;
  bool _isCacheInProgress = false;

  late Duration _duration;
  String _currentDurationString = "00:00";
  int _cacheProgress = 0;

  @override
  void initState() {
    super.initState();
    _prepare();
  }

  @override
  void dispose() {
    CustomPlayerController.removePlayer(_playerController);
    _cacheSubscription?.cancel();
    _playerSubscription?.cancel();
    _playerDurationSubscription?.cancel();
    _playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.message.isOwner
          ? Margin.left(MediaQuery.of(context).size.width * 0.2)
          : Margin.right(MediaQuery.of(context).size.width * 0.2),
      margin: const Margin.bottom(UI.padding),
      child: Container(
        padding: const Margin.only(
          left: UI.padding * 0.75,
          right: UI.padding * 0.75,
          top: UI.padding * 0.75,
          bottom: UI.padding / 2,
        ),
        decoration: BoxDecoration(
            color: widget.message.isOwner ? UI.blueColor : UI.darkBcgLightColor,
            borderRadius: BorderRadius.circular(
              UI.borderRadius,
            )),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: _buttonClick,
                  child: Container(
                    padding: const Margin.all(1.5),
                    alignment: Alignment.center,
                    width: 46,
                    height: 46,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: UI.whiteColor,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: UI.whiteColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.5,
                          color: widget.message.isOwner
                              ? UI.blueColor
                              : UI.darkBcgLightColor,
                        ),
                      ),
                      child: _makeButton(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (_isReady) {
                        return AudioFileWaveforms(
                          size: Size(constraints.maxWidth, 40.0),
                          playerController: _playerController,
                          density: 1,
                          playerWaveStyle: PlayerWaveStyle(
                            waveCap: StrokeCap.round,
                            scaleFactor: 0.25,
                            waveThickness: 2.0,
                            visualizerHeight: 40,
                            // seekLineThickness: 0,
                            liveWaveColor: UI.whiteColor,
                            fixedWaveColor: UI.whiteColor.withOpacity(0.7),
                          ),
                        );
                      } else {
                        return AudioEmptyLine(
                          size: Size(constraints.maxWidth, 3),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const Margin.left(56),
                  child: _isReady
                      ? Text(
                          _currentDurationString,
                          style: const TextStyle(
                            color: UI.whiteColor,
                            fontSize: 12,
                          ),
                        )
                      : null,
                ),
                CreatedTime(
                  timeString: widget.message.createdAt.messageTime,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _buttonClick() {
    if (_isReady) {
      _isPlaying ? _pause() : _play();
    } else if (!_isCached && !_isCacheInProgress) {
      _cache();
    }
  }

  Widget _makeButton() {
    if (_isReady) {
      return Icon(
        _isPlaying ? Icons.pause : Icons.play_arrow_rounded,
        color: widget.message.isOwner ? UI.blueColor : UI.darkBcgLightColor,
      );
    } else if (!_isCached && !_isCacheInProgress) {
      return Icon(
        Icons.get_app_outlined,
        color: widget.message.isOwner ? UI.blueColor : UI.darkBcgLightColor,
        size: 24,
      );
    } else if (!_isCached && _isCacheInProgress) {
      return Text(
        "$_cacheProgress%",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 13,
          color: widget.message.isOwner ? UI.blueColor : UI.darkBcgLightColor,
        ),
      );
    }
    return const LoadingIndicator();
  }

  Future<void> _prepare() async {
    // Get cache if exist
    final cachedPath = await _cacheService.get(widget.message.content);
    if (!mounted) return;
    if (cachedPath != null) {
      setState(() {
        _isCached = true;
      });
      _initPlayer(cachedPath);
    }
  }

  Future<void> _initPlayer(String path) async {
    CustomPlayerController.addNewPlayer(_playerController);
    await _playerController.preparePlayer(path);

    if (!mounted) return;

    final duration = Duration(
        milliseconds: await _playerController.getDuration(DurationType.max));
    if (!mounted) return;
    setState(() {
      _isReady = true;
      _duration = duration;
      _currentDurationString = duration.getStringDuration;
    });

    _playerSubscription =
        _playerController.onPlayerStateChanged.listen((state) {
      if (!mounted) return;
      if (state == PlayerState.playing) {
        setState(() {
          _isPlaying = true;
        });
      }
      if (state == PlayerState.paused) {
        setState(() {
          _isPlaying = false;
        });
      }
    });

    _playerDurationSubscription =
        _playerController.onCurrentDurationChanged.listen((duration) {
      if (!mounted) return;
      setState(() {
        _currentDurationString =
            (_duration - Duration(milliseconds: duration)).getStringDuration;
      });
    });
  }

  void _play() async {
    await CustomPlayerController.pauseAllPlayers();
    _playerController.startPlayer(finishMode: FinishMode.loop);
  }

  void _pause() async {
    _playerController.pausePlayer();
  }

  void _cache() async {
    setState(() {
      _isCacheInProgress = true;
    });

    _cacheSubscription =
        _cacheService.cache(widget.message.content).listen((event) {
      if (!mounted) return;
      if (event is CacheDownload) {
        setState(() {
          _cacheProgress = event.progress;
        });
      }

      if (event is CacheFinish) {
        _initPlayer(event.path);
        setState(() {
          _isCacheInProgress = false;
          _isCached = true;
        });
        _cacheSubscription?.cancel();
        _prepare();
      }
    });
  }
}
