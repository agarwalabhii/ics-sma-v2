import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/firm/table/firm_managing_official_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'firm_managing_official_repository_local.g.dart';

@riverpod
class FirmManagingOfficialRepositoryLocal extends _$FirmManagingOfficialRepositoryLocal
    with
        DomainMutateMixin<FirmManagingOfficial, db.FirmManagingOfficialData>,
        DomainFetchIdMixin<FirmManagingOfficial, db.FirmManagingOfficialData>,
        DomainDeleteMixin<FirmManagingOfficial, db.FirmManagingOfficialData>
    implements
        LocalMutableRepository<db.FirmManagingOfficialData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<FirmManagingOfficial, db.FirmManagingOfficialData> get table =>
      database.firmManagingOfficial;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.FirmManagingOfficialData dataClass) => false;
}
