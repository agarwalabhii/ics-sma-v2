import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_table.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/dep/repository/firm/firm_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = Firm;
typedef RepoDataClass = FirmData;
typedef RepoCompanion = FirmCompanion;

abstract class FirmRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements FirmModel {
  bool recordCreated = false;

  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  FirmRepository({required this.modelContext}) {
    if (modelContext.featureMode.editMode ||
        modelContext.featureMode.viewMode) {
      recordCreated = true;
    }
  }

  //
  // Field methods
  //

  @override
  int? get lastSurvId => companion?.lastSurvId.value;

  @override
  void setLastSurvId(WidgetRef ref, int? newValue) =>
      setValue(ref, companion!.copyWith(lastSurvId: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) => db.firm;

  @override
  void bootstrap(WidgetRef ref) {
    companion ??= ref.watch(provider(modelContext.id));
    resetCompanion ??= companion;
    super.bootstrap(ref);
  }

  @override
  Future<void> performAction(WidgetRef ref, FormAction action) async {
    if (!recordCreated || companion != resetCompanion) {
      setValue(
          ref, companion!.copyWith(createdDate: drift.Value(action.timestamp!)));
      await super.performAction(ref, action);
      recordCreated = true;
    }
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
