import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/dep/repository/surv/surv_food_defense_model.dart';
import 'package:domain_database/src/surv/table/surv_food_defense_table.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:drift/drift.dart';
import 'package:drift/drift.dart' as drift;

typedef RepoTable = SurvFoodDefense;
typedef RepoDataClass = SurvFoodDefenseData;
typedef RepoCompanion = SurvFoodDefenseCompanion;

abstract class SurvFoodDefenseRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvFoodDefenseModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvFoodDefenseRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  bool? get wasFoodDefenseConducted => companion?.wasFoodDefenseConducted.value;

  @override
  void setWasFoodDefenseConducted(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(wasFoodDefenseConducted: drift.Value(newValue)));

  @override
  bool? get meatCheck => companion?.meatCheck.value;

  @override
  void setMeatCheck(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(meatCheck: drift.Value(newValue)));

  @override
  bool? get eggCheck => companion?.eggCheck.value;

  @override
  void setEggCheck(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(eggCheck: drift.Value(newValue)));

  @override
  bool? get shellEggCheck => companion?.shellEggCheck.value;

  @override
  void setShellEggCheck(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(shellEggCheck: drift.Value(newValue)));

  @override
  bool? get poultryCheck => companion?.poultryCheck.value;

  @override
  void setPoultryCheck(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(poultryCheck: drift.Value(newValue)));

  @override
  bool? get nonAmenableCheck => companion?.nonAmenableCheck.value;

  @override
  void setNonAmenableCheck(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(nonAmenableCheck: drift.Value(newValue)));

  @override
  bool? get siluriformesFishCheck => companion?.siluriformesFishCheck.value;

  @override
  void setSiluriformesFishCheck(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(siluriformesFishCheck: drift.Value(newValue)));

  @override
  bool? get hasWrittenFoodDefensePlan =>
      companion?.hasWrittenFoodDefensePlan.value;

  @override
  void setHasWrittenFoodDefensePlan(WidgetRef ref, bool? newValue) => setValue(
      ref,
      companion!.copyWith(hasWrittenFoodDefensePlan: drift.Value(newValue)));

  @override
  bool? get hasEmergencyContactInfo => companion?.hasEmergencyContactInfo.value;

  @override
  void setHasEmergencyContactInfo(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(hasEmergencyContactInfo: drift.Value(newValue)));

  @override
  bool? get hasOutsideSurveillanceSystem =>
      companion?.hasOutsideSurveillanceSystem.value;

  @override
  void setHasOutsideSurveillanceSystem(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(hasOutsideSurveillanceSystem: drift.Value(newValue)));

  @override
  bool? get hasInsideSurveillanceSystem =>
      companion?.hasInsideSurveillanceSystem.value;

  @override
  void setHasInsideSurveillanceSystem(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(hasInsideSurveillanceSystem: drift.Value(newValue)));

  @override
  bool? get hasProceduresForAuthorizedPersons =>
      companion?.hasProceduresForAuthorizedPersons.value;

  @override
  void setHasProceduresForAuthorizedPersons(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              hasProceduresForAuthorizedPersons: drift.Value(newValue)));

  @override
  bool? get hasStoreProceduresForHazardousMaterials =>
      companion?.hasStoreProceduresForHazardousMaterials.value;

  @override
  void setHasStoreProceduresForHazardousMaterials(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              hasStoreProceduresForHazardousMaterials: drift.Value(newValue)));

  @override
  bool? get hasLogToIdentifyEmployeesAndVisitors =>
      companion?.hasLogToIdentifyEmployeesAndVisitors.value;

  @override
  void setHasLogToIdentifyEmployeesAndVisitors(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              hasLogToIdentifyEmployeesAndVisitors: drift.Value(newValue)));

  @override
  bool? get hasShippingRecordAccessRestricted =>
      companion?.hasShippingRecordAccessRestricted.value;

  @override
  void setHasShippingRecordAccessRestricted(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              hasShippingRecordAccessRestricted: drift.Value(newValue)));

  @override
  bool? get wasSecurityVulnerabilitiesDiscussed =>
      companion?.wasSecurityVulnerabilitiesDiscussed.value;

  @override
  void setWasSecurityVulnerabilitiesDiscussed(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              wasSecurityVulnerabilitiesDiscussed: drift.Value(newValue)));

  @override
  bool? get recordsMaintained => companion?.recordsMaintained.value;

  @override
  void setRecordsMaintained(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(recordsMaintained: drift.Value(newValue)));

  @override
  bool? get hasProdedureForFoodAndFoodIngredients =>
      companion?.hasProdedureForFoodAndFoodIngredients.value;

  @override
  void setHasProdedureForFoodAndFoodIngredients(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              hasProdedureForFoodAndFoodIngredients: drift.Value(newValue)));

  @override
  bool? get hasProcedureForIncomingShippingDocuments =>
      companion?.hasProcedureForIncomingShippingDocuments.value;

  @override
  void setHasProcedureForIncomingShippingDocuments(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              hasProcedureForIncomingShippingDocuments: drift.Value(newValue)));

  @override
  bool? get isFreeFromTampering => companion?.isFreeFromTampering.value;

  @override
  void setIsFreeFromTampering(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(isFreeFromTampering: drift.Value(newValue)));

  @override
  bool? get wasDriverIdentificationVerified =>
      companion?.wasDriverIdentificationVerified.value;

  @override
  void setWasDriverIdentificationVerified(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              wasDriverIdentificationVerified: drift.Value(newValue)));

  @override
  bool? get didDetentionOccur => companion?.didDetentionOccur.value;

  @override
  void setDidDetentionOccur(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(didDetentionOccur: drift.Value(newValue)));

  @override
  bool? get wasForm5420Provided => companion?.wasForm5420Provided.value;

  @override
  void setWasForm5420Provided(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(wasForm5420Provided: drift.Value(newValue)));

@override
  bool? get productsFreeFromTampering =>
      companion?.productsFreeFromTampering.value;

  @override
  void setProductsFreeFromTampering(WidgetRef ref, bool? newValue) => setValue(
      ref,
      companion!.copyWith(productsFreeFromTampering: drift.Value(newValue)));

  @override
  bool? get wasMaintenenceSecurityDuringShip =>
      companion?.wasMaintenenceSecurityDuringShip.value;

  @override
  void setWasMaintenenceSecurityDuringShip(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              wasMaintenenceSecurityDuringShip: drift.Value(newValue)));

  @override
  String? get foodDefenseExitNotes => companion?.foodDefenseExitNotes.value;

  @override
  void setFoodDefenseExitNotes(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(foodDefenseExitNotes: drift.Value(newValue)));

  @override
  String? get investigatorNotes => companion?.investigatorNotes.value;

  @override
  void setInvestigatorNotes(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(investigatorNotes: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survFoodDefense;

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
