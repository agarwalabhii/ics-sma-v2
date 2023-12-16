
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';

extension FirmProductInfoRemote on FirmInfo {
  FirmProductInfoData toFirmProductInfo({int? localId}) {
    return FirmProductInfoData(
      id: firmId!,
      recordType: RecordType.remote,
      countryOfOrigin: countryOrigin,
    );
  }

  FirmInfo copyWithFirmProductInfo(FirmProductInfoData local) {
   return copyWith(
    );
  }
}
