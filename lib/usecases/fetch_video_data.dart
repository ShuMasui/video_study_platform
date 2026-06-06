import 'package:video_study_platform/domains/repositories/handle_storage.dart';
import 'package:video_study_platform/domains/entities/video_meta_data.dart';

class FetchVideoData {
  final HandleStorage handleStorage;

  FetchVideoData(this.handleStorage);

  Future<VideoMetaData?> loadVideoMetaData(String videoTitle) async {
    final json = await handleStorage.load('video_meta_data');
    if (json == null) {
      return null;
    }

    final List<dynamic> list = json['video_meta_data'];

    final VideoMetaData? data = list
        .map((e) => VideoMetaData.fromJson(e))
        .firstOrNull;

    return data;
  }
}
