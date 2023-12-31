import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/database.dart';

import '../model_base.dart';

abstract class SurvCustomExemptReviewModel extends ModelBase {
  bool? get wasCustomExemptReviewConducted;
  void setWasCustomExemptReviewConducted(WidgetRef ref, bool? newValue);
  bool? get doesFacilityPerformCustomSlaughter;
  void setDoesFacilityPerformCustomSlaughter(WidgetRef ref, bool? newValue);
  bool? get doesFacilityPerformCustomProcessing;
  void setDoesFacilityPerformCustomProcessing(WidgetRef ref, bool? newValue);
  String? get doesFacilityEmail;
  void setDoesFacilityEmail(WidgetRef ref, String? newValue);
  bool? get officialEstablishment;
  void setOfficialEstablishment(WidgetRef ref, bool? newValue);
  bool? get copyGiven;
  void setCopyGiven(WidgetRef ref, bool? newValue);
  bool? get humaneLivestockSlaughter;
  void setHumaneLivestockSlaughter(WidgetRef ref, bool? newValue);
  String? get humaneLivestockSlaughterText;
  void setHumaneLivestockSlaughterText(WidgetRef ref, String? newValue);
  bool? get recordkeepingAcceptable;
  void setRecordkeepingAcceptable(WidgetRef ref, bool? newValue);
  String? get recordkeepingAcceptableText;
  void setRecordkeepingAcceptableText(WidgetRef ref, String? newValue);
  bool? get sanitaryOperationsAcceptable;
  void setSanitaryOperationsAcceptable(WidgetRef ref, bool? newValue);
  String? get sanitaryOperationsAcceptableText;
  void setSanitaryOperationsAcceptableText(WidgetRef ref, String? newValue);
  bool? get pestControlAcceptable;
  void setPestControlAcceptable(WidgetRef ref, bool? newValue);
  String? get pestControlAcceptableText;
  void setPestControlAcceptableText(WidgetRef ref, String? newValue);
  bool? get ineditbleMaterialAcceptable;
  void setIneditbleMaterialAcceptable(WidgetRef ref, bool? newValue);
  String? get ineditbleMaterialAcceptableText;
  void setIneditbleMaterialAcceptableText(WidgetRef ref, String? newValue);
  bool? get labelingAcceptable;
  void setLabelingAcceptable(WidgetRef ref, bool? newValue);
  String? get labelingAcceptableText;
  void setLabelingAcceptableText(WidgetRef ref, String? newValue);
  bool? get pathogenAcceptable;
  void setPathogenAcceptable(WidgetRef ref, bool? newValue);
  String? get pathogenAcceptableText;
  void setPathogenAcceptableText(WidgetRef ref, String? newValue);
  bool? get waterAcceptable;
  void setWaterAcceptable(WidgetRef ref, bool? newValue);
  String? get waterAcceptableText;
  void setWaterAcceptableText(WidgetRef ref, String? newValue);
  bool? get wasteAcceptable;
  void setWasteAcceptable(WidgetRef ref, bool? newValue);
  String? get wasteAcceptableText;
  void setWasteAcceptableText(WidgetRef ref, String? newValue);
  bool? get misbrandedObservedLabel;
  void setMisbrandedObservedLabel(WidgetRef ref, bool? newValue);
  String? get misbrandedObservedLabelText;
  void setMisbrandedObservedLabelText(WidgetRef ref, String? newValue);
  bool? get misbrandedLikelyLabel;
  void setMisbrandedLikelyLabel(WidgetRef ref, bool? newValue);
  String? get misbrandedLikelyLabelText;
  void setMisbrandedLikelyLabelText(WidgetRef ref, String? newValue);
  bool? get adminsitrativeConsentAgreement;
  void setAdminsitrativeConsentAgreement(WidgetRef ref, bool? newValue);
  String? get adminsitrativeConsentAgreementText;
  void setAdminsitrativeConsentAgreementText(WidgetRef ref, String? newValue);
  bool? get recommendForRemovalOfPrivileges;
  void setRecommendForRemovalOfPrivileges(WidgetRef ref, bool? newValue);
  DateTime? get dateCopyGiven;
  void setDateCopyGiven(WidgetRef ref, DateTime? newValue);
  MultiString? get species;
  void setSpecies(WidgetRef ref, MultiString? newValue);
  String? get reviewInterval;
  void setReviewInterval(WidgetRef ref, String? newValue);
  String? get otherInterval;
  void setOtherInterval(WidgetRef ref, String? newValue);
  String? get otherSpecies;
  void setOtherSpecies(WidgetRef ref, String? newValue);
  String? get additionalComments;
  void setAdditionalComments(WidgetRef ref, String? newValue);
  String? get nameIIC;
  void setNameIIC(WidgetRef ref, String? newValue);
  String? get namePHV;
  void setNamePHV(WidgetRef ref, String? newValue);
}
