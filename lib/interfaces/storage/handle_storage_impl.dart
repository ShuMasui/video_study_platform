import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_study_platform/domains/repositories/handle_storage.dart';
import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/domains/entities/subtitle_data.dart';

class HandleStorageImpl extends HandleStorage {
  HandleStorageImpl(this._prefs);

  final SharedPreferencesAsync _prefs;

  @override
  Future<Map<String, dynamic>?> load(String key) async {
    final jsonString = await _prefs.getString(key);
    if (jsonString == null) {
      return null;
    }

    final dynamic json = jsonDecode(jsonString);

    return Map<String, dynamic>.from({key: json});
  }

  @override
  Future<void> save(Map<String, dynamic> json) async {
    await _prefs.setString('video_meta_data', jsonEncode(json));
  }

  Future<void> init() async {
    final String key = 'video_meta_data';
    final VideoMetaData videoMetaData1 = VideoMetaData(
      title: 'This is the sample video.',
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      duration: Duration(seconds: 4),
      subtitles: [
        SubtitleData(
          start: Duration(seconds: 0),
          text: 'This is the sample video',
        ),
        SubtitleData(
          start: Duration(seconds: 1),
          text: 'このように字幕をリアルタイムに変更することができます',
        ),
        SubtitleData(start: Duration(seconds: 2), text: '蜂さんが飛んでいますね'),
        SubtitleData(start: Duration(seconds: 3), text: 'かわいらしいですね'),
      ],
    );

    final List<VideoMetaData> videoMetaDataList = [videoMetaData1];

    await _prefs.setString(key, jsonEncode(videoMetaDataList));
  }
}
