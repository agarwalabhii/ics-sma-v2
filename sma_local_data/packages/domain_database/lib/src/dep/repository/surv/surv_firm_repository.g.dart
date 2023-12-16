// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surv_firm_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncFirmDataHash() => r'2e3c8cd1fa59105ca3ec83fa2d15082881b5d15c';

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

abstract class _$AsyncFirmData
    extends BuildlessAutoDisposeAsyncNotifier<SurvFirmModel> {
  late final int survId;

  FutureOr<SurvFirmModel> build(
    int survId,
  );
}

/// See also [AsyncFirmData].
@ProviderFor(AsyncFirmData)
const asyncFirmDataProvider = AsyncFirmDataFamily();

/// See also [AsyncFirmData].
class AsyncFirmDataFamily extends Family<AsyncValue<SurvFirmModel>> {
  /// See also [AsyncFirmData].
  const AsyncFirmDataFamily();

  /// See also [AsyncFirmData].
  AsyncFirmDataProvider call(
    int survId,
  ) {
    return AsyncFirmDataProvider(
      survId,
    );
  }

  @override
  AsyncFirmDataProvider getProviderOverride(
    covariant AsyncFirmDataProvider provider,
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
  String? get name => r'asyncFirmDataProvider';
}

/// See also [AsyncFirmData].
class AsyncFirmDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AsyncFirmData, SurvFirmModel> {
  /// See also [AsyncFirmData].
  AsyncFirmDataProvider(
    int survId,
  ) : this._internal(
          () => AsyncFirmData()..survId = survId,
          from: asyncFirmDataProvider,
          name: r'asyncFirmDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncFirmDataHash,
          dependencies: AsyncFirmDataFamily._dependencies,
          allTransitiveDependencies:
              AsyncFirmDataFamily._allTransitiveDependencies,
          survId: survId,
        );

  AsyncFirmDataProvider._internal(
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
  FutureOr<SurvFirmModel> runNotifierBuild(
    covariant AsyncFirmData notifier,
  ) {
    return notifier.build(
      survId,
    );
  }

  @override
  Override overrideWith(AsyncFirmData Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncFirmDataProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AsyncFirmData, SurvFirmModel>
      createElement() {
    return _AsyncFirmDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncFirmDataProvider && other.survId == survId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, survId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncFirmDataRef on AutoDisposeAsyncNotifierProviderRef<SurvFirmModel> {
  /// The parameter `survId` of this provider.
  int get survId;
}

class _AsyncFirmDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncFirmData,
        SurvFirmModel> with AsyncFirmDataRef {
  _AsyncFirmDataProviderElement(super.provider);

  @override
  int get survId => (origin as AsyncFirmDataProvider).survId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
