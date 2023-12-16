import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_order_verification_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'surv_order_verification_repository_local.g.dart';

@riverpod
class SurvOrderVerificationRepositoryLocal extends _$SurvOrderVerificationRepositoryLocal
    with
        DomainMutateMixin<SurvOrderVerification, db.SurvOrderVerificationData>,
        DomainFetchIdMixin<SurvOrderVerification, db.SurvOrderVerificationData>,
        DomainDeleteMixin<SurvOrderVerification, db.SurvOrderVerificationData>
    implements
        LocalMutableRepository<db.SurvOrderVerificationData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvOrderVerification, db.SurvOrderVerificationData> get table =>
      database.survOrderVerification;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  @override
  bool isSparseData(db.SurvOrderVerificationData dataClass) {
    return dataClass.firmInCompliance == null &&
        dataClass.individualInCompliance == null &&
        dataClass.additionalComments == null;
  }
}
