// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firm_additional_info_form_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firmAdditionalInfoFormViewModelHash() =>
    r'9767112aaf750f83eb7f48c7991f53dcf0868072';

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

abstract class _$FirmAdditionalInfoFormViewModel
    extends BuildlessAutoDisposeNotifier<FirmAdditionalInfoFormData> {
  late final FirmAdditionalInfoData? dataClass;

  FirmAdditionalInfoFormData build(
    FirmAdditionalInfoData? dataClass,
  );
}

/// See also [FirmAdditionalInfoFormViewModel].
@ProviderFor(FirmAdditionalInfoFormViewModel)
const firmAdditionalInfoFormViewModelProvider =
    FirmAdditionalInfoFormViewModelFamily();

/// See also [FirmAdditionalInfoFormViewModel].
class FirmAdditionalInfoFormViewModelFamily
    extends Family<FirmAdditionalInfoFormData> {
  /// See also [FirmAdditionalInfoFormViewModel].
  const FirmAdditionalInfoFormViewModelFamily();

  /// See also [FirmAdditionalInfoFormViewModel].
  FirmAdditionalInfoFormViewModelProvider call(
    FirmAdditionalInfoData? dataClass,
  ) {
    return FirmAdditionalInfoFormViewModelProvider(
      dataClass,
    );
  }

  @override
  FirmAdditionalInfoFormViewModelProvider getProviderOverride(
    covariant FirmAdditionalInfoFormViewModelProvider provider,
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
  String? get name => r'firmAdditionalInfoFormViewModelProvider';
}

/// See also [FirmAdditionalInfoFormViewModel].
class FirmAdditionalInfoFormViewModelProvider
    extends AutoDisposeNotifierProviderImpl<FirmAdditionalInfoFormViewModel,
        FirmAdditionalInfoFormData> {
  /// See also [FirmAdditionalInfoFormViewModel].
  FirmAdditionalInfoFormViewModelProvider(
    FirmAdditionalInfoData? dataClass,
  ) : this._internal(
          () => FirmAdditionalInfoFormViewModel()..dataClass = dataClass,
          from: firmAdditionalInfoFormViewModelProvider,
          name: r'firmAdditionalInfoFormViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$firmAdditionalInfoFormViewModelHash,
          dependencies: FirmAdditionalInfoFormViewModelFamily._dependencies,
          allTransitiveDependencies:
              FirmAdditionalInfoFormViewModelFamily._allTransitiveDependencies,
          dataClass: dataClass,
        );

  FirmAdditionalInfoFormViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dataClass,
  }) : super.internal();

  final FirmAdditionalInfoData? dataClass;

  @override
  FirmAdditionalInfoFormData runNotifierBuild(
    covariant FirmAdditionalInfoFormViewModel notifier,
  ) {
    return notifier.build(
      dataClass,
    );
  }

  @override
  Override overrideWith(FirmAdditionalInfoFormViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: FirmAdditionalInfoFormViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<FirmAdditionalInfoFormViewModel,
      FirmAdditionalInfoFormData> createElement() {
    return _FirmAdditionalInfoFormViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FirmAdditionalInfoFormViewModelProvider &&
        other.dataClass == dataClass;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dataClass.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FirmAdditionalInfoFormViewModelRef
    on AutoDisposeNotifierProviderRef<FirmAdditionalInfoFormData> {
  /// The parameter `dataClass` of this provider.
  FirmAdditionalInfoData? get dataClass;
}

class _FirmAdditionalInfoFormViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<FirmAdditionalInfoFormViewModel,
        FirmAdditionalInfoFormData> with FirmAdditionalInfoFormViewModelRef {
  _FirmAdditionalInfoFormViewModelProviderElement(super.provider);

  @override
  FirmAdditionalInfoData? get dataClass =>
      (origin as FirmAdditionalInfoFormViewModelProvider).dataClass;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
