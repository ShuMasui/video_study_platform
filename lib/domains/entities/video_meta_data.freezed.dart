// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoMetaData {

 String get title; String get videoUrl; Duration get duration; List<SubtitleData> get subtitles;
/// Create a copy of VideoMetaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoMetaDataCopyWith<VideoMetaData> get copyWith => _$VideoMetaDataCopyWithImpl<VideoMetaData>(this as VideoMetaData, _$identity);

  /// Serializes this VideoMetaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoMetaData&&(identical(other.title, title) || other.title == title)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.subtitles, subtitles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,videoUrl,duration,const DeepCollectionEquality().hash(subtitles));

@override
String toString() {
  return 'VideoMetaData(title: $title, videoUrl: $videoUrl, duration: $duration, subtitles: $subtitles)';
}


}

/// @nodoc
abstract mixin class $VideoMetaDataCopyWith<$Res>  {
  factory $VideoMetaDataCopyWith(VideoMetaData value, $Res Function(VideoMetaData) _then) = _$VideoMetaDataCopyWithImpl;
@useResult
$Res call({
 String title, String videoUrl, Duration duration, List<SubtitleData> subtitles
});




}
/// @nodoc
class _$VideoMetaDataCopyWithImpl<$Res>
    implements $VideoMetaDataCopyWith<$Res> {
  _$VideoMetaDataCopyWithImpl(this._self, this._then);

  final VideoMetaData _self;
  final $Res Function(VideoMetaData) _then;

/// Create a copy of VideoMetaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? videoUrl = null,Object? duration = null,Object? subtitles = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,subtitles: null == subtitles ? _self.subtitles : subtitles // ignore: cast_nullable_to_non_nullable
as List<SubtitleData>,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoMetaData].
extension VideoMetaDataPatterns on VideoMetaData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoMetaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoMetaData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoMetaData value)  $default,){
final _that = this;
switch (_that) {
case _VideoMetaData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoMetaData value)?  $default,){
final _that = this;
switch (_that) {
case _VideoMetaData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String videoUrl,  Duration duration,  List<SubtitleData> subtitles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoMetaData() when $default != null:
return $default(_that.title,_that.videoUrl,_that.duration,_that.subtitles);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String videoUrl,  Duration duration,  List<SubtitleData> subtitles)  $default,) {final _that = this;
switch (_that) {
case _VideoMetaData():
return $default(_that.title,_that.videoUrl,_that.duration,_that.subtitles);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String videoUrl,  Duration duration,  List<SubtitleData> subtitles)?  $default,) {final _that = this;
switch (_that) {
case _VideoMetaData() when $default != null:
return $default(_that.title,_that.videoUrl,_that.duration,_that.subtitles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoMetaData implements VideoMetaData {
  const _VideoMetaData({required this.title, required this.videoUrl, required this.duration, required final  List<SubtitleData> subtitles}): _subtitles = subtitles;
  factory _VideoMetaData.fromJson(Map<String, dynamic> json) => _$VideoMetaDataFromJson(json);

@override final  String title;
@override final  String videoUrl;
@override final  Duration duration;
 final  List<SubtitleData> _subtitles;
@override List<SubtitleData> get subtitles {
  if (_subtitles is EqualUnmodifiableListView) return _subtitles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subtitles);
}


/// Create a copy of VideoMetaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoMetaDataCopyWith<_VideoMetaData> get copyWith => __$VideoMetaDataCopyWithImpl<_VideoMetaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoMetaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoMetaData&&(identical(other.title, title) || other.title == title)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other._subtitles, _subtitles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,videoUrl,duration,const DeepCollectionEquality().hash(_subtitles));

@override
String toString() {
  return 'VideoMetaData(title: $title, videoUrl: $videoUrl, duration: $duration, subtitles: $subtitles)';
}


}

/// @nodoc
abstract mixin class _$VideoMetaDataCopyWith<$Res> implements $VideoMetaDataCopyWith<$Res> {
  factory _$VideoMetaDataCopyWith(_VideoMetaData value, $Res Function(_VideoMetaData) _then) = __$VideoMetaDataCopyWithImpl;
@override @useResult
$Res call({
 String title, String videoUrl, Duration duration, List<SubtitleData> subtitles
});




}
/// @nodoc
class __$VideoMetaDataCopyWithImpl<$Res>
    implements _$VideoMetaDataCopyWith<$Res> {
  __$VideoMetaDataCopyWithImpl(this._self, this._then);

  final _VideoMetaData _self;
  final $Res Function(_VideoMetaData) _then;

/// Create a copy of VideoMetaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? videoUrl = null,Object? duration = null,Object? subtitles = null,}) {
  return _then(_VideoMetaData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,subtitles: null == subtitles ? _self._subtitles : subtitles // ignore: cast_nullable_to_non_nullable
as List<SubtitleData>,
  ));
}


}

// dart format on
