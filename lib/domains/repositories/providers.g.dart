// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(handleStorage)
final handleStorageProvider = HandleStorageProvider._();

final class HandleStorageProvider
    extends $FunctionalProvider<HandleStorage, HandleStorage, HandleStorage>
    with $Provider<HandleStorage> {
  HandleStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'handleStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$handleStorageHash();

  @$internal
  @override
  $ProviderElement<HandleStorage> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HandleStorage create(Ref ref) {
    return handleStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HandleStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HandleStorage>(value),
    );
  }
}

String _$handleStorageHash() => r'3f27c0503857f42ada6bc577c7e682881205dd91';
