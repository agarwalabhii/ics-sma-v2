import 'package:domain_database/domain_database.dart';
import 'package:drift/drift.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

mixin ModelBaseMixin<T extends IdentifiableEntity, D extends DataClass,
    C extends UpdateCompanion<D>> {
  C? get companion;
  C? get resetCompanion;
  set resetCompanion(C? newValue);

  ModelContext get modelContext;

  void setValue(WidgetRef ref, C newCompanion);

  void setFetchedResult(D dataClass);

  TableInfo<T, D> getTable(DomainDatabase db);

  void bootstrap(WidgetRef ref) {
    ref.listen(formActionProvider, (FormAction? previous, FormAction next) async {
      if (previous != next && next.lifecyle == ActionLifeCycle.initiated) {
        await performAction(ref, next);
        ref.watch(formActionProvider.notifier).state = next.saveReadyForNavigation();
      }
    });
  }

  Future<void> loadIf(AutoDisposeFutureProviderRef<Widget> ref) async {
    final db = ref.watch(DomainDatabase.provider);
    final results = await db.byId(id, getTable(db));
    if (results != null) {
      setFetchedResult(results);
    }
  }

  Future<void> performAction(WidgetRef ref, FormAction action) async {
    if (action.type == FormActionType.save && action.lifecyle == ActionLifeCycle.initiated) {
      if (companion != resetCompanion) {
        if (action.saveSubActionType != null) {
          switch (action.saveSubActionType) {
            case SaveSubActionType.publish:
              // setRecordStatus(ref, companion, RecordStatus.published);
              break;
            default:
              break;
          }
        }
        final db = ref.watch(DomainDatabase.provider);
        await db.createOrUpdate(companion!, getTable(db));
        resetCompanion = companion;
        print("saved: ${action.timestamp}");
      }
    }
  }

  FeatureMode get featureMode => modelContext.featureMode;

  int get id => modelContext.id;
}
