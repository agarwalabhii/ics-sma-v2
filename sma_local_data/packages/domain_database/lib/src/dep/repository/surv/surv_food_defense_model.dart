import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class SurvFoodDefenseModel extends ModelBase {
  bool? get wasFoodDefenseConducted;
  void setWasFoodDefenseConducted(WidgetRef ref, bool? newValue);

  bool? get meatCheck;
  void setMeatCheck(WidgetRef ref, bool? newValue);
  bool? get eggCheck;
  void setEggCheck(WidgetRef ref, bool? newValue);
  bool? get shellEggCheck;
  void setShellEggCheck(WidgetRef ref, bool? newValue);
  bool? get poultryCheck;
  void setPoultryCheck(WidgetRef ref, bool? newValue);
  bool? get nonAmenableCheck;
  void setNonAmenableCheck(WidgetRef ref, bool? newValue);
  bool? get siluriformesFishCheck;
  void setSiluriformesFishCheck(WidgetRef ref, bool? newValue);

  bool? get hasWrittenFoodDefensePlan;
  void setHasWrittenFoodDefensePlan(WidgetRef ref, bool? newValue);
  bool? get hasEmergencyContactInfo;
  void setHasEmergencyContactInfo(WidgetRef ref, bool? newValue);
  bool? get hasOutsideSurveillanceSystem;
  void setHasOutsideSurveillanceSystem(WidgetRef ref, bool? newValue);
  bool? get hasInsideSurveillanceSystem;
  void setHasInsideSurveillanceSystem(WidgetRef ref, bool? newValue);
  bool? get hasProceduresForAuthorizedPersons;
  void setHasProceduresForAuthorizedPersons(WidgetRef ref, bool? newValue);
  bool? get hasStoreProceduresForHazardousMaterials;
  void setHasStoreProceduresForHazardousMaterials(
      WidgetRef ref, bool? newValue);
  bool? get hasLogToIdentifyEmployeesAndVisitors;
  void setHasLogToIdentifyEmployeesAndVisitors(WidgetRef ref, bool? newValue);
  bool? get hasShippingRecordAccessRestricted;
  void setHasShippingRecordAccessRestricted(WidgetRef ref, bool? newValue);
  bool? get wasSecurityVulnerabilitiesDiscussed;
  void setWasSecurityVulnerabilitiesDiscussed(WidgetRef ref, bool? newValue);
  bool? get recordsMaintained;
  void setRecordsMaintained(WidgetRef ref, bool? newValue);
  bool? get hasProdedureForFoodAndFoodIngredients;
  void setHasProdedureForFoodAndFoodIngredients(WidgetRef ref, bool? newValue);
  bool? get hasProcedureForIncomingShippingDocuments;
  void setHasProcedureForIncomingShippingDocuments(
      WidgetRef ref, bool? newValue);
  bool? get isFreeFromTampering;
  void setIsFreeFromTampering(WidgetRef ref, bool? newValue);
  bool? get wasDriverIdentificationVerified;
  void setWasDriverIdentificationVerified(WidgetRef ref, bool? newValue);
  bool? get didDetentionOccur;
  void setDidDetentionOccur(WidgetRef ref, bool? newValue);
  bool? get wasForm5420Provided;
  void setWasForm5420Provided(WidgetRef ref, bool? newValue);
  bool? get wasMaintenenceSecurityDuringShip;
  void setWasMaintenenceSecurityDuringShip(WidgetRef ref, bool? newValue);
  bool? get productsFreeFromTampering;
  void setProductsFreeFromTampering(WidgetRef ref, bool? newValue);
  String? get foodDefenseExitNotes;
  void setFoodDefenseExitNotes(WidgetRef ref, String? newValue);
  String? get investigatorNotes;
  void setInvestigatorNotes(WidgetRef ref, String? newValue);
}
