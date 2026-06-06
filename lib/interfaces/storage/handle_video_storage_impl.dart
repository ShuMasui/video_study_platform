// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:video_study_platform/domains/entities/subtitle_data.dart';
import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/domains/repositories/handle_video_storage.dart';

class HandleVideoStorageImpl extends HandleVideoStorage {
  HandleVideoStorageImpl(this._prefs);

  final SharedPreferencesAsync _prefs;

  static final String VIDEO_DATA_KEY = 'video_meta_data';

  @override
  String get getVideoDataKey => VIDEO_DATA_KEY;

  @override
  Future<Map<String, dynamic>?> load() async {
    final jsonString = await _prefs.getString(VIDEO_DATA_KEY);
    if (jsonString == null) {
      return null;
    }

    final dynamic json = jsonDecode(jsonString);

    return Map<String, dynamic>.from({VIDEO_DATA_KEY: json});
  }

  @override
  Future<void> save(Map<String, dynamic> json) async {
    await _prefs.setString(VIDEO_DATA_KEY, jsonEncode(json));
  }

  @override
  Future<void> init() async {
    final VideoMetaData videoMetaData1 = VideoMetaData(
      title: 'This is the sample video.',
      videoUrl: 'video/bee.mp4',
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

    await _prefs.setString(VIDEO_DATA_KEY, jsonEncode(videoMetaDataList));
  }
}
