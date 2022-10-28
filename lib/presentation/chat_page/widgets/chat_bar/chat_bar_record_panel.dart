import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/duration.dart';
import '../../../../core/const/ui.dart';
import '../../../../core/utils/margin.dart';
import '../../../widgets/loading_indicator.dart';
import '../../bloc/chat_bloc.dart';
import '../../bloc/chat_state.dart';

class ChatBarRecordPanel extends StatefulWidget {
  const ChatBarRecordPanel({
    Key? key,
    required this.onCancel,
    required this.onCaptured,
    this.middleWidget,
  }) : super(key: key);

  final void Function() onCancel;

  final void Function() onCaptured;

  final Widget? middleWidget;

  @override
  State<ChatBarRecordPanel> createState() => _ChatBarRecordPanelState();
}

class _ChatBarRecordPanelState extends State<ChatBarRecordPanel>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  String _duration = "00:00";

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        if (state.recordStatus == ChatRecordStatus.recording) {
          _animationController.repeat(reverse: true);
          _timer ??= Timer.periodic(const Duration(seconds: 1), (timer) {
            setState(() {
              _duration = Duration(seconds: timer.tick).getStringDuration;
            });
          });
        }
      },
      builder: (context, state) => Container(
        margin: const Margin.horizontal(12),
        padding: const Margin.horizontal(6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: UI.blueColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                CupertinoIcons.clear,
                color: UI.whiteColor,
              ),
              onPressed: () => _cancel(),
            ),
            if (widget.middleWidget != null &&
                state.recordStatus == ChatRecordStatus.recording) ...[
              widget.middleWidget!,
            ] else if (state.recordStatus != ChatRecordStatus.recording) ...[
              const Text(
                "Loading...",
                style: TextStyle(
                  color: UI.whiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
            Container(
              constraints: const BoxConstraints(
                minWidth: 40,
              ),
              height: 40,
              padding: const Margin.horizontal(8),
              decoration: BoxDecoration(
                color: UI.whiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: state.recordStatus == ChatRecordStatus.recording
                  ? GestureDetector(
                      onTap: () => _stop(),
                      child: Row(
                        children: [
                          if (state.recordStatus == ChatRecordStatus.recording)
                            FadeTransition(
                              opacity: _animationController,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: UI.redColor,
                                ),
                              ),
                            ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            _duration,
                            style: const TextStyle(
                              color: UI.darkBcgColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Icon(
                            Icons.send,
                          )
                        ],
                      ),
                    )
                  : const LoadingIndicator(),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _stop() async {
    _animationController.stop();
    _timer?.cancel();
    widget.onCaptured();
  }

  Future<void> _cancel() async {
    _animationController.stop();
    _timer?.cancel();
    widget.onCancel();
  }
}
