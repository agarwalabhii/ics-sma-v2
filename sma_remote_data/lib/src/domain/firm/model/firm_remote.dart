
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';

extension FirmRemote on FirmInfo {
  FirmData toFirm({int? localId}) {
    return FirmData(
      id: firmId!,
      creatorId: createdEmpId,
      createdDate: createdDate,
      localId: localId,
      recordStatus: RecordStatus.published,
      recordType: RecordType.remote,
      syncStatus: SyncStatus.synchronized,
      syncTimestamp: DateTime.now().toUtc(),
    );
  }

  FirmInfo copyWithFirm(FirmData firm) {
   return copyWith(
      firmId: firm.id,
      createdDate: firm.createdDate,
      createdEmpId: firm.creatorId,
    );
  }
}
