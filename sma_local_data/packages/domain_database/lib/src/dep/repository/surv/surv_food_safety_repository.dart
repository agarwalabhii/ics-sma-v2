import 'package:domain_database/src/dep/repository/surv/surv_food_safety_model.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/surv/table/surv_food_safety_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = SurvFoodSafety;
typedef RepoDataClass = SurvFoodSafetyData;
typedef RepoCompanion = SurvFoodSafetyCompanion;

abstract class SurvFoodSafetyRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvFoodSafetyModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvFoodSafetyRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  bool? get productWholesome => companion?.productWholesome.value;

  @override
  void setProductWholesome(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(productWholesome: drift.Value(newValue)));

  @override
  bool? get sanitaryConditionsGood => companion?.sanitaryConditionsGood.value;

  @override
  void setSanitaryConditionsGood(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(sanitaryConditionsGood: drift.Value(newValue)));

  @override
  bool? get hazardControlsAdequate => companion?.hazardControlsAdequate.value;

  @override
  void setHazardControlsAdequate(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(hazardControlsAdequate: drift.Value(newValue)));

  @override
  bool? get nonHumanFoodProperlyDenatured =>
      companion?.nonHumanFoodProperlyDenatured.value;

  @override
  void setNonHumanFoodProperlyDenatured(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(nonHumanFoodProperlyDenatured: drift.Value(newValue)));

  @override
  bool? get recordsMaintained => companion?.recordsMaintained.value;

  @override
  void setRecordsMaintained(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(recordsMaintained: drift.Value(newValue)));

  @override
  String? get safetyAddtionalComments =>
      companion?.safetyAddtionalComments.value;

  @override
  void setSafetyAdditionalComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(safetyAddtionalComments: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survFoodSafety;

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
