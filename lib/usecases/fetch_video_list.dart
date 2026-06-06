import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/domains/repositories/handle_video_storage.dart';

class FetchVideoList {
  final HandleVideoStorage handleStorage;

  FetchVideoList(this.handleStorage);

  Future<List<VideoMetaData>> loadAllVideoMetaDataList() async {
    final json = await handleStorage.load();
    if (json == null) {
      return [];
    }
    final List<dynamic> list = json[handleStorage.getVideoDataKey];
    return list.map((e) => VideoMetaData.fromJson(e)).toList();
  }
}
