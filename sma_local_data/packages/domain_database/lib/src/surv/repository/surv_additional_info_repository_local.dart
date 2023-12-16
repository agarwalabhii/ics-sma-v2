import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_additional_info_table.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;
import 'package:local_common/database.dart';

part 'surv_additional_info_repository_local.g.dart';

@riverpod
class SurvAdditionalInfoRepositoryLocal
    extends _$SurvAdditionalInfoRepositoryLocal
    with
        DomainMutateMixin<SurvAdditionalInfo, db.SurvAdditionalInfoData>,
        DomainFetchIdMixin<SurvAdditionalInfo, db.SurvAdditionalInfoData>,
        DomainDeleteMixin<SurvAdditionalInfo, db.SurvAdditionalInfoData>
    implements
        LocalMutableRepository<db.SurvAdditionalInfoData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvAdditionalInfo, db.SurvAdditionalInfoData> get table =>
      database.survAdditionalInfo;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  @override
  bool isSparseData(db.SurvAdditionalInfoData dataClass) {
    return false;
  }
}
