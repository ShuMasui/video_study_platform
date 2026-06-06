// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(videoMetaData)
final videoMetaDataProvider = VideoMetaDataFamily._();

final class VideoMetaDataProvider
    extends
        $FunctionalProvider<
          AsyncValue<VideoMetaData?>,
          VideoMetaData?,
          FutureOr<VideoMetaData?>
        >
    with $FutureModifier<VideoMetaData?>, $FutureProvider<VideoMetaData?> {
  VideoMetaDataProvider._({
    required VideoMetaDataFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'videoMetaDataProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$videoMetaDataHash();

  @override
  String toString() {
    return r'videoMetaDataProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<VideoMetaData?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<VideoMetaData?> create(Ref ref) {
    final argument = this.argument as String;
    return videoMetaData(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VideoMetaDataProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$videoMetaDataHash() => r'fb9e2a319187a4e842f346b62522318bf0342898';

final class VideoMetaDataFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<VideoMetaData?>, String> {
  VideoMetaDataFamily._()
    : super(
        retry: null,
        name: r'videoMetaDataProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VideoMetaDataProvider call(String videoTitle) =>
      VideoMetaDataProvider._(argument: videoTitle, from: this);

  @override
  String toString() => r'videoMetaDataProvider';
}

@ProviderFor(videoController)
final videoControllerProvider = VideoControllerFamily._();

final class VideoControllerProvider
    extends
        $FunctionalProvider<
          AsyncValue<VideoPlayerController>,
          VideoPlayerController,
          FutureOr<VideoPlayerController>
        >
    with
        $FutureModifier<VideoPlayerController>,
        $FutureProvider<VideoPlayerController> {
  VideoControllerProvider._({
    required VideoControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'videoControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$videoControllerHash();

  @override
  String toString() {
    return r'videoControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<VideoPlayerController> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<VideoPlayerController> create(Ref ref) {
    final argument = this.argument as String;
    return videoController(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VideoControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$videoControllerHash() => r'cbc2e8b26a90fb480e22246058d0c2ecbb5b715f';

final class VideoControllerFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<VideoPlayerController>, String> {
  VideoControllerFamily._()
    : super(
        retry: null,
        name: r'videoControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VideoControllerProvider call(String videoTitle) =>
      VideoControllerProvider._(argument: videoTitle, from: this);

  @override
  String toString() => r'videoControllerProvider';
}

@ProviderFor(subTitle)
final subTitleProvider = SubTitleFamily._();

final class SubTitleProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  SubTitleProvider._({
    required SubTitleFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'subTitleProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$subTitleHash();

  @override
  String toString() {
    return r'subTitleProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as String;
    return subTitle(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SubTitleProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$subTitleHash() => r'72f4ff6535d1adf554220220d0d4e709695e523d';

final class SubTitleFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, String> {
  SubTitleFamily._()
    : super(
        retry: null,
        name: r'subTitleProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SubTitleProvider call(String videoTitle) =>
      SubTitleProvider._(argument: videoTitle, from: this);

  @override
  String toString() => r'subTitleProvider';
}
