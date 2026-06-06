// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VideoListNotifier)
final videoListProvider = VideoListNotifierProvider._();

final class VideoListNotifierProvider
    extends $AsyncNotifierProvider<VideoListNotifier, List<VideoMetaData>> {
  VideoListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'videoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$videoListNotifierHash();

  @$internal
  @override
  VideoListNotifier create() => VideoListNotifier();
}

String _$videoListNotifierHash() => r'49f10613ae282686576503c4d5588bb6f4462f28';

abstract class _$VideoListNotifier extends $AsyncNotifier<List<VideoMetaData>> {
  FutureOr<List<VideoMetaData>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<VideoMetaData>>, List<VideoMetaData>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<VideoMetaData>>, List<VideoMetaData>>,
              AsyncValue<List<VideoMetaData>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
