// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firm_owner_info_form_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firmOwnerInfoFormViewModelHash() =>
    r'47559c77a91780c2d8141ad00001edefb2ae0f9d';

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

abstract class _$FirmOwnerInfoFormViewModel
    extends BuildlessAutoDisposeNotifier<FirmOwnerInfoFormData> {
  late final FirmOwnerInfoData? dataClass;

  FirmOwnerInfoFormData build(
    FirmOwnerInfoData? dataClass,
  );
}

/// See also [FirmOwnerInfoFormViewModel].
@ProviderFor(FirmOwnerInfoFormViewModel)
const firmOwnerInfoFormViewModelProvider = FirmOwnerInfoFormViewModelFamily();

/// See also [FirmOwnerInfoFormViewModel].
class FirmOwnerInfoFormViewModelFamily extends Family<FirmOwnerInfoFormData> {
  /// See also [FirmOwnerInfoFormViewModel].
  const FirmOwnerInfoFormViewModelFamily();

  /// See also [FirmOwnerInfoFormViewModel].
  FirmOwnerInfoFormViewModelProvider call(
    FirmOwnerInfoData? dataClass,
  ) {
    return FirmOwnerInfoFormViewModelProvider(
      dataClass,
    );
  }

  @override
  FirmOwnerInfoFormViewModelProvider getProviderOverride(
    covariant FirmOwnerInfoFormViewModelProvider provider,
  ) {
    return call(
      provider.dataClass,
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
  String? get name => r'firmOwnerInfoFormViewModelProvider';
}

/// See also [FirmOwnerInfoFormViewModel].
class FirmOwnerInfoFormViewModelProvider
    extends AutoDisposeNotifierProviderImpl<FirmOwnerInfoFormViewModel,
        FirmOwnerInfoFormData> {
  /// See also [FirmOwnerInfoFormViewModel].
  FirmOwnerInfoFormViewModelProvider(
    FirmOwnerInfoData? dataClass,
  ) : this._internal(
          () => FirmOwnerInfoFormViewModel()..dataClass = dataClass,
          from: firmOwnerInfoFormViewModelProvider,
          name: r'firmOwnerInfoFormViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$firmOwnerInfoFormViewModelHash,
          dependencies: FirmOwnerInfoFormViewModelFamily._dependencies,
          allTransitiveDependencies:
              FirmOwnerInfoFormViewModelFamily._allTransitiveDependencies,
          dataClass: dataClass,
        );

  FirmOwnerInfoFormViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dataClass,
  }) : super.internal();

  final FirmOwnerInfoData? dataClass;

  @override
  FirmOwnerInfoFormData runNotifierBuild(
    covariant FirmOwnerInfoFormViewModel notifier,
  ) {
    return notifier.build(
      dataClass,
    );
  }

  @override
  Override overrideWith(FirmOwnerInfoFormViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: FirmOwnerInfoFormViewModelProvider._internal(
        () => create()..dataClass = dataClass,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dataClass: dataClass,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FirmOwnerInfoFormViewModel,
      FirmOwnerInfoFormData> createElement() {
    return _FirmOwnerInfoFormViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FirmOwnerInfoFormViewModelProvider &&
        other.dataClass == dataClass;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dataClass.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FirmOwnerInfoFormViewModelRef
    on AutoDisposeNotifierProviderRef<FirmOwnerInfoFormData> {
  /// The parameter `dataClass` of this provider.
  FirmOwnerInfoData? get dataClass;
}

class _FirmOwnerInfoFormViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<FirmOwnerInfoFormViewModel,
        FirmOwnerInfoFormData> with FirmOwnerInfoFormViewModelRef {
  _FirmOwnerInfoFormViewModelProviderElement(super.provider);

  @override
  FirmOwnerInfoData? get dataClass =>
      (origin as FirmOwnerInfoFormViewModelProvider).dataClass;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
