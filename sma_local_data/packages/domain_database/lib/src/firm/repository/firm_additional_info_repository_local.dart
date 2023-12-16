import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/firm/table/firm_Additional_info_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'firm_additional_info_repository_local.g.dart';

@riverpod
class FirmAdditionalInfoRepositoryLocal extends _$FirmAdditionalInfoRepositoryLocal
    with
        DomainMutateMixin<FirmAdditionalInfo, db.FirmAdditionalInfoData>,
        DomainFetchIdMixin<FirmAdditionalInfo, db.FirmAdditionalInfoData>,
        DomainDeleteMixin<FirmAdditionalInfo, db.FirmAdditionalInfoData>
    implements
        LocalMutableRepository<db.FirmAdditionalInfoData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<FirmAdditionalInfo, db.FirmAdditionalInfoData> get table =>
      database.firmProductInfo as drift.TableInfo<FirmAdditionalInfo, db.FirmAdditionalInfoData>;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  @override
  bool isSparseData(db.FirmAdditionalInfoData dataClass) {
    return false;
  }
}
