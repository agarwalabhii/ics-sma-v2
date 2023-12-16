import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/firm/table/firm_owner_info_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'firm_owner_info_repository_local.g.dart';

@riverpod
class FirmOwnerInfoRepositoryLocal extends _$FirmOwnerInfoRepositoryLocal
    with
        DomainMutateMixin<FirmOwnerInfo, db.FirmOwnerInfoData>,
        DomainFetchIdMixin<FirmOwnerInfo, db.FirmOwnerInfoData>,
        DomainDeleteMixin<FirmOwnerInfo, db.FirmOwnerInfoData>
    implements
        LocalMutableRepository<db.FirmOwnerInfoData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<FirmOwnerInfo, db.FirmOwnerInfoData> get table =>
      database.firmOwnerInfo;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.FirmOwnerInfoData dataClass) => false;
}
