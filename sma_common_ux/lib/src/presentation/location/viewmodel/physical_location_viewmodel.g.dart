// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_location_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$physicalLocationViewModelHash() =>
    r'e8c696080aecfc03cbd59edb4938c150acd80082';

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

abstract class _$PhysicalLocationViewModel
    extends BuildlessAutoDisposeAsyncNotifier<PhysicalLocationFormData> {
  late final int refId;
  late final LocationRefType refType;

  FutureOr<PhysicalLocationFormData> build(
    int refId,
    LocationRefType refType,
  );
}

/// See also [PhysicalLocationViewModel].
@ProviderFor(PhysicalLocationViewModel)
const physicalLocationViewModelProvider = PhysicalLocationViewModelFamily();

/// See also [PhysicalLocationViewModel].
class PhysicalLocationViewModelFamily
    extends Family<AsyncValue<PhysicalLocationFormData>> {
  /// See also [PhysicalLocationViewModel].
  const PhysicalLocationViewModelFamily();

  /// See also [PhysicalLocationViewModel].
  PhysicalLocationViewModelProvider call(
    int refId,
    LocationRefType refType,
  ) {
    return PhysicalLocationViewModelProvider(
      refId,
      refType,
    );
  }

  @override
  PhysicalLocationViewModelProvider getProviderOverride(
    covariant PhysicalLocationViewModelProvider provider,
  ) {
    return call(
      provider.refId,
      provider.refType,
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
  String? get name => r'physicalLocationViewModelProvider';
}

/// See also [PhysicalLocationViewModel].
class PhysicalLocationViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PhysicalLocationViewModel,
        PhysicalLocationFormData> {
  /// See also [PhysicalLocationViewModel].
  PhysicalLocationViewModelProvider(
    int refId,
    LocationRefType refType,
  ) : this._internal(
          () => PhysicalLocationViewModel()
            ..refId = refId
            ..refType = refType,
          from: physicalLocationViewModelProvider,
          name: r'physicalLocationViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$physicalLocationViewModelHash,
          dependencies: PhysicalLocationViewModelFamily._dependencies,
          allTransitiveDependencies:
              PhysicalLocationViewModelFamily._allTransitiveDependencies,
          refId: refId,
          refType: refType,
        );

  PhysicalLocationViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.refId,
    required this.refType,
  }) : super.internal();

  final int refId;
  final LocationRefType refType;

  @override
  FutureOr<PhysicalLocationFormData> runNotifierBuild(
    covariant PhysicalLocationViewModel notifier,
  ) {
    return notifier.build(
      refId,
      refType,
    );
  }

  @override
  Override overrideWith(PhysicalLocationViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: PhysicalLocationViewModelProvider._internal(
        () => create()
          ..refId = refId
          ..refType = refType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        refId: refId,
        refType: refType,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PhysicalLocationViewModel,
      PhysicalLocationFormData> createElement() {
    return _PhysicalLocationViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PhysicalLocationViewModelProvider &&
        other.refId == refId &&
        other.refType == refType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, refId.hashCode);
    hash = _SystemHash.combine(hash, refType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PhysicalLocationViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<PhysicalLocationFormData> {
  /// The parameter `refId` of this provider.
  int get refId;

  /// The parameter `refType` of this provider.
  LocationRefType get refType;
}

class _PhysicalLocationViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PhysicalLocationViewModel,
        PhysicalLocationFormData> with PhysicalLocationViewModelRef {
  _PhysicalLocationViewModelProviderElement(super.provider);

  @override
  int get refId => (origin as PhysicalLocationViewModelProvider).refId;
  @override
  LocationRefType get refType =>
      (origin as PhysicalLocationViewModelProvider).refType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
