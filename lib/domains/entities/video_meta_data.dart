// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:video_study_platform/domains/entities/subtitle_data.dart';

part 'video_meta_data.freezed.dart';
part 'video_meta_data.g.dart';

@freezed
abstract class VideoMetaData with _$VideoMetaData {
  const factory VideoMetaData({
    required String title,
    required String videoUrl,
    required Duration duration,
    required List<SubtitleData> subtitles,
  }) = _VideoMetaData;

  factory VideoMetaData.fromJson(Map<String, Object?> json) =>
      _$VideoMetaDataFromJson(json);
}
