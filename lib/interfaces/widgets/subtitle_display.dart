import 'package:flutter/material.dart';
import 'package:video_study_platform/adaptors/video_screen/video_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

class SubTitleDisplay extends ConsumerStatefulWidget {
  final String videoTitle;
  final VideoPlayerController controller;

  const SubTitleDisplay({
    super.key,
    required this.controller,
    required this.videoTitle,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SubTitleDisplayState();
}

class _SubTitleDisplayState extends ConsumerState<SubTitleDisplay> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() {
      ref.invalidate(subTitleProvider(widget.videoTitle));
    });
  }

  @override
  Widget build(BuildContext context) {
    final subTitleState = ref.watch(subTitleProvider(widget.videoTitle));
    final String? text = subTitleState.whenOrNull(data: (d) => d);
    final bool hasSubtitle = text != null && text.isNotEmpty;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: hasSubtitle
            ? Colors.black.withValues(alpha: 0.65)
            : Colors.black.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: hasSubtitle
              ? Colors.white.withValues(alpha: 0.15)
              : Colors.white.withValues(alpha: 0.05),
          width: 1.2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: hasSubtitle ? 0.3 : 0.1),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Center(
        widthFactor: 1.0,
        heightFactor: 1.0,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            color: hasSubtitle ? Colors.white : Colors.white38,
            fontSize: hasSubtitle ? 20 : 16,
            fontWeight: hasSubtitle ? FontWeight.w600 : FontWeight.normal,
            height: 1.4,
            letterSpacing: 0.5,
          ),
          child: Text(
            text ?? '字幕なし',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
