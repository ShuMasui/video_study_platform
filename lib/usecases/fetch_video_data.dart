// Project imports:
import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/domains/repositories/handle_cloud_storage.dart';
import 'package:video_study_platform/domains/repositories/handle_video_storage.dart';

class FetchVideoData {
  final HandleVideoStorage handleStorage;
  final HandleCloudStorage handleCloudStorage;

  FetchVideoData(this.handleStorage, this.handleCloudStorage);

  Future<VideoMetaData?> loadVideoMetaData(String videoTitle) async {
    final json = await handleStorage.load();
    if (json == null) {
      return null;
    }

    final List<dynamic> list = json[handleStorage.getVideoDataKey];

    final VideoMetaData? data = list
        .map((e) => VideoMetaData.fromJson(e))
        .where((e) => e.title == videoTitle)
        .firstOrNull;

    if (data != null) {
      final link = await handleCloudStorage.getDownloadLink(data.videoUrl);
      return data.copyWith(videoUrl: link);
    } else {
      return null;
    }
  }
}
