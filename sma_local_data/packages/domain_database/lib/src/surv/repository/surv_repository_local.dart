import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'surv_repository_local.g.dart';

@riverpod
class SurvRepositoryLocal extends _$SurvRepositoryLocal
    with
        DomainMutateMixin<Surv, db.SurvData>,
        DomainFetchIdMixin<Surv, db.SurvData>,
        DomainDeleteMixin<Surv, db.SurvData>
    implements
        LocalMutableRepository<db.SurvData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<Surv, db.SurvData> get table => database.surv;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<List<int>> fetchLocalSurvIds() async {
    return await database.fetchLocalSurvIds();
  }

  @override
  bool isSparseData(db.SurvData dataClass) {
    return false;
  }
}
