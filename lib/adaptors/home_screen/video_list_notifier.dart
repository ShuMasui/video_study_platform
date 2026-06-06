// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/usecases/providers.dart';

part 'video_list_notifier.g.dart';

@riverpod
class VideoListNotifier extends _$VideoListNotifier {
  @override
  Future<List<VideoMetaData>> build() async {
    return ref.watch(fetchVideoListProvider).loadAllVideoMetaDataList();
  }
}
