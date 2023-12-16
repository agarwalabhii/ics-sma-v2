
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/choice_bool.dart';

extension SurvFoodDefenseRemote on Surveillance {
  SurvFoodDefenseData toSurvFoodDefense() {
    return SurvFoodDefenseData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      wasFoodDefenseConducted: wasFoodDefenseConducted,
      meatCheck: ChoiceValue.fromRemoteModel(meatCheck).value,
      eggCheck: ChoiceValue.fromRemoteModel(eggCheck).value,
      poultryCheck: ChoiceValue.fromRemoteModel(poultryCheck).value,
      nonAmenableCheck: ChoiceValue.fromRemoteModel(nonAmenableCheck).value,
      siluriformesFishCheck: ChoiceValue.fromRemoteModel(siluriformesFishCheck).value,
      hasWrittenFoodDefensePlan: ChoiceValue.fromRemoteModel(foodDefensePlan).value,
      hasEmergencyContactInfo: ChoiceValue.fromRemoteModel(emergencyContactInfo).value,
      hasOutsideSurveillanceSystem: ChoiceValue.fromRemoteModel(outsideSurveillanceSystem).value,
      hasInsideSurveillanceSystem: ChoiceValue.fromRemoteModel(insideSurveillanceSystem).value,
      hasProceduresForAuthorizedPersons: ChoiceValue.fromRemoteModel(proceduresForAuthorizedPersons).value,
      hasStoreProceduresForHazardousMaterials: ChoiceValue.fromRemoteModel(storageProceduresForHazardousMaterials).value,
      hasLogToIdentifyEmployeesAndVisitors: ChoiceValue.fromRemoteModel(logToIdentify).value,
      hasShippingRecordAccessRestricted: ChoiceValue.fromRemoteModel(shippingReceivingAreasRestricted).value,
      wasSecurityVulnerabilitiesDiscussed: ChoiceValue.fromRemoteModel(securityVulnerabilitiesDiscussed).value,
      recordsMaintained: ChoiceValue.fromRemoteModel(recordsMaintained).value,
      hasProdedureForFoodAndFoodIngredients: ChoiceValue.fromRemoteModel(foodDefensePlan).value,
      hasProcedureForIncomingShippingDocuments: ChoiceValue.fromRemoteModel(incomingShippingDocuments).value,
      isFreeFromTampering: ChoiceValue.fromRemoteModel(freeFromTampering).value,
      wasDriverIdentificationVerified: ChoiceValue.fromRemoteModel(verifyDriverIdentification).value,
      didDetentionOccur: ChoiceValue.fromRemoteModel(didDetentionOccur).value,
      wasForm5420Provided: ChoiceValue.fromRemoteModel(form5420Provided).value,
      wasMaintenenceSecurityDuringShip: ChoiceValue.fromRemoteModel(checkForShippingMark).value,
    );
  }

  Surveillance copyWithSurvFoodDefense(SurvFoodDefenseData dataClass) {
   return copyWith(
      wasFoodDefenseConducted: dataClass.wasFoodDefenseConducted,
      meatCheck: ChoiceBool(dataClass.meatCheck).asYNNull,
      eggCheck: ChoiceBool(dataClass.eggCheck).asYNNull,
      poultryCheck: ChoiceBool(dataClass.poultryCheck).asYNNull,
      nonAmenableCheck: ChoiceBool(dataClass.nonAmenableCheck).asYNNull,
      siluriformesFishCheck: ChoiceBool(dataClass.siluriformesFishCheck).asYNNull,
      foodDefensePlan: ChoiceBool(dataClass.hasWrittenFoodDefensePlan).asYNNull,
      emergencyContactInfo: ChoiceBool(dataClass.hasEmergencyContactInfo).asYNNull,
      outsideSurveillanceSystem: ChoiceBool(dataClass.hasOutsideSurveillanceSystem).asYNNull,
      insideSurveillanceSystem: ChoiceBool(dataClass.hasInsideSurveillanceSystem).asYNNull,
      proceduresForAuthorizedPersons: ChoiceBool(dataClass.hasProceduresForAuthorizedPersons).asYNNull,
      storageProceduresForHazardousMaterials: ChoiceBool(dataClass.hasStoreProceduresForHazardousMaterials).asYNNull,
      logToIdentify: ChoiceBool(dataClass.hasLogToIdentifyEmployeesAndVisitors).asYNNull,
      shippingReceivingAreasRestricted: ChoiceBool(dataClass.hasShippingRecordAccessRestricted).asYNNull,
      securityVulnerabilitiesDiscussed: ChoiceBool(dataClass.wasSecurityVulnerabilitiesDiscussed).asYNNull,
      recordsMaintained: ChoiceBool(dataClass.recordsMaintained).asYNNull,
      incomingShippingDocuments: ChoiceBool(dataClass.hasProcedureForIncomingShippingDocuments).asYNNull,
      freeFromTampering: ChoiceBool(dataClass.isFreeFromTampering).asYNNull,
      verifyDriverIdentification: ChoiceBool(dataClass.wasDriverIdentificationVerified).asYNNull,
      didDetentionOccur: ChoiceBool(dataClass.didDetentionOccur).asYNNull,
      form5420Provided: ChoiceBool(dataClass.wasForm5420Provided).asYNNull,
      checkForShippingMark: ChoiceBool(dataClass.wasMaintenenceSecurityDuringShip).asYNNull,
    );
  }
}
