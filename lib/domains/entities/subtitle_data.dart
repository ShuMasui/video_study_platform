import 'package:freezed_annotation/freezed_annotation.dart';

part 'subtitle_data.freezed.dart';
part 'subtitle_data.g.dart';

@freezed
abstract class SubtitleData with _$SubtitleData {
  const factory SubtitleData({required Duration start, required String text}) =
      _SubtitleData;

  factory SubtitleData.fromJson(Map<String, Object?> json) =>
      _$SubtitleDataFromJson(json);
}
