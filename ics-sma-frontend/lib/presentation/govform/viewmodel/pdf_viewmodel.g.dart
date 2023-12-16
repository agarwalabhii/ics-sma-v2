// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pdfViewModelHash() => r'38bfb7cc76b692eaaa22d323b86b5b6f34eea743';

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

abstract class _$PdfViewModel
    extends BuildlessAutoDisposeAsyncNotifier<PdfDocument> {
  late final GovformRequest request;

  FutureOr<PdfDocument> build(
    GovformRequest request,
  );
}

/// See also [PdfViewModel].
@ProviderFor(PdfViewModel)
const pdfViewModelProvider = PdfViewModelFamily();

/// See also [PdfViewModel].
class PdfViewModelFamily extends Family<AsyncValue<PdfDocument>> {
  /// See also [PdfViewModel].
  const PdfViewModelFamily();

  /// See also [PdfViewModel].
  PdfViewModelProvider call(
    GovformRequest request,
  ) {
    return PdfViewModelProvider(
      request,
    );
  }

  @override
  PdfViewModelProvider getProviderOverride(
    covariant PdfViewModelProvider provider,
  ) {
    return call(
      provider.request,
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
  String? get name => r'pdfViewModelProvider';
}

/// See also [PdfViewModel].
class PdfViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PdfViewModel, PdfDocument> {
  /// See also [PdfViewModel].
  PdfViewModelProvider(
    GovformRequest request,
  ) : this._internal(
          () => PdfViewModel()..request = request,
          from: pdfViewModelProvider,
          name: r'pdfViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pdfViewModelHash,
          dependencies: PdfViewModelFamily._dependencies,
          allTransitiveDependencies:
              PdfViewModelFamily._allTransitiveDependencies,
          request: request,
        );

  PdfViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GovformRequest request;

  @override
  FutureOr<PdfDocument> runNotifierBuild(
    covariant PdfViewModel notifier,
  ) {
    return notifier.build(
      request,
    );
  }

  @override
  Override overrideWith(PdfViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: PdfViewModelProvider._internal(
        () => create()..request = request,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PdfViewModel, PdfDocument>
      createElement() {
    return _PdfViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PdfViewModelProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PdfViewModelRef on AutoDisposeAsyncNotifierProviderRef<PdfDocument> {
  /// The parameter `request` of this provider.
  GovformRequest get request;
}

class _PdfViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PdfViewModel, PdfDocument>
    with PdfViewModelRef {
  _PdfViewModelProviderElement(super.provider);

  @override
  GovformRequest get request => (origin as PdfViewModelProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
