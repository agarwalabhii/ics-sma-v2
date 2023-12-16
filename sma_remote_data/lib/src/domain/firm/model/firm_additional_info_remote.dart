
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';
import 'package:sma_remote_data/src/anet_apis/value_placeholder.dart';

extension FirmAdditionalInfoRemote on FirmInfo {
  FirmAdditionalInfoData toFirmAddtionalInfo({int? localId}) {
    return FirmAdditionalInfoData(
      id: firmId!,
      recordType: RecordType.remote,
      otherRegulatoryInfo: localMappedValueTBD(),
      additionalComments: localMappedValueTBD(),
    );
  }

  FirmInfo copyWithFirmAdditionalInfo(FirmAdditionalInfoData local) {
   return copyWith(
    );
  }
}
