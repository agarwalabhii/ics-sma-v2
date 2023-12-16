// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firm_snapshot_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncFirmSnapshotHash() => r'8f14f2bed3a9d6664c495038962a267b10278b8e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AsyncFirmSnapshot
    extends BuildlessAutoDisposeAsyncNotifier<FirmSnapshotRepository?> {
  late final dynamic firmId;

  FutureOr<FirmSnapshotRepository?> build(
    dynamic firmId,
  );
}

/// See also [AsyncFirmSnapshot].
@ProviderFor(AsyncFirmSnapshot)
const asyncFirmSnapshotProvider = AsyncFirmSnapshotFamily();

/// See also [AsyncFirmSnapshot].
class AsyncFirmSnapshotFamily
    extends Family<AsyncValue<FirmSnapshotRepository?>> {
  /// See also [AsyncFirmSnapshot].
  const AsyncFirmSnapshotFamily();

  /// See also [AsyncFirmSnapshot].
  AsyncFirmSnapshotProvider call(
    dynamic firmId,
  ) {
    return AsyncFirmSnapshotProvider(
      firmId,
    );
  }

  @override
  AsyncFirmSnapshotProvider getProviderOverride(
    covariant AsyncFirmSnapshotProvider provider,
  ) {
    return call(
      provider.firmId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'asyncFirmSnapshotProvider';
}

/// See also [AsyncFirmSnapshot].
class AsyncFirmSnapshotProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AsyncFirmSnapshot, FirmSnapshotRepository?> {
  /// See also [AsyncFirmSnapshot].
  AsyncFirmSnapshotProvider(
    dynamic firmId,
  ) : this._internal(
          () => AsyncFirmSnapshot()..firmId = firmId,
          from: asyncFirmSnapshotProvider,
          name: r'asyncFirmSnapshotProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncFirmSnapshotHash,
          dependencies: AsyncFirmSnapshotFamily._dependencies,
          allTransitiveDependencies:
              AsyncFirmSnapshotFamily._allTransitiveDependencies,
          firmId: firmId,
        );

  AsyncFirmSnapshotProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.firmId,
  }) : super.internal();

  final dynamic firmId;

  @override
  FutureOr<FirmSnapshotRepository?> runNotifierBuild(
    covariant AsyncFirmSnapshot notifier,
  ) {
    return notifier.build(
      firmId,
    );
  }

  @override
  Override overrideWith(AsyncFirmSnapshot Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncFirmSnapshotProvider._internal(
        () => create()..firmId = firmId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        firmId: firmId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AsyncFirmSnapshot,
      FirmSnapshotRepository?> createElement() {
    return _AsyncFirmSnapshotProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncFirmSnapshotProvider && other.firmId == firmId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, firmId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncFirmSnapshotRef
    on AutoDisposeAsyncNotifierProviderRef<FirmSnapshotRepository?> {
  /// The parameter `firmId` of this provider.
  dynamic get firmId;
}

class _AsyncFirmSnapshotProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncFirmSnapshot,
        FirmSnapshotRepository?> with AsyncFirmSnapshotRef {
  _AsyncFirmSnapshotProviderElement(super.provider);

  @override
  dynamic get firmId => (origin as AsyncFirmSnapshotProvider).firmId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
