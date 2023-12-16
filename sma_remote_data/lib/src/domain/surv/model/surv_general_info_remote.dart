import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';

extension SurvGeneralInfoRemote on Surveillance {
  SurvGeneralInfoData toSurvGeneralInfo() {
    return SurvGeneralInfoData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      datePerformed: datePerf,
      reason: MultiString.fromString(reason),
      retailProject: MultiString.fromString(retailProject),
      retailProjectOther: MultiString.fromString(retailProjectOther),
      retailSpecialProject: MultiString.fromString(retailSpecialProject),
      firmNameAtTimeOfAction: firmNameAtTimeOfAction,
    );
  }

  Surveillance copyWithSurvGeneralInfo(SurvGeneralInfoData dataClass) {
   return copyWith(
      datePerf: dataClass.datePerformed,
      reason: dataClass.reason?.oneString,
      retailProject: dataClass.retailProject?.oneString,
      retailProjectOther: dataClass.retailProjectOther?.oneString,
      retailSpecialProject: dataClass.retailSpecialProject?.oneString,
      firmNameAtTimeOfAction: dataClass.firmNameAtTimeOfAction,
    );
  }
}
