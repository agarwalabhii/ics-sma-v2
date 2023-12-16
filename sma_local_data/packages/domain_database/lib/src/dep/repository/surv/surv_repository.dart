import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/dep/repository/surv/surv_model.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = Surv;
typedef RepoDataClass = SurvData;
typedef RepoCompanion = SurvCompanion;

abstract class SurvRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvModel {
  bool recordCreated = false;

  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvRepository({required this.modelContext}) {
    if (modelContext.featureMode.editMode ||
        modelContext.featureMode.viewMode) {
      recordCreated = true;
    }
  }

  //
  // Field methods
  //

  @override
  void setId(WidgetRef ref, int newValue) =>
      setValue(ref, companion!.copyWith(id: drift.Value(newValue)));

  @override
  int? get firmId => companion?.firmId.value;

  @override
  void setFirmId(WidgetRef ref, int? newValue) {
    // TODO: remove and add surv id to firm table
    if (newValue != null) {
      final db = ref.watch(DomainDatabase.provider);
      db.firmDao.updateLastSurvId(newValue, id);
    }
    setValue(ref, companion!.copyWith(firmId: drift.Value(newValue)));
  }

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) => db.surv;

  @override
  void bootstrap(WidgetRef ref) {
    companion ??= ref.watch(provider(modelContext.id));
    resetCompanion ??= companion;
    super.bootstrap(ref);
  }

  @override
  Future<void> performAction(WidgetRef ref, FormAction action) async {
    if (!recordCreated || companion != resetCompanion) {
      await super.performAction(ref, action);
      recordCreated = true;
    }
  }

  @override
  void setValue(WidgetRef ref, RepoCompanion? newCompanion) {
    ref.watch(provider(modelContext.id).notifier).state = newCompanion!;
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
