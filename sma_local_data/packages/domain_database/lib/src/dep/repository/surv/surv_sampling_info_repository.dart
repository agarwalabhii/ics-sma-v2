import 'package:domain_database/src/dep/repository/surv/surv_sampling_info_model.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/surv/table/surv_sampling_info_table.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef RepoTable = SurvSamplingInfo;
typedef RepoDataClass = SurvSamplingInfoData;
typedef RepoCompanion = SurvSamplingInfoCompanion;

abstract class SurvSamplingInfoRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvSamplingInfoModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  @override
  SurvSamplingInfoRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  MultiString? get reasonNoSamplesTaken =>
      companion?.reasonNoSamplesTaken.value;

  @override
  void setReasonNoSamplesTaken(WidgetRef ref, MultiString? newValue) =>
      setValue(ref,
          companion!.copyWith(reasonNoSamplesTaken: drift.Value(newValue)));

  @override
  MultiString? get typeOfSamplesTaken => companion?.typeOfSamplesTaken.value;

  @override
  void setTypeOfSamplesTaken(WidgetRef ref, MultiString? newValue) => setValue(
      ref, companion!.copyWith(typeOfSamplesTaken: drift.Value(newValue)));

  @override
  MultiString? get sampleResult => companion?.sampleResult.value;

  @override
  void setSampleResult(WidgetRef ref, MultiString? newValue) =>
      setValue(ref, companion!.copyWith(sampleResult: drift.Value(newValue)));

  @override
  bool? get samplingTaken => companion?.samplingTaken.value;

  @override
  void setSamplingTaken(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(samplingTaken: drift.Value(newValue)));

  @override
  bool? get adequateGrinding => companion?.adequateGrinding.value;

  @override
  void setAdequateGrinding(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(adequateGrinding: drift.Value(newValue)));

  @override
  String? get numSpecialProjectsInvestigations =>
      companion?.numSpecialProjectsInvestigations.value;

  @override
  void setNumSpecialProjectsInvestigations(WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              numSpecialProjectsInvestigations: drift.Value(newValue)));

  @override
  String? get numMT0506 => companion?.numMT0506.value;

  @override
  void setNumMT0506(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(numMT0506: drift.Value(newValue)));

  @override
  String? get reasonForNotTaking =>
      companion?.numSpecialProjectsInvestigations.value;

  @override
  void setReasonForNotTaking(WidgetRef ref, String? newValue) => setValue(
      ref,
      companion!
          .copyWith(numSpecialProjectsInvestigations: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survSamplingInfo;

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
