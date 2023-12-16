
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';

extension SurvRemote on Surveillance {
  SurvData toSurv({int? localId}) {
    return SurvData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      creatorId: createdEmpId,
      createdDate: createdDate,
      firmId: firmID,
      localId: localId,
      recordStatus: RecordStatus.published,
      syncStatus: SyncStatus.synchronized,
      syncTimestamp: DateTime.now().toUtc(),
    );
  }

  Surveillance copyWithSurv(SurvData surv) {
   return copyWith(
      firmID: surv.firmId,
      createdDate: surv.createdDate,
      createdEmpId: surv.creatorId ?? 10459,
    );
  }
}
