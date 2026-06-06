import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

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

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final int durationMs = controller.value.duration.inMilliseconds;
    final int positionMs = controller.value.position.inMilliseconds;

    final Duration duration = controller.value.duration;
    final Duration position = controller.value.position;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4.0,
              trackShape: const RoundedRectSliderTrackShape(),
              activeTrackColor: theme.colorScheme.secondary,
              inactiveTrackColor: Colors.white24,
              thumbColor: theme.colorScheme.secondary,
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 6.0,
              ),
              overlayColor: theme.colorScheme.secondary.withValues(alpha: 0.24),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 16.0),
            ),
            child: Slider(
              value: positionMs.clamp(0, durationMs).toDouble(),
              min: 0.0,
              max: durationMs > 0 ? durationMs.toDouble() : 1.0,
              onChanged: (double value) {
                controller.seekTo(Duration(milliseconds: value.toInt()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatDuration(position),
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  _formatDuration(duration),
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
