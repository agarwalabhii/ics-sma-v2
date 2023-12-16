import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/firm/table/firm_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'firm_repository_local.g.dart';

@riverpod
class FirmRepositoryLocal extends _$FirmRepositoryLocal
    with
        DomainMutateMixin<Firm, db.FirmData>,
        DomainFetchIdMixin<Firm, db.FirmData>,
        DomainDeleteMixin<Firm, db.FirmData>
    implements
        LocalMutableRepository<db.FirmData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<Firm, db.FirmData> get table =>
      database.firm;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<List<int>> fetchLocalFirmIds() async {
    return await database.fetchLocalFirmIds();
  }
  
  @override
  bool isSparseData(db.FirmData dataClass) => false;
}
