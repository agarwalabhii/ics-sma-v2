import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/choice_bool.dart';

extension SurvAdditionalInfoRemote on Surveillance {
  SurvAdditionalInfoData toSurvAdditionalInfo() {
    return SurvAdditionalInfoData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      investigatorMeetRep: ChoiceValue.fromRemoteModel(investigatorMetWithRepresentative).value,
      investigatorReferFindings: ChoiceValue.fromRemoteModel(didReferSurvFindings).value,
      isFollowUpFromPrevious: ChoiceValue.fromRemoteModel(followUpFromPrevious).value,
      firmRepresentative1: firmRepresentative1,
      firmRepresentativeTitle1: firmRepresentativeTitle1,
      firmRepresentative2: firmRepresentative2,
      firmRepresentativeTitle2: firmRepresentativeTitle2,
      referralComments: referralComments,
      followUpDateComplete: followUpCompletedDate,
      primaryBusinessType: primaryBusinessTypeAtTimeOfAction,
      
    );
  }

  Surveillance copyWithSurvAdditionalInfo(SurvAdditionalInfoData dataClass) {
   return copyWith(
      investigatorMetWithRepresentative: ChoiceBool(dataClass.investigatorMeetRep).asYNNull,
      didReferSurvFindings: ChoiceBool(dataClass.investigatorReferFindings).asYNNull,
      followUpFromPrevious: ChoiceBool(dataClass.isFollowUpFromPrevious).asYNNull,
      firmRepresentative1: dataClass.firmRepresentative1,
      firmRepresentativeTitle1: dataClass.firmRepresentativeTitle1,
      firmRepresentative2: dataClass.firmRepresentative2,
      firmRepresentativeTitle2: dataClass.firmRepresentativeTitle2,
      referralComments: dataClass.referralComments,
      followUpCompletedDate: dataClass.followUpDateComplete,
      primaryBusinessTypeAtTimeOfAction: dataClass.primaryBusinessType,
    );
  }
}
