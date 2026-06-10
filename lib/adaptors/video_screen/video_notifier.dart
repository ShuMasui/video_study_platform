// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';

// Project imports:
import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/usecases/providers.dart';

part 'video_notifier.g.dart';

@riverpod
Future<VideoMetaData?> videoMetaData(Ref ref, String videoTitle) async {
  return await ref.watch(fetchVideoDataProvider).loadVideoMetaData(videoTitle);
}

@riverpod
Future<VideoPlayerController> videoController(
  Ref ref,
  String videoTitle,
) async {
  try {
    final VideoMetaData? videoMetaData = await ref.watch(
      videoMetaDataProvider(videoTitle).future,
    );
    if (videoMetaData == null) {
      throw Exception('ビデオが見つかりませんでした');
    } else {
      final controller = VideoPlayerController.networkUrl(
        Uri.parse(videoMetaData.videoUrl),
      );
      await controller.initialize();

      ref.onDispose(() => controller.dispose());

      return controller;
    }
  } catch (e, st) {
    throw Exception('$e\n$st');
  }
}

@riverpod
Future<String> subTitle(Ref ref, String videoTitle) async {
  try {
    final VideoMetaData? videoMetaData = await ref.watch(
      videoMetaDataProvider(videoTitle).future,
    );
    if (videoMetaData == null) {
      throw Exception('ビデオが見つかりませんでした');
    } else {
      final controller = await ref.watch(
        videoControllerProvider(videoTitle).future,
      );

      final subTitles = videoMetaData.subtitles;

      return subTitles
          .lastWhere((e) => e.start <= controller.value.position)
          .text;
    }
  } catch (e) {
    throw Exception('$e');
  }
}
