import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/firm/table/firm_general_info_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'firm_general_info_repository_local.g.dart';

@riverpod
class FirmGeneralInfoRepositoryLocal extends _$FirmGeneralInfoRepositoryLocal
    with
        DomainMutateMixin<FirmGeneralInfo, db.FirmGeneralInfoData>,
        DomainFetchIdMixin<FirmGeneralInfo, db.FirmGeneralInfoData>,
        DomainDeleteMixin<FirmGeneralInfo, db.FirmGeneralInfoData>
    implements
        LocalMutableRepository<db.FirmGeneralInfoData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<FirmGeneralInfo, db.FirmGeneralInfoData> get table =>
      database.firmGeneralInfo;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.FirmGeneralInfoData dataClass) => false;
}
