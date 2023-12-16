import 'package:domain_database/src/dep/repository/surv/surv_imported_product_model.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/surv/table/surv_imported_product_table.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = SurvImportedProduct;
typedef RepoDataClass = SurvImportedProductData;
typedef RepoCompanion = SurvImportedProductCompanion;

abstract class SurvImportedProductRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvImportedProductModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvImportedProductRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  bool? get wasImportProductObserved =>
      companion?.wasImportProductObserved.value;

  @override
  void setWasImportProductObserved(WidgetRef ref, bool? newValue) => setValue(
      ref,
      companion!.copyWith(wasImportProductObserved: drift.Value(newValue)));

  @override
  bool? get hasCheckForFederalImportInspection =>
      companion?.hasCheckForFederalImportInspection.value;

  @override
  void setHasCheckForFederalImportInspection(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              hasCheckForFederalImportInspection: drift.Value(newValue)));

  @override
  bool? get wasCorrectDocumentsRequested =>
      companion?.wasCorrectDocumentsRequested.value;

  @override
  void setWasCorrectDocumentsRequested(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(wasCorrectDocumentsRequested: drift.Value(newValue)));

  @override
  bool? get importedProductsMarks => companion?.importedProductsMarks.value;

  @override
  void setImportedProductsMarks(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(importedProductsMarks: drift.Value(newValue)));

  @override
  bool? get hasPhisUsedVerifyProducts =>
      companion?.hasPhisUsedVerifyProducts.value;

  @override
  void setAsPhisUsedVerifyProducts(WidgetRef ref, bool? newValue) => setValue(
      ref,
      companion!.copyWith(hasPhisUsedVerifyProducts: drift.Value(newValue)));

  @override
  bool? get wasOriginatedFromEligibleForeignEstablishments =>
      companion?.wasOriginatedFromEligibleForeignEstablishments.value;

  @override
  void setWasOriginatedFromEligibleForeignEstablishments(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              wasOriginatedFromEligibleForeignEstablishments:
                  drift.Value(newValue)));

  @override
  bool? get wasOriginatedFromEligibleForeignCountries =>
      companion?.wasOriginatedFromEligibleForeignCountries.value;

  @override
  void setWasOriginatedFromEligibleForeignCountries(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              wasOriginatedFromEligibleForeignEstablishments:
                  drift.Value(newValue)));

  @override
  bool? get wasProducedWhileForeignEstablishmentsEligible =>
      companion?.wasProducedWhileForeignEstablishmentsEligible.value;

  @override
  void setWasProducedWhileForeignEstablishmentsEligible(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              wasProducedWhileForeignEstablishmentsEligible:
                  drift.Value(newValue)));

  @override
  bool? get wasInspectedAndPassedByFSIS =>
      companion?.wasInspectedAndPassedByFSIS.value;

  @override
  void setWasInspectedAndPassedByFSIS(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              wasProducedWhileForeignEstablishmentsEligible:
                  drift.Value(newValue)));
  @override
  String? get country => companion?.country.value;

  @override
  void setCountry(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(country: drift.Value(newValue)));

  @override
  String? get importedProductsAdditionalComments =>
      companion?.importedProductsAdditionalComments.value;

  @override
  void setImportedProductsAdditionalComments(WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              importedProductsAdditionalComments: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survImportedProduct;

  @override
  void bootstrap(WidgetRef ref) {
    companion ??= ref.watch(provider(modelContext.id));
    resetCompanion ??= companion;
    super.bootstrap(ref);
  }

  @override
  void setValue(WidgetRef ref, RepoCompanion newCompanion) {
    ref.watch(provider(modelContext.id).notifier).state = newCompanion;
    companion = newCompanion;
  }

  @override
  void setFetchedResult(RepoDataClass dataClass) {
    companion = dataClass.toCompanion(true);
  }

  @override
  FeatureMode get featureMode => modelContext.featureMode;

  @override
  int get id => modelContext.id;

  final provider =
      StateProvider.autoDispose.family<RepoCompanion, int>((ref, id) {
    return RepoCompanion(id: drift.Value(id));
  });
}
