// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surv_snapshot_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncSurvSnapshotHash() => r'3fa123e06d269faf099c6b9e129073b77cefd95d';

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

abstract class _$AsyncSurvSnapshot
    extends BuildlessAutoDisposeAsyncNotifier<SurvSnapshotRepository?> {
  late final int survId;

  FutureOr<SurvSnapshotRepository?> build(
    int survId,
  );
}

/// See also [AsyncSurvSnapshot].
@ProviderFor(AsyncSurvSnapshot)
const asyncSurvSnapshotProvider = AsyncSurvSnapshotFamily();

/// See also [AsyncSurvSnapshot].
class AsyncSurvSnapshotFamily
    extends Family<AsyncValue<SurvSnapshotRepository?>> {
  /// See also [AsyncSurvSnapshot].
  const AsyncSurvSnapshotFamily();

  /// See also [AsyncSurvSnapshot].
  AsyncSurvSnapshotProvider call(
    int survId,
  ) {
    return AsyncSurvSnapshotProvider(
      survId,
    );
  }

  @override
  AsyncSurvSnapshotProvider getProviderOverride(
    covariant AsyncSurvSnapshotProvider provider,
  ) {
    return call(
      provider.survId,
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
  String? get name => r'asyncSurvSnapshotProvider';
}

/// See also [AsyncSurvSnapshot].
class AsyncSurvSnapshotProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AsyncSurvSnapshot, SurvSnapshotRepository?> {
  /// See also [AsyncSurvSnapshot].
  AsyncSurvSnapshotProvider(
    int survId,
  ) : this._internal(
          () => AsyncSurvSnapshot()..survId = survId,
          from: asyncSurvSnapshotProvider,
          name: r'asyncSurvSnapshotProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncSurvSnapshotHash,
          dependencies: AsyncSurvSnapshotFamily._dependencies,
          allTransitiveDependencies:
              AsyncSurvSnapshotFamily._allTransitiveDependencies,
          survId: survId,
        );

  AsyncSurvSnapshotProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.survId,
  }) : super.internal();

  final int survId;

  @override
  FutureOr<SurvSnapshotRepository?> runNotifierBuild(
    covariant AsyncSurvSnapshot notifier,
  ) {
    return notifier.build(
      survId,
    );
  }

  @override
  Override overrideWith(AsyncSurvSnapshot Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncSurvSnapshotProvider._internal(
        () => create()..survId = survId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        survId: survId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AsyncSurvSnapshot,
      SurvSnapshotRepository?> createElement() {
    return _AsyncSurvSnapshotProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncSurvSnapshotProvider && other.survId == survId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, survId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncSurvSnapshotRef
    on AutoDisposeAsyncNotifierProviderRef<SurvSnapshotRepository?> {
  /// The parameter `survId` of this provider.
  int get survId;
}

class _AsyncSurvSnapshotProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncSurvSnapshot,
        SurvSnapshotRepository?> with AsyncSurvSnapshotRef {
  _AsyncSurvSnapshotProviderElement(super.provider);

  @override
  int get survId => (origin as AsyncSurvSnapshotProvider).survId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
