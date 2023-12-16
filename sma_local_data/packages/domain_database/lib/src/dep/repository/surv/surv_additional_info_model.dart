import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class SurvAdditionalInfoModel extends ModelBase {
  bool? get investigatorMeetRep;
  void setInvestigatorMeetRep(WidgetRef ref, bool? newValue);
  bool? get investigatorReferFindings;
  void setInvestigatorReferFindings(WidgetRef ref, bool? newValue);
  String? get firmRepresentative1;
  void setFirmRepresentative1(WidgetRef ref, String? newValue);
  String? get firmRepresentativeTitle1;
  void setFirmRepresentativeTitle1(WidgetRef ref, String? newValue);
  String? get firmRepresentative2;
  void setFirmRepresentative2(WidgetRef ref, String? newValue);
  String? get firmRepresentativeTitle2;
  void setFirmRepresentativeTitle2(WidgetRef ref, String? newValue);
  String? get followUpMonths;
  void setFollowUpMonths(WidgetRef ref, String? newValue);
  DateTime? get followUpDateComplete;
  void setFollowUpDateComplete(WidgetRef ref, DateTime? newValue);
  String? get referralComments;
  void setReferralComments(WidgetRef ref, String? newValue);
  String? get followUpComments;
  void setFollowUpComments(WidgetRef ref, String? newValue);
  String? get additionalComments;
  void setAdditionalComments(WidgetRef ref, String? newValue);
  bool? get isFollowUp;
  void setIsFollowUp(WidgetRef ref, bool? newValue);
  bool? get isFollowUpFromPrevious;
  void setIsFollowUpFromPrevious(WidgetRef ref, bool? newValue);
  bool? get followUpComplete;
  void setFollowUpComplete(WidgetRef ref, bool? newValue);
}
