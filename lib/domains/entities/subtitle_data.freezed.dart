// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtitle_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubtitleData {

 Duration get start; String get text;
/// Create a copy of SubtitleData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubtitleDataCopyWith<SubtitleData> get copyWith => _$SubtitleDataCopyWithImpl<SubtitleData>(this as SubtitleData, _$identity);

  /// Serializes this SubtitleData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubtitleData&&(identical(other.start, start) || other.start == start)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,text);

@override
String toString() {
  return 'SubtitleData(start: $start, text: $text)';
}


}

/// @nodoc
abstract mixin class $SubtitleDataCopyWith<$Res>  {
  factory $SubtitleDataCopyWith(SubtitleData value, $Res Function(SubtitleData) _then) = _$SubtitleDataCopyWithImpl;
@useResult
$Res call({
 Duration start, String text
});




}
/// @nodoc
class _$SubtitleDataCopyWithImpl<$Res>
    implements $SubtitleDataCopyWith<$Res> {
  _$SubtitleDataCopyWithImpl(this._self, this._then);

  final SubtitleData _self;
  final $Res Function(SubtitleData) _then;

/// Create a copy of SubtitleData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? text = null,}) {
  return _then(_self.copyWith(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as Duration,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubtitleData].
extension SubtitleDataPatterns on SubtitleData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubtitleData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubtitleData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubtitleData value)  $default,){
final _that = this;
switch (_that) {
case _SubtitleData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubtitleData value)?  $default,){
final _that = this;
switch (_that) {
case _SubtitleData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Duration start,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubtitleData() when $default != null:
return $default(_that.start,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Duration start,  String text)  $default,) {final _that = this;
switch (_that) {
case _SubtitleData():
return $default(_that.start,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Duration start,  String text)?  $default,) {final _that = this;
switch (_that) {
case _SubtitleData() when $default != null:
return $default(_that.start,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubtitleData implements SubtitleData {
  const _SubtitleData({required this.start, required this.text});
  factory _SubtitleData.fromJson(Map<String, dynamic> json) => _$SubtitleDataFromJson(json);

@override final  Duration start;
@override final  String text;

/// Create a copy of SubtitleData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubtitleDataCopyWith<_SubtitleData> get copyWith => __$SubtitleDataCopyWithImpl<_SubtitleData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubtitleDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubtitleData&&(identical(other.start, start) || other.start == start)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,text);

@override
String toString() {
  return 'SubtitleData(start: $start, text: $text)';
}


}

/// @nodoc
abstract mixin class _$SubtitleDataCopyWith<$Res> implements $SubtitleDataCopyWith<$Res> {
  factory _$SubtitleDataCopyWith(_SubtitleData value, $Res Function(_SubtitleData) _then) = __$SubtitleDataCopyWithImpl;
@override @useResult
$Res call({
 Duration start, String text
});




}
/// @nodoc
class __$SubtitleDataCopyWithImpl<$Res>
    implements _$SubtitleDataCopyWith<$Res> {
  __$SubtitleDataCopyWithImpl(this._self, this._then);

  final _SubtitleData _self;
  final $Res Function(_SubtitleData) _then;

/// Create a copy of SubtitleData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? text = null,}) {
  return _then(_SubtitleData(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as Duration,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
