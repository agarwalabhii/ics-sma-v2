import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/dep/repository/surv/surv_general_info_model.dart';
import 'package:domain_database/src/surv/table/surv_general_info_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef RepoTable = SurvGeneralInfo;
typedef RepoDataClass = SurvGeneralInfoData;
typedef RepoCompanion = SurvGeneralInfoCompanion;

abstract class SurvGeneralInfoRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvGeneralInfoModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvGeneralInfoRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  DateTime? get datePerformed => companion?.datePerformed.value;

  @override
  void setDatePerformed(WidgetRef ref, DateTime? newValue) =>
      setValue(ref, companion!.copyWith(datePerformed: drift.Value(newValue)));

  @override
  MultiString? get reason => companion?.reason.value;

  @override
  void setReason(WidgetRef ref, MultiString? newValue) =>
      setValue(ref, companion!.copyWith(reason: drift.Value(newValue)));

  @override
  MultiString? get retailProject => companion?.retailProject.value;

  @override
  void setRetailProject(WidgetRef ref, MultiString? newValue) =>
      setValue(ref, companion!.copyWith(retailProject: drift.Value(newValue)));

  @override
  MultiString? get retailProjectOther => companion?.retailProjectOther.value;

  @override
  void setRetailProjectOther(WidgetRef ref, MultiString? newValue) => setValue(
      ref, companion!.copyWith(retailProjectOther: drift.Value(newValue)));

  @override
  MultiString? get retailSpecialProject =>
      companion?.retailSpecialProject.value;

  @override
  void setRetailSpecialProject(WidgetRef ref, MultiString? newValue) =>
      setValue(ref,
          companion!.copyWith(retailSpecialProject: drift.Value(newValue)));

  @override
  MultiString? get specialProject => companion?.specialProject.value;

  @override
  void setSpecialProject(WidgetRef ref, MultiString? newValue) =>
      setValue(ref, companion!.copyWith(specialProject: drift.Value(newValue)));

  @override
  String? get firmNameAtTimeOfAction => companion?.firmNameAtTimeOfAction.value;

  @override
  void setFirmNameAtTimeOfAction(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(firmNameAtTimeOfAction: drift.Value(newValue)));

  @override
  bool get isVisibleRetailProject => (retailProject != null)
      ? retailProject!.listValues.contains("SP")
      : false;

  //
  // Repository methods
  //

  @override
  TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survGeneralInfo;

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

  static final provider =
      StateProvider.autoDispose.family<RepoCompanion, int>((ref, id) {
    return RepoCompanion(id: drift.Value(id));
  });
}
