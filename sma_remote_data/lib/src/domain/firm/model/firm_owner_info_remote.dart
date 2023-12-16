
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';

extension FirmOwnerInfoRemote on FirmInfo {
  FirmOwnerInfoData toFirmOwnerInfo({int? localId}) {
    return FirmOwnerInfoData(
      id: firmId!,
      recordType: RecordType.remote,
      ownerContactId: owner?.contactInfoId,
    );
  }

  FirmInfo copyWithFirmOwnerInfo(FirmOwnerInfoData local) {
   return copyWith(
    );
  }
}
