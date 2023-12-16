import 'package:domain_database/src/dep/repository/surv/surv_non_food_safety_model.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/surv/table/surv_non_food_safety_table.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';

typedef RepoTable = SurvNonFoodSafety;
typedef RepoDataClass = SurvNonFoodSafetyData;
typedef RepoCompanion = SurvNonFoodSafetyCompanion;

abstract class SurvNonFoodSafetyRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvNonFoodSafetyModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvNonFoodSafetyRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  String? get additionalComments => companion?.additionalComments.value;

  @override
  void setAdditionalComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(additionalComments: drift.Value(newValue)));

  @override
  bool? get labelingVerified => companion?.labelingVerified.value;

  @override
  void setLabelingVerified(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(labelingVerified: drift.Value(newValue)));

  @override
  bool? get productsNotMisbranded => companion?.productsNotMisbranded.value;

  @override
  void setProductsNotMisbranded(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(productsNotMisbranded: drift.Value(newValue)));

  @override
  bool? get properlyIdentifyActs => companion?.properlyIdentifyActs.value;

  @override
  void setProperlyIdentifyActs(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(properlyIdentifyActs: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survNonFoodSafety;

  @override
  void bootstrap(WidgetRef ref) {
    companion ??= ref.watch(provider(modelContext.id));
    resetCompanion ??= ref.watch(provider(modelContext.id));
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
