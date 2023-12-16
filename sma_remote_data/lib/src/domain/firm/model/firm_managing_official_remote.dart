
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';

extension FirmManagingOfficialRemote on FirmInfo {
  FirmManagingOfficialData toFirmManagingOfficial({int? localId}) {
    return FirmManagingOfficialData(
      id: firmId!,
      recordType: RecordType.remote,
    );
  }

  FirmInfo copyWithFirmManagingOfficial(FirmManagingOfficialData local) {
   return copyWith(
    );
  }
}
