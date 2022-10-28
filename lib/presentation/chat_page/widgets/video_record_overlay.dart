import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/const/ui.dart';
import '../../../core/utils/margin.dart';
import '../../widgets/loading_indicator.dart';
import '../bloc/chat_bloc.dart';
import '../bloc/chat_state.dart';

// TODO Separate logic to Service
class VideoRecordOverlay extends StatelessWidget {
  const VideoRecordOverlay({Key? key, required this.cameraController})
      : super(key: key);

  final CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.transparent,
            padding: const Margin.all(UI.padding),
            child: Align(
              alignment: Alignment.center,
              child: state.recordStatus == ChatRecordStatus.recording
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(UI.borderRadius),
                      child: CameraPreview(cameraController),
                    )
                  : const LoadingIndicator(),
            ),
          ),
        );
      },
    );
  }
}
