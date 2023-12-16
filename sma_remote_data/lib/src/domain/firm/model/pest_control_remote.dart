
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';

extension PestControlRemote on FirmInfo {
  PestControlData? toPestControl() {
    if (pestControl != null && pestControl?.pestControlId != null) {
      final data = pestControl!;
      return PestControlData(
        id: data.pestControlId!,
        name: data.name,
        phoneNumber: data.phoneNumber,
        phoneNumberExtension: data.phoneNumberExtension,
        email: data.email,
        selfAdministered: data.selfAdministered,
        frequencyOfVisits: data.frequencyOfVisits,
      );
    }
    return null;
  }

  FirmInfo copyWithFirmAdditionalInfo(FirmAdditionalInfoData local) {
   return copyWith(
    );
  }
}
