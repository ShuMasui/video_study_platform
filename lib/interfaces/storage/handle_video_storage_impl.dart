// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:video_study_platform/domains/entities/video_meta_data.dart';
import 'package:video_study_platform/domains/repositories/handle_video_storage.dart';
import 'package:video_study_platform/interfaces/storage/_init_video_data.dart'
    as init_data;

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
    final List<VideoMetaData> videoMetaDataList = init_data.videoMetaDataList;

    await _prefs.setString(VIDEO_DATA_KEY, jsonEncode(videoMetaDataList));
  }
}
