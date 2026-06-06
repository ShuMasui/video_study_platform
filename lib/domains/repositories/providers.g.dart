// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(handleVideoStorage)
final handleVideoStorageProvider = HandleVideoStorageProvider._();

final class HandleVideoStorageProvider
    extends
        $FunctionalProvider<
          HandleVideoStorage,
          HandleVideoStorage,
          HandleVideoStorage
        >
    with $Provider<HandleVideoStorage> {
  HandleVideoStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'handleVideoStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$handleVideoStorageHash();

  @$internal
  @override
  $ProviderElement<HandleVideoStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HandleVideoStorage create(Ref ref) {
    return handleVideoStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HandleVideoStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HandleVideoStorage>(value),
    );
  }
}

String _$handleVideoStorageHash() =>
    r'1703367eea590a2ba82ea1a48d54a3ee23f69930';

@ProviderFor(handleCloudStorage)
final handleCloudStorageProvider = HandleCloudStorageProvider._();

final class HandleCloudStorageProvider
    extends
        $FunctionalProvider<
          HandleCloudStorage,
          HandleCloudStorage,
          HandleCloudStorage
        >
    with $Provider<HandleCloudStorage> {
  HandleCloudStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'handleCloudStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$handleCloudStorageHash();

  @$internal
  @override
  $ProviderElement<HandleCloudStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HandleCloudStorage create(Ref ref) {
    return handleCloudStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HandleCloudStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HandleCloudStorage>(value),
    );
  }
}

String _$handleCloudStorageHash() =>
    r'85afad7b2d3f5da702af5197581dbdd42f6bb0ee';
