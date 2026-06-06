// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoMetaData _$VideoMetaDataFromJson(Map<String, dynamic> json) =>
    _VideoMetaData(
      title: json['title'] as String,
      videoUrl: json['videoUrl'] as String,
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      subtitles: (json['subtitles'] as List<dynamic>)
          .map((e) => SubtitleData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideoMetaDataToJson(_VideoMetaData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'videoUrl': instance.videoUrl,
      'duration': instance.duration.inMicroseconds,
      'subtitles': instance.subtitles,
    };
