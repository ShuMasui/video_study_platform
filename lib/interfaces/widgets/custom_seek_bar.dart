import 'dart:math' as math;

import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart' as platform_interface;

class CustomSeekBar extends VideoProgressIndicator {
  const CustomSeekBar(
    super.controller, {
    super.key,
    required super.allowScrubbing,
  });

  @override
  State<CustomSeekBar> createState() => _CustomSeekBarState();
}

class _CustomSeekBarState extends State<CustomSeekBar> {
  VideoPlayerController get controller => widget.controller;

  VideoProgressColors get colors => widget.colors;

  void _didUpdateControllerValue() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_didUpdateControllerValue);
  }

  @override
  void dispose() {
    controller.removeListener(_didUpdateControllerValue);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Widget progressIndicator;
    if (controller.value.isInitialized) {
      final int duration = controller.value.duration.inMilliseconds;
      final int position = controller.value.position.inMilliseconds;

      final SliderTheme slider = SliderTheme(
        data: SliderTheme.of(context).copyWith(
          // 丸（サム）の形状やサイズ、色をカスタマイズ
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
          activeTrackColor: Colors.red,
          inactiveTrackColor: Colors.grey,
          thumbColor: Colors.red,
          trackHeight: 4.0,
        ),
        child: Slider(
          value: position.clamp(0, duration).toDouble(),
          min: 0.0,
          max: duration > 0 ? duration.toDouble() : 1.0,
          onChanged: (double value) {
            controller.seekTo(Duration(milliseconds: value.toInt()));
          },
        ),
      );

      progressIndicator = slider;
    } else {
      progressIndicator = SizedBox.shrink();
    }

    return progressIndicator;
  }
}
