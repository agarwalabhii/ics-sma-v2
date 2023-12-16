import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_general_info_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'surv_general_info_repository_local.g.dart';

@riverpod
class SurvGeneralInfoRepositoryLocal extends _$SurvGeneralInfoRepositoryLocal
    with
        DomainMutateMixin<SurvGeneralInfo, db.SurvGeneralInfoData>,
        DomainFetchIdMixin<SurvGeneralInfo, db.SurvGeneralInfoData>,
        DomainDeleteMixin<SurvGeneralInfo, db.SurvGeneralInfoData>
    implements
        LocalMutableRepository<db.SurvGeneralInfoData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvGeneralInfo, db.SurvGeneralInfoData> get table =>
      database.survGeneralInfo;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  @override
  bool isSparseData(db.SurvGeneralInfoData dataClass) {
    return false;
  }
}
