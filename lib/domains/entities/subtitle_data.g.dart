// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtitle_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubtitleData _$SubtitleDataFromJson(Map<String, dynamic> json) =>
    _SubtitleData(
      start: Duration(microseconds: (json['start'] as num).toInt()),
      text: json['text'] as String,
    );

Map<String, dynamic> _$SubtitleDataToJson(_SubtitleData instance) =>
    <String, dynamic>{
      'start': instance.start.inMicroseconds,
      'text': instance.text,
    };
