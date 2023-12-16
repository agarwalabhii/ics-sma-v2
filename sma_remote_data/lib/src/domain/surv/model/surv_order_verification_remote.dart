import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/choice_bool.dart';

extension SurvOrderVerificationRemote on Surveillance {
  SurvOrderVerificationData toSurvOrderVerification() {
    return SurvOrderVerificationData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      firmInCompliance: ChoiceValue.fromRemoteModel(complianceWithTermsAndConditions).value,
    );
  }

  Surveillance copyWithSurvOrderVerification(SurvOrderVerificationData dataClass) {
   return copyWith(
      complianceWithTermsAndConditions: ChoiceBool(dataClass.firmInCompliance).asYNNull,
    );
  }
}
