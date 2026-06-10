// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
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

  bool _isOccuedError = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    ref.listen(videoControllerProvider(widget.videoTitle), (_, n) {
      if (n.hasError) {
        if (context.mounted) {
          if (_isOccuedError) {
            return;
          }
          _isOccuedError = true;
          showDialog(
            barrierDismissible: false,
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

    final isPortrait =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF0F111E), // 深みのあるプレミアムなダークスペースカラー
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => HomeScreenRouteData().go(context),
        ),
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
            data: (controller) {
              if (isPortrait) {
                return Column(
                  children: [
                    // プレイヤー部分はアスペクト比を維持して上に配置
                    VideoPlayerView(controller: controller),
                    // コントロールパネルを下の残りスペースに配置
                    Expanded(
                      child: VideoControlPanel(
                        controller: controller,
                        videoTitle: widget.videoTitle,
                        isPortrait: true,
                      ),
                    ),
                  ],
                );
              } else {
                return Row(
                  children: [
                    // 左半分：動画プレイヤーとシークバー (分割Widget)
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [VideoPlayerView(controller: controller)],
                      ),
                    ),
                    // 右半分：コントロールパネルと字幕 (分割Widget)
                    Expanded(
                      flex: 2,
                      child: VideoControlPanel(
                        controller: controller,
                        videoTitle: widget.videoTitle,
                        isPortrait: false,
                      ),
                    ),
                  ],
                );
              }
            },
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
