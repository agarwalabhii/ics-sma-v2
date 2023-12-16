import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/pest_control/table/pest_control_table.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;
import 'package:local_common/database.dart';

part 'pest_control_repository_local.g.dart';

@riverpod
class PestControlRepositoryLocal
    extends _$PestControlRepositoryLocal
    with
        DomainMutateMixin<PestControl, db.PestControlData>,
        DomainFetchIdMixin<PestControl, db.PestControlData>,
        DomainDeleteMixin<PestControl, db.PestControlData>
    implements
        LocalMutableRepository<db.PestControlData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<PestControl, db.PestControlData> get table =>
      database.pestControl;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.PestControlData dataClass) => false;
}
