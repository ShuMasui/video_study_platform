import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';
import 'package:video_study_platform/adaptors/video_screen/video_notifier.dart';
import 'package:video_study_platform/interfaces/router/app_router.dart';
import 'package:video_study_platform/interfaces/widgets/custom_seek_bar.dart';
import 'package:video_study_platform/interfaces/widgets/subtitle_display.dart';

class VideoScreen extends ConsumerStatefulWidget {
  const VideoScreen({super.key, required this.videoTitle});

  final String videoTitle;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoScreenState();
}

class _VideoScreenState extends ConsumerState<VideoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(videoControllerProvider(widget.videoTitle), (_, n) {
      if (n.hasError) {
        if (context.mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('動画再生のエラーが発生しました'),
              content: Text(n.error.toString()),
              actions: [
                ElevatedButton(
                  onPressed: () => HomeScreenRouteData().go(context),
                  child: const Text('戻る'),
                ),
              ],
            ),
          );
        }
      }
    });

    final controllerState = ref.watch(
      videoControllerProvider(widget.videoTitle),
    );

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.videoTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: controllerState.when(
          data: (controller) => Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                    ),
                    CustomSeekBar(controller, allowScrubbing: true),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubTitleDisplay(
                      controller: controller,
                      videoTitle: widget.videoTitle,
                    ),
                    IconButton(
                      onPressed: () => controller.play(),
                      icon: Icon(Icons.play_arrow),
                    ),
                    IconButton(
                      onPressed: () => controller.pause(),
                      icon: Icon(Icons.pause),
                    ),
                  ],
                ),
              ),
            ],
          ),
          error: (e, st) => CircularProgressIndicator(),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
