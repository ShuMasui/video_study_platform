import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_study_platform/adaptors/video_screen/video_notifier.dart';
import 'package:video_study_platform/interfaces/router/app_router.dart';
import 'package:video_study_platform/interfaces/widgets/video_control_panel.dart';
import 'package:video_study_platform/interfaces/widgets/video_player_view.dart';

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
    final theme = Theme.of(context);

    ref.listen(videoControllerProvider(widget.videoTitle), (_, n) {
      if (n.hasError) {
        if (context.mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: const Row(
                children: [
                  Icon(Icons.error_outline, color: Colors.red),
                  SizedBox(width: 8),
                  Text('動画再生エラー'),
                ],
              ),
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
      backgroundColor: const Color(0xFF0F111E), // 深みのあるプレミアムなダークスペースカラー
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.videoTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: controllerState.when(
            data: (controller) => Row(
              children: [
                // 左半分：動画プレイヤーとシークバー (分割Widget)
                Expanded(
                  flex: 3,
                  child: VideoPlayerView(controller: controller),
                ),
                // 右半分：コントロールパネルと字幕 (分割Widget)
                Expanded(
                  flex: 2,
                  child: VideoControlPanel(
                    controller: controller,
                    videoTitle: widget.videoTitle,
                  ),
                ),
              ],
            ),
            error: (e, st) => CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                theme.colorScheme.secondary,
              ),
            ),
            loading: () => CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                theme.colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
