// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:video_player/video_player.dart';

// Project imports:
import 'package:video_study_platform/interfaces/widgets/custom_seek_bar.dart';

class VideoPlayerView extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerView({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.12),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.6),
                  blurRadius: 24,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14.5),
              child: AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              ),
            ),
          ),
          const SizedBox(height: 20),
          CustomSeekBar(controller, allowScrubbing: true),
        ],
      ),
    );
  }
}
