import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.models.swagger.dart';

extension FirmOrganizationStructRemote on FirmInfo {
  FirmOrganizationStructData toFirmAOrganizationStruct({int? localId}) {
    return FirmOrganizationStructData(
      id: firmId!,
      recordType: RecordType.remote,
      organizationName: orgName,
      organizationType: orgType,
      organizationAddress1: orgAddress1,
      organizationAddress2: orgAddress2,
      organizationCity: orgCity,
      organizationState: orgState,
      organizationZipCode: orgZipCode,
      organizationCounty: orgCounty,
      sameAsFirmName: orgSameAsFirmName,
      sameAsPhysicalAddress: orgSameAsPhysicalAddress,
      sameAsMailingAddress: orgSameAsMailAddress,
    );
  }

  FirmInfo copyWithFirmOrganizationStruct(FirmOrganizationStructData local) {
    return copyWith(
      orgName: local.organizationName,
      orgType: local.organizationType,
      orgAddress1: local.organizationAddress1,
      orgAddress2: local.organizationAddress2,
      orgCity: local.organizationCity,
      orgState: local.organizationState,
      orgCounty: local.organizationCounty,
      orgSameAsFirmName: local.sameAsFirmName,
      orgSameAsPhysicalAddress: local.sameAsPhysicalAddress,
      orgSameAsMailAddress: local.sameAsMailingAddress,
    );
  }
}
