import 'dart:developer';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../domain/entities/chat_entity.dart';
import '../../core/const/ui.dart';
import '../../core/utils/margin.dart';
import '../../service_locator.dart' as locator;
import '../widgets/layout/scaffold_small_title.dart';
import 'bloc/chat_event.dart';
import 'bloc/chat_state.dart';
import 'bloc/chat_bloc.dart';
import 'widgets/chat_bar/chat_bar_input_panel.dart';
import 'widgets/chat_bar/chat_bar_record_panel.dart';
import 'widgets/video_record_overlay.dart';
import 'widgets/chat_title.dart';
import 'widgets/messages_list.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key, required this.chat}) : super(key: key);

  final ChatEntity chat;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

// TODO Separate logic
class _ChatPageState extends State<ChatPage> {
  final _textController = TextEditingController();

  CameraController? _videoRecordController;
  RecorderController? _audioRecordController;

  @override
  void dispose() {
    super.dispose();
    _videoRecordController?.dispose();
    _audioRecordController?.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator.getIt<ChatBloc>(param1: widget.chat),
        ),
      ],
      child: BlocConsumer<ChatBloc, ChatState>(
        listener: (context, state) {
          if (state.chatBarStatus == ChatBarStatus.video &&
              state.recordStatus == ChatRecordStatus.init &&
              _videoRecordController == null) {
            _initVideoRecord(context);
          }

          if (state.chatBarStatus == ChatBarStatus.audio &&
              state.recordStatus == ChatRecordStatus.init &&
              _audioRecordController == null) {
            _initAudioRecord(context);
          }
        },
        builder: (context, state) {
          return ScaffoldSmallTitle(
            title: const ChatTitle(),
            body: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        const MessagesList(),
                        if (state.chatBarStatus == ChatBarStatus.video &&
                            _videoRecordController != null)
                          VideoRecordOverlay(
                            cameraController: _videoRecordController!,
                          ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: UI.darkBcgMediumColor,
                      border: Border(
                        top: BorderSide(
                          width: 1,
                          color: UI.blueBorderColor,
                        ),
                      ),
                    ),
                    padding: const Margin.vertical(10),
                    child: SafeArea(
                      child: Container(
                        constraints: const BoxConstraints(
                          minHeight: 50,
                        ),
                        child: state.chatBarStatus == ChatBarStatus.audio
                            ? ChatBarRecordPanel(
                                onCancel: () => _onAudioRecordCancel(context),
                                onCaptured: () =>
                                    _onAudioRecordCaptured(context),
                                middleWidget: _audioRecordController != null
                                    ? AudioWaveforms(
                                        size: const Size(120, 30),
                                        enableGesture: true,
                                        waveStyle: const WaveStyle(
                                          waveColor: Colors.white,
                                          showDurationLabel: false,
                                          spacing: 8.0,
                                          waveThickness: 2.5,
                                          showBottom: true,
                                          extendWaveform: true,
                                          showMiddleLine: false,
                                          waveCap: StrokeCap.round,
                                        ),
                                        recorderController:
                                            _audioRecordController!,
                                      )
                                    : const SizedBox(),
                              )
                            : state.chatBarStatus == ChatBarStatus.video
                                ? ChatBarRecordPanel(
                                    onCancel: () =>
                                        _onVideoRecordCancel(context),
                                    onCaptured: () =>
                                        _onVideoRecordCaptured(context),
                                  )
                                : ChatBarInputPanel(
                                    textController: _textController,
                                    pickImage: () => _pickImage(context),
                                  ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// TODO: Separate logic

  Future<void> _initAudioRecord(BuildContext context) async {
    if (await _checkAudioPermissions()) {
      _audioRecordController = RecorderController();
      _audioRecordController?.iosEncoder = IosEncoder.kAudioFormatMPEGLayer1;
      _audioRecordController?.sampleRate = 44100;
      _audioRecordController?.bitRate = 48000;
      await Future.delayed(const Duration(milliseconds: 300));
      _audioRecordController?.record();
      if (!mounted) return;
      context.read<ChatBloc>().add(const ChatAudioRecordStarted());
    }
  }

  Future<bool> _checkAudioPermissions() async {
    return await Permission.microphone.request().isGranted;
  }

  void _onAudioRecordCancel(BuildContext context) {
    if (mounted) {
      context.read<ChatBloc>().add(const ChatAudioRecordCancelled());
    }
    _audioRecordController?.dispose();
    _audioRecordController = null;
  }

  Future<void> _onAudioRecordCaptured(BuildContext context) async {
    final path = await _audioRecordController?.stop();
    if (mounted && path != null) {
      context.read<ChatBloc>().add(ChatAudioMessageSent(path));
    }
    _audioRecordController?.dispose();
    _audioRecordController = null;
  }

  // Video

  Future<void> _initVideoRecord(BuildContext context) async {
    try {
      final List<CameraDescription> cameras = await availableCameras();
      final frontCamera = cameras.firstWhere(
          (element) => element.lensDirection == CameraLensDirection.front);
      _videoRecordController =
          CameraController(frontCamera, ResolutionPreset.max);
      _videoRecordController?.initialize().then((_) async {
        await _videoRecordController?.startVideoRecording();
        if (!mounted) return;
        context.read<ChatBloc>().add(const ChatVideoRecordStarted());
      });
    } catch (e) {
      log(e.toString());
    }
  }

  void _onVideoRecordCancel(BuildContext context) {
    if (mounted) {
      context.read<ChatBloc>().add(const ChatVideoRecordCancelled());
    }
    _videoRecordController?.dispose();
    _videoRecordController = null;
  }

  Future<void> _onVideoRecordCaptured(BuildContext context) async {
    final videoFile = await _videoRecordController?.stopVideoRecording();
    if (mounted && videoFile != null) {
      context.read<ChatBloc>().add(ChatVideoMessageSent(videoFile.path));
    }
    _videoRecordController?.dispose();
    _videoRecordController = null;
  }

  Future<void> _pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null && mounted) {
      context.read<ChatBloc>().add(ChatImageMessageSent(image.path));
    }
  }
}
