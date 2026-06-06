import 'package:flutter/material.dart';
import 'package:video_study_platform/adaptors/video_screen/video_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';
import 'package:video_study_platform/domains/entities/subtitle_data.dart';

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
    final subTitle = ref.watch(subTitleProvider(widget.videoTitle));

    return Container(
      child: Text(
        subTitle.whenOrNull(data: (d) => d) ?? '字幕なし',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
