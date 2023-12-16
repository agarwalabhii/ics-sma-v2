import 'package:domain_database/src/dep/repository/surv/surv_shell_eggs_model.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/surv/table/surv_shell_eggs_table.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef RepoTable = SurvShellEgg;
typedef RepoDataClass = SurvShellEggData;
typedef RepoCompanion = SurvShellEggCompanion;

abstract class SurvShellEggRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvShellEggsModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  @override
  SurvShellEggRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  bool? get wereShellEggsObserved => companion?.wereShellEggsObserved.value;

  @override
  void setWereShellEggsObserved(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(wereShellEggsObserved: drift.Value(newValue)));

  @override
  String? get comments => companion?.comments.value;

  @override
  void setComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(comments: drift.Value(newValue)));

  @override
  MultiString? get shellEggTemperatureList =>
      companion?.shellEggTemperatureList.value;

  @override
  void setShellEggTemperatureList(WidgetRef ref, MultiString? newValue) =>
      setValue(ref,
          companion!.copyWith(shellEggTemperatureList: drift.Value(newValue)));

  @override
  bool? get areShellEggPropertyMaintained =>
      companion?.areShellEggPropertyMaintained.value;

  @override
  void setAreShellEggPropertyMaintained(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(areShellEggPropertyMaintained: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survShellEgg;

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
