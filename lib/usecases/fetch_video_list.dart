import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/domains/repositories/handle_storage.dart';

class FetchVideoList {
  final HandleStorage handleStorage;

  FetchVideoList(this.handleStorage);

  Future<List<VideoMetaData>> loadAllVideoMetaDataList() async {
    final json = await handleStorage.load('video_meta_data');
    if (json == null) {
      return [];
    }
    final List<dynamic> list = json['video_meta_data'];
    return list.map((e) => VideoMetaData.fromJson(e)).toList();
  }
}
