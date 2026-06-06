// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchVideoList)
final fetchVideoListProvider = FetchVideoListProvider._();

final class FetchVideoListProvider
    extends $FunctionalProvider<FetchVideoList, FetchVideoList, FetchVideoList>
    with $Provider<FetchVideoList> {
  FetchVideoListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchVideoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchVideoListHash();

  @$internal
  @override
  $ProviderElement<FetchVideoList> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FetchVideoList create(Ref ref) {
    return fetchVideoList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchVideoList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchVideoList>(value),
    );
  }
}

String _$fetchVideoListHash() => r'801f029887903702e298dd4963e9f0120d99399b';

@ProviderFor(fetchVideoData)
final fetchVideoDataProvider = FetchVideoDataProvider._();

final class FetchVideoDataProvider
    extends $FunctionalProvider<FetchVideoData, FetchVideoData, FetchVideoData>
    with $Provider<FetchVideoData> {
  FetchVideoDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchVideoDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchVideoDataHash();

  @$internal
  @override
  $ProviderElement<FetchVideoData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FetchVideoData create(Ref ref) {
    return fetchVideoData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchVideoData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchVideoData>(value),
    );
  }
}

String _$fetchVideoDataHash() => r'd4fe324ca348cf8952c459e4924fbcbd86361f43';
