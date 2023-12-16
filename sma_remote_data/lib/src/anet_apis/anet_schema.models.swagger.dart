// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'anet_schema.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class Surveillance {
  const Surveillance({
    this.surveillanceId,
    this.firmID,
    this.datePerf,
    this.meatCheck,
    this.poultryCheck,
    this.eggCheck,
    this.shellEggCheck,
    this.siluriformesFishCheck,
    this.nonAmenableCheck,
    this.sampleType,
    this.sampleResult,
    this.followUpDate,
    this.followUpReason,
    this.firmRepresentative1,
    this.firmRepresentativeTitle1,
    this.firmRepresentative2,
    this.firmRepresentativeTitle2,
    this.freqNum,
    this.pestCompany,
    this.createdDate,
    this.createdEmpId,
    this.lastModDate,
    this.lastModEmpId,
    this.supervisorReviewed,
    this.foodDefensePlan,
    this.emergencyContactInfo,
    this.outsideSurveillanceSystem,
    this.insideSurveillanceSystem,
    this.proceduresForAuthorizedPersons,
    this.storageProceduresForHazardousMaterials,
    this.proceduresToProtectFood,
    this.shippingReceivingAreasRestricted,
    this.incomingShippingDocuments,
    this.freeFromTampering,
    this.productsWholesome,
    this.sanitaryConditionsGood,
    this.hazardousControlsAdequate,
    this.nonHumanFoodDenatured,
    this.recordsMaintained,
    this.productsNotMisbranded,
    this.complianceWithTermsAndConditions,
    this.checkForFederalImportInspection,
    this.correctDocumentsRequested,
    this.checkForShippingMark,
    this.phisVerifyForeignCountries,
    this.phisVerifyForeignEstablishmentsEligible,
    this.phisVerifyFSISInspection,
    this.sampleTaken,
    this.sampleFromPreviousSample,
    this.ecoliSampleTaken,
    this.didDetentionOccur,
    this.securityVulnerabilitiesDiscussed,
    this.form5420Provided,
    this.followUpRequired,
    this.followUpFromPrevious,
    this.investigatorMetWithRepresentative,
    this.pestControlVisits,
    this.followUpCompleted,
    this.followUpCompletedDate,
    this.phisVerifyForeignEstablishments,
    this.procedureForProductTampering,
    this.followUpDeadlineDate,
    this.createdEmpName,
    this.firmNameAtTimeOfAction,
    this.lockEmpId,
    this.workflowId,
    this.workflowStateId,
    this.office,
    this.productRecordsAccordingToFoodSafetyActs,
    this.empLocation,
    this.empSubLocation,
    this.respIndvInComp,
    this.shellEggTemperature,
    this.areShellEggsPropMain,
    this.hasChangeHistory,
    this.handlesImportedProducts,
    this.numMTSamples,
    this.numSplProjInvSamples,
    this.noSampleTakenInfo,
    this.firmGrindingRec,
    this.reviewerSupv,
    this.fileAttached,
    this.reason,
    this.nutritionalLabelingVerify,
    this.didReferSurvFindings,
    this.referralComments,
    this.invoiceNbr,
    this.billofLadingNbr,
    this.getaPHISPermitNbr,
    this.gethTSCode,
    this.customEntryNbr,
    this.totalCases,
    this.unitType,
    this.foreignProducerEstNbr,
    this.brokerFirmID,
    this.sampleLabFormNbr,
    this.detainedDisposition,
    this.detainedDispositionDet,
    this.recallDisposition,
    this.recallDispositionDet,
    this.getfTPInitiatedDate,
    this.getfTPDisposition,
    this.getfTPDispositionDet,
    this.getoIGInvestigation,
    this.getoIGInvestigationInitiatedBy,
    this.getoIGInvestigationDate,
    this.retailProject,
    this.retailProjectOther,
    this.retailSpecialProject,
    this.isNewFormat,
    this.verifyDriverIdentification,
    this.tier3Retail,
    this.logToIdentify,
    this.importProdObserve,
    this.phisUsedVerifyProducts,
    this.primaryBusinessTypeAtTimeOfAction,
    this.productVolumeAtTimeOfAction,
    this.tierAtTimeOfAction,
    this.wasFoodDefenseConducted,
    this.title,
    this.wereShellEggsObserved,
    this.foodDefenseInvestigatorId,
    this.surveillanceShellEggTemperatures,
    this.surveillanceChangeHistories,
    this.surveillanceComments,
    this.surveillanceUnlimitedComments,
    this.surveillanceImpProdCountries,
    this.surveillanceQuestions,
    this.productControls,
    this.firmRepresentativeRepTitle1,
    this.storProceduresHazMat,
    this.maintainingSecurityDuringShip,
    this.empLococation,
  });

  factory Surveillance.fromJson(Map<String, dynamic> json) =>
      _$SurveillanceFromJson(json);

  static const toJsonFactory = _$SurveillanceToJson;
  Map<String, dynamic> toJson() => _$SurveillanceToJson(this);

  @JsonKey(name: 'surveillanceId', includeIfNull: false)
  final int? surveillanceId;
  @JsonKey(name: 'firmID', includeIfNull: false)
  final int? firmID;
  @JsonKey(name: 'datePerf', includeIfNull: false)
  final DateTime? datePerf;
  @JsonKey(name: 'meatCheck', includeIfNull: false)
  final String? meatCheck;
  @JsonKey(name: 'poultryCheck', includeIfNull: false)
  final String? poultryCheck;
  @JsonKey(name: 'eggCheck', includeIfNull: false)
  final String? eggCheck;
  @JsonKey(name: 'shellEggCheck', includeIfNull: false)
  final String? shellEggCheck;
  @JsonKey(name: 'siluriformesFishCheck', includeIfNull: false)
  final String? siluriformesFishCheck;
  @JsonKey(name: 'nonAmenableCheck', includeIfNull: false)
  final String? nonAmenableCheck;
  @JsonKey(name: 'sampleType', includeIfNull: false)
  final String? sampleType;
  @JsonKey(name: 'sampleResult', includeIfNull: false)
  final String? sampleResult;
  @JsonKey(name: 'followUpDate', includeIfNull: false)
  final String? followUpDate;
  @JsonKey(name: 'followUpReason', includeIfNull: false)
  final String? followUpReason;
  @JsonKey(name: 'firmRepresentative1', includeIfNull: false)
  final String? firmRepresentative1;
  @JsonKey(name: 'firmRepresentativeTitle1', includeIfNull: false)
  final String? firmRepresentativeTitle1;
  @JsonKey(name: 'firmRepresentative2', includeIfNull: false)
  final String? firmRepresentative2;
  @JsonKey(name: 'firmRepresentativeTitle2', includeIfNull: false)
  final String? firmRepresentativeTitle2;
  @JsonKey(name: 'freqNum', includeIfNull: false)
  final String? freqNum;
  @JsonKey(name: 'pestCompany', includeIfNull: false)
  final String? pestCompany;
  @JsonKey(name: 'createdDate', includeIfNull: false)
  final DateTime? createdDate;
  @JsonKey(name: 'createdEmpId', includeIfNull: false)
  final int? createdEmpId;
  @JsonKey(name: 'lastModDate', includeIfNull: false)
  final DateTime? lastModDate;
  @JsonKey(name: 'lastModEmpId', includeIfNull: false)
  final int? lastModEmpId;
  @JsonKey(name: 'supervisorReviewed', includeIfNull: false)
  final String? supervisorReviewed;
  @JsonKey(name: 'foodDefensePlan', includeIfNull: false)
  final String? foodDefensePlan;
  @JsonKey(name: 'emergencyContactInfo', includeIfNull: false)
  final String? emergencyContactInfo;
  @JsonKey(name: 'outsideSurveillanceSystem', includeIfNull: false)
  final String? outsideSurveillanceSystem;
  @JsonKey(name: 'insideSurveillanceSystem', includeIfNull: false)
  final String? insideSurveillanceSystem;
  @JsonKey(name: 'proceduresForAuthorizedPersons', includeIfNull: false)
  final String? proceduresForAuthorizedPersons;
  @JsonKey(name: 'storageProceduresForHazardousMaterials', includeIfNull: false)
  final String? storageProceduresForHazardousMaterials;
  @JsonKey(name: 'proceduresToProtectFood', includeIfNull: false)
  final String? proceduresToProtectFood;
  @JsonKey(name: 'shippingReceivingAreasRestricted', includeIfNull: false)
  final String? shippingReceivingAreasRestricted;
  @JsonKey(name: 'incomingShippingDocuments', includeIfNull: false)
  final String? incomingShippingDocuments;
  @JsonKey(name: 'freeFromTampering', includeIfNull: false)
  final String? freeFromTampering;
  @JsonKey(name: 'productsWholesome', includeIfNull: false)
  final String? productsWholesome;
  @JsonKey(name: 'sanitaryConditionsGood', includeIfNull: false)
  final String? sanitaryConditionsGood;
  @JsonKey(name: 'hazardousControlsAdequate', includeIfNull: false)
  final String? hazardousControlsAdequate;
  @JsonKey(name: 'nonHumanFoodDenatured', includeIfNull: false)
  final String? nonHumanFoodDenatured;
  @JsonKey(name: 'recordsMaintained', includeIfNull: false)
  final String? recordsMaintained;
  @JsonKey(name: 'productsNotMisbranded', includeIfNull: false)
  final String? productsNotMisbranded;
  @JsonKey(name: 'complianceWithTermsAndConditions', includeIfNull: false)
  final String? complianceWithTermsAndConditions;
  @JsonKey(name: 'checkForFederalImportInspection', includeIfNull: false)
  final String? checkForFederalImportInspection;
  @JsonKey(name: 'correctDocumentsRequested', includeIfNull: false)
  final String? correctDocumentsRequested;
  @JsonKey(name: 'checkForShippingMark', includeIfNull: false)
  final String? checkForShippingMark;
  @JsonKey(name: 'phisVerifyForeignCountries', includeIfNull: false)
  final String? phisVerifyForeignCountries;
  @JsonKey(
      name: 'phisVerifyForeignEstablishmentsEligible', includeIfNull: false)
  final String? phisVerifyForeignEstablishmentsEligible;
  @JsonKey(name: 'phisVerifyFSISInspection', includeIfNull: false)
  final String? phisVerifyFSISInspection;
  @JsonKey(name: 'sampleTaken', includeIfNull: false)
  final String? sampleTaken;
  @JsonKey(name: 'sampleFromPreviousSample', includeIfNull: false)
  final String? sampleFromPreviousSample;
  @JsonKey(name: 'ecoliSampleTaken', includeIfNull: false)
  final String? ecoliSampleTaken;
  @JsonKey(name: 'didDetentionOccur', includeIfNull: false)
  final String? didDetentionOccur;
  @JsonKey(name: 'securityVulnerabilitiesDiscussed', includeIfNull: false)
  final String? securityVulnerabilitiesDiscussed;
  @JsonKey(name: 'form5420Provided', includeIfNull: false)
  final String? form5420Provided;
  @JsonKey(name: 'followUpRequired', includeIfNull: false)
  final String? followUpRequired;
  @JsonKey(name: 'followUpFromPrevious', includeIfNull: false)
  final String? followUpFromPrevious;
  @JsonKey(name: 'investigatorMetWithRepresentative', includeIfNull: false)
  final String? investigatorMetWithRepresentative;
  @JsonKey(name: 'pestControlVisits', includeIfNull: false)
  final String? pestControlVisits;
  @JsonKey(name: 'followUpCompleted', includeIfNull: false)
  final String? followUpCompleted;
  @JsonKey(name: 'followUpCompletedDate', includeIfNull: false)
  final DateTime? followUpCompletedDate;
  @JsonKey(name: 'phisVerifyForeignEstablishments', includeIfNull: false)
  final String? phisVerifyForeignEstablishments;
  @JsonKey(name: 'procedureForProductTampering', includeIfNull: false)
  final String? procedureForProductTampering;
  @JsonKey(name: 'followUpDeadlineDate', includeIfNull: false)
  final DateTime? followUpDeadlineDate;
  @JsonKey(name: 'createdEmpName', includeIfNull: false)
  final String? createdEmpName;
  @JsonKey(name: 'firmNameAtTimeOfAction', includeIfNull: false)
  final String? firmNameAtTimeOfAction;
  @JsonKey(name: 'lockEmpId', includeIfNull: false)
  final int? lockEmpId;
  @JsonKey(name: 'workflowId', includeIfNull: false)
  final double? workflowId;
  @JsonKey(name: 'workflowStateId', includeIfNull: false)
  final double? workflowStateId;
  @JsonKey(name: 'office', includeIfNull: false)
  final String? office;
  @JsonKey(
      name: 'productRecordsAccordingToFoodSafetyActs', includeIfNull: false)
  final String? productRecordsAccordingToFoodSafetyActs;
  @JsonKey(name: 'empLocation', includeIfNull: false)
  final String? empLocation;
  @JsonKey(name: 'empSubLocation', includeIfNull: false)
  final String? empSubLocation;
  @JsonKey(name: 'respIndvInComp', includeIfNull: false)
  final String? respIndvInComp;
  @JsonKey(name: 'shellEggTemperature', includeIfNull: false)
  final String? shellEggTemperature;
  @JsonKey(name: 'areShellEggsPropMain', includeIfNull: false)
  final String? areShellEggsPropMain;
  @JsonKey(name: 'hasChangeHistory', includeIfNull: false)
  final String? hasChangeHistory;
  @JsonKey(name: 'handlesImportedProducts', includeIfNull: false)
  final String? handlesImportedProducts;
  @JsonKey(name: 'numMTSamples', includeIfNull: false)
  final int? numMTSamples;
  @JsonKey(name: 'numSplProjInvSamples', includeIfNull: false)
  final int? numSplProjInvSamples;
  @JsonKey(name: 'noSampleTakenInfo', includeIfNull: false)
  final String? noSampleTakenInfo;
  @JsonKey(name: 'firmGrindingRec', includeIfNull: false)
  final String? firmGrindingRec;
  @JsonKey(name: 'reviewerSupv', includeIfNull: false)
  final int? reviewerSupv;
  @JsonKey(name: 'fileAttached', includeIfNull: false)
  final String? fileAttached;
  @JsonKey(name: 'reason', includeIfNull: false)
  final String? reason;
  @JsonKey(name: 'nutritionalLabelingVerify', includeIfNull: false)
  final String? nutritionalLabelingVerify;
  @JsonKey(name: 'didReferSurvFindings', includeIfNull: false)
  final String? didReferSurvFindings;
  @JsonKey(name: 'referralComments', includeIfNull: false)
  final String? referralComments;
  @JsonKey(name: 'invoiceNbr', includeIfNull: false)
  final String? invoiceNbr;
  @JsonKey(name: 'billofLadingNbr', includeIfNull: false)
  final String? billofLadingNbr;
  @JsonKey(name: 'getaPHISPermitNbr', includeIfNull: false)
  final String? getaPHISPermitNbr;
  @JsonKey(name: 'gethTSCode', includeIfNull: false)
  final String? gethTSCode;
  @JsonKey(name: 'customEntryNbr', includeIfNull: false)
  final String? customEntryNbr;
  @JsonKey(name: 'totalCases', includeIfNull: false)
  final int? totalCases;
  @JsonKey(name: 'unitType', includeIfNull: false)
  final String? unitType;
  @JsonKey(name: 'foreignProducerEstNbr', includeIfNull: false)
  final String? foreignProducerEstNbr;
  @JsonKey(name: 'brokerFirmID', includeIfNull: false)
  final int? brokerFirmID;
  @JsonKey(name: 'sampleLabFormNbr', includeIfNull: false)
  final String? sampleLabFormNbr;
  @JsonKey(name: 'detainedDisposition', includeIfNull: false)
  final String? detainedDisposition;
  @JsonKey(name: 'detainedDispositionDet', includeIfNull: false)
  final String? detainedDispositionDet;
  @JsonKey(name: 'recallDisposition', includeIfNull: false)
  final String? recallDisposition;
  @JsonKey(name: 'recallDispositionDet', includeIfNull: false)
  final String? recallDispositionDet;
  @JsonKey(name: 'getfTPInitiatedDate', includeIfNull: false)
  final DateTime? getfTPInitiatedDate;
  @JsonKey(name: 'getfTPDisposition', includeIfNull: false)
  final String? getfTPDisposition;
  @JsonKey(name: 'getfTPDispositionDet', includeIfNull: false)
  final String? getfTPDispositionDet;
  @JsonKey(name: 'getoIGInvestigation', includeIfNull: false)
  final String? getoIGInvestigation;
  @JsonKey(name: 'getoIGInvestigationInitiatedBy', includeIfNull: false)
  final String? getoIGInvestigationInitiatedBy;
  @JsonKey(name: 'getoIGInvestigationDate', includeIfNull: false)
  final DateTime? getoIGInvestigationDate;
  @JsonKey(name: 'retailProject', includeIfNull: false)
  final String? retailProject;
  @JsonKey(name: 'retailProjectOther', includeIfNull: false)
  final String? retailProjectOther;
  @JsonKey(name: 'retailSpecialProject', includeIfNull: false)
  final String? retailSpecialProject;
  @JsonKey(name: 'isNewFormat', includeIfNull: false)
  final String? isNewFormat;
  @JsonKey(name: 'verifyDriverIdentification', includeIfNull: false)
  final String? verifyDriverIdentification;
  @JsonKey(name: 'tier3Retail', includeIfNull: false)
  final String? tier3Retail;
  @JsonKey(name: 'logToIdentify', includeIfNull: false)
  final String? logToIdentify;
  @JsonKey(name: 'importProdObserve', includeIfNull: false)
  final bool? importProdObserve;
  @JsonKey(name: 'phisUsedVerifyProducts', includeIfNull: false)
  final String? phisUsedVerifyProducts;
  @JsonKey(name: 'primaryBusinessTypeAtTimeOfAction', includeIfNull: false)
  final String? primaryBusinessTypeAtTimeOfAction;
  @JsonKey(name: 'productVolumeAtTimeOfAction', includeIfNull: false)
  final String? productVolumeAtTimeOfAction;
  @JsonKey(name: 'tierAtTimeOfAction', includeIfNull: false)
  final String? tierAtTimeOfAction;
  @JsonKey(name: 'wasFoodDefenseConducted', includeIfNull: false)
  final bool? wasFoodDefenseConducted;
  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;
  @JsonKey(name: 'wereShellEggsObserved', includeIfNull: false)
  final bool? wereShellEggsObserved;
  @JsonKey(name: 'foodDefenseInvestigatorId', includeIfNull: false)
  final int? foodDefenseInvestigatorId;
  @JsonKey(
      name: 'surveillanceShellEggTemperatures',
      includeIfNull: false,
      defaultValue: <SurveillanceShellEggTemperature>[])
  final List<SurveillanceShellEggTemperature>? surveillanceShellEggTemperatures;
  @JsonKey(
      name: 'surveillanceChangeHistories',
      includeIfNull: false,
      defaultValue: <SurveillanceChangeHistory>[])
  final List<SurveillanceChangeHistory>? surveillanceChangeHistories;
  @JsonKey(
      name: 'surveillanceComments',
      includeIfNull: false,
      defaultValue: <SurveillanceComment>[])
  final List<SurveillanceComment>? surveillanceComments;
  @JsonKey(
      name: 'surveillanceUnlimitedComments',
      includeIfNull: false,
      defaultValue: <SurveillanceUnlimitedComments>[])
  final List<SurveillanceUnlimitedComments>? surveillanceUnlimitedComments;
  @JsonKey(
      name: 'surveillanceImpProdCountries',
      includeIfNull: false,
      defaultValue: <SurveillanceImpProdCountry>[])
  final List<SurveillanceImpProdCountry>? surveillanceImpProdCountries;
  @JsonKey(
      name: 'surveillanceQuestions',
      includeIfNull: false,
      defaultValue: <SurveillanceQuestion>[])
  final List<SurveillanceQuestion>? surveillanceQuestions;
  @JsonKey(name: 'productControls', includeIfNull: false, defaultValue: <int>[])
  final List<int>? productControls;
  @JsonKey(name: 'firmRepresentativeRepTitle1', includeIfNull: false)
  final String? firmRepresentativeRepTitle1;
  @JsonKey(name: 'storProceduresHazMat', includeIfNull: false)
  final String? storProceduresHazMat;
  @JsonKey(name: 'maintainingSecurityDuringShip', includeIfNull: false)
  final String? maintainingSecurityDuringShip;
  @JsonKey(name: 'empLococation', includeIfNull: false)
  final String? empLococation;
  static const fromJsonFactory = _$SurveillanceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Surveillance &&
            (identical(other.surveillanceId, surveillanceId) ||
                const DeepCollectionEquality()
                    .equals(other.surveillanceId, surveillanceId)) &&
            (identical(other.firmID, firmID) ||
                const DeepCollectionEquality().equals(other.firmID, firmID)) &&
            (identical(other.datePerf, datePerf) ||
                const DeepCollectionEquality()
                    .equals(other.datePerf, datePerf)) &&
            (identical(other.meatCheck, meatCheck) ||
                const DeepCollectionEquality()
                    .equals(other.meatCheck, meatCheck)) &&
            (identical(other.poultryCheck, poultryCheck) ||
                const DeepCollectionEquality()
                    .equals(other.poultryCheck, poultryCheck)) &&
            (identical(other.eggCheck, eggCheck) ||
                const DeepCollectionEquality()
                    .equals(other.eggCheck, eggCheck)) &&
            (identical(other.shellEggCheck, shellEggCheck) ||
                const DeepCollectionEquality()
                    .equals(other.shellEggCheck, shellEggCheck)) &&
            (identical(other.siluriformesFishCheck, siluriformesFishCheck) ||
                const DeepCollectionEquality().equals(
                    other.siluriformesFishCheck, siluriformesFishCheck)) &&
            (identical(other.nonAmenableCheck, nonAmenableCheck) ||
                const DeepCollectionEquality()
                    .equals(other.nonAmenableCheck, nonAmenableCheck)) &&
            (identical(other.sampleType, sampleType) ||
                const DeepCollectionEquality()
                    .equals(other.sampleType, sampleType)) &&
            (identical(other.sampleResult, sampleResult) ||
                const DeepCollectionEquality()
                    .equals(other.sampleResult, sampleResult)) &&
            (identical(other.followUpDate, followUpDate) ||
                const DeepCollectionEquality()
                    .equals(other.followUpDate, followUpDate)) &&
            (identical(other.followUpReason, followUpReason) ||
                const DeepCollectionEquality()
                    .equals(other.followUpReason, followUpReason)) &&
            (identical(other.firmRepresentative1, firmRepresentative1) ||
                const DeepCollectionEquality()
                    .equals(other.firmRepresentative1, firmRepresentative1)) &&
            (identical(other.firmRepresentativeTitle1, firmRepresentativeTitle1) ||
                const DeepCollectionEquality().equals(
                    other.firmRepresentativeTitle1,
                    firmRepresentativeTitle1)) &&
            (identical(other.firmRepresentative2, firmRepresentative2) ||
                const DeepCollectionEquality()
                    .equals(other.firmRepresentative2, firmRepresentative2)) &&
            (identical(other.firmRepresentativeTitle2, firmRepresentativeTitle2) ||
                const DeepCollectionEquality().equals(
                    other.firmRepresentativeTitle2,
                    firmRepresentativeTitle2)) &&
            (identical(other.freqNum, freqNum) ||
                const DeepCollectionEquality()
                    .equals(other.freqNum, freqNum)) &&
            (identical(other.pestCompany, pestCompany) ||
                const DeepCollectionEquality()
                    .equals(other.pestCompany, pestCompany)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality().equals(other.createdDate, createdDate)) &&
            (identical(other.createdEmpId, createdEmpId) || const DeepCollectionEquality().equals(other.createdEmpId, createdEmpId)) &&
            (identical(other.lastModDate, lastModDate) || const DeepCollectionEquality().equals(other.lastModDate, lastModDate)) &&
            (identical(other.lastModEmpId, lastModEmpId) || const DeepCollectionEquality().equals(other.lastModEmpId, lastModEmpId)) &&
            (identical(other.supervisorReviewed, supervisorReviewed) || const DeepCollectionEquality().equals(other.supervisorReviewed, supervisorReviewed)) &&
            (identical(other.foodDefensePlan, foodDefensePlan) || const DeepCollectionEquality().equals(other.foodDefensePlan, foodDefensePlan)) &&
            (identical(other.emergencyContactInfo, emergencyContactInfo) || const DeepCollectionEquality().equals(other.emergencyContactInfo, emergencyContactInfo)) &&
            (identical(other.outsideSurveillanceSystem, outsideSurveillanceSystem) || const DeepCollectionEquality().equals(other.outsideSurveillanceSystem, outsideSurveillanceSystem)) &&
            (identical(other.insideSurveillanceSystem, insideSurveillanceSystem) || const DeepCollectionEquality().equals(other.insideSurveillanceSystem, insideSurveillanceSystem)) &&
            (identical(other.proceduresForAuthorizedPersons, proceduresForAuthorizedPersons) || const DeepCollectionEquality().equals(other.proceduresForAuthorizedPersons, proceduresForAuthorizedPersons)) &&
            (identical(other.storageProceduresForHazardousMaterials, storageProceduresForHazardousMaterials) || const DeepCollectionEquality().equals(other.storageProceduresForHazardousMaterials, storageProceduresForHazardousMaterials)) &&
            (identical(other.proceduresToProtectFood, proceduresToProtectFood) || const DeepCollectionEquality().equals(other.proceduresToProtectFood, proceduresToProtectFood)) &&
            (identical(other.shippingReceivingAreasRestricted, shippingReceivingAreasRestricted) || const DeepCollectionEquality().equals(other.shippingReceivingAreasRestricted, shippingReceivingAreasRestricted)) &&
            (identical(other.incomingShippingDocuments, incomingShippingDocuments) || const DeepCollectionEquality().equals(other.incomingShippingDocuments, incomingShippingDocuments)) &&
            (identical(other.freeFromTampering, freeFromTampering) || const DeepCollectionEquality().equals(other.freeFromTampering, freeFromTampering)) &&
            (identical(other.productsWholesome, productsWholesome) || const DeepCollectionEquality().equals(other.productsWholesome, productsWholesome)) &&
            (identical(other.sanitaryConditionsGood, sanitaryConditionsGood) || const DeepCollectionEquality().equals(other.sanitaryConditionsGood, sanitaryConditionsGood)) &&
            (identical(other.hazardousControlsAdequate, hazardousControlsAdequate) || const DeepCollectionEquality().equals(other.hazardousControlsAdequate, hazardousControlsAdequate)) &&
            (identical(other.nonHumanFoodDenatured, nonHumanFoodDenatured) || const DeepCollectionEquality().equals(other.nonHumanFoodDenatured, nonHumanFoodDenatured)) &&
            (identical(other.recordsMaintained, recordsMaintained) || const DeepCollectionEquality().equals(other.recordsMaintained, recordsMaintained)) &&
            (identical(other.productsNotMisbranded, productsNotMisbranded) || const DeepCollectionEquality().equals(other.productsNotMisbranded, productsNotMisbranded)) &&
            (identical(other.complianceWithTermsAndConditions, complianceWithTermsAndConditions) || const DeepCollectionEquality().equals(other.complianceWithTermsAndConditions, complianceWithTermsAndConditions)) &&
            (identical(other.checkForFederalImportInspection, checkForFederalImportInspection) || const DeepCollectionEquality().equals(other.checkForFederalImportInspection, checkForFederalImportInspection)) &&
            (identical(other.correctDocumentsRequested, correctDocumentsRequested) || const DeepCollectionEquality().equals(other.correctDocumentsRequested, correctDocumentsRequested)) &&
            (identical(other.checkForShippingMark, checkForShippingMark) || const DeepCollectionEquality().equals(other.checkForShippingMark, checkForShippingMark)) &&
            (identical(other.phisVerifyForeignCountries, phisVerifyForeignCountries) || const DeepCollectionEquality().equals(other.phisVerifyForeignCountries, phisVerifyForeignCountries)) &&
            (identical(other.phisVerifyForeignEstablishmentsEligible, phisVerifyForeignEstablishmentsEligible) || const DeepCollectionEquality().equals(other.phisVerifyForeignEstablishmentsEligible, phisVerifyForeignEstablishmentsEligible)) &&
            (identical(other.phisVerifyFSISInspection, phisVerifyFSISInspection) || const DeepCollectionEquality().equals(other.phisVerifyFSISInspection, phisVerifyFSISInspection)) &&
            (identical(other.sampleTaken, sampleTaken) || const DeepCollectionEquality().equals(other.sampleTaken, sampleTaken)) &&
            (identical(other.sampleFromPreviousSample, sampleFromPreviousSample) || const DeepCollectionEquality().equals(other.sampleFromPreviousSample, sampleFromPreviousSample)) &&
            (identical(other.ecoliSampleTaken, ecoliSampleTaken) || const DeepCollectionEquality().equals(other.ecoliSampleTaken, ecoliSampleTaken)) &&
            (identical(other.didDetentionOccur, didDetentionOccur) || const DeepCollectionEquality().equals(other.didDetentionOccur, didDetentionOccur)) &&
            (identical(other.securityVulnerabilitiesDiscussed, securityVulnerabilitiesDiscussed) || const DeepCollectionEquality().equals(other.securityVulnerabilitiesDiscussed, securityVulnerabilitiesDiscussed)) &&
            (identical(other.form5420Provided, form5420Provided) || const DeepCollectionEquality().equals(other.form5420Provided, form5420Provided)) &&
            (identical(other.followUpRequired, followUpRequired) || const DeepCollectionEquality().equals(other.followUpRequired, followUpRequired)) &&
            (identical(other.followUpFromPrevious, followUpFromPrevious) || const DeepCollectionEquality().equals(other.followUpFromPrevious, followUpFromPrevious)) &&
            (identical(other.investigatorMetWithRepresentative, investigatorMetWithRepresentative) || const DeepCollectionEquality().equals(other.investigatorMetWithRepresentative, investigatorMetWithRepresentative)) &&
            (identical(other.pestControlVisits, pestControlVisits) || const DeepCollectionEquality().equals(other.pestControlVisits, pestControlVisits)) &&
            (identical(other.followUpCompleted, followUpCompleted) || const DeepCollectionEquality().equals(other.followUpCompleted, followUpCompleted)) &&
            (identical(other.followUpCompletedDate, followUpCompletedDate) || const DeepCollectionEquality().equals(other.followUpCompletedDate, followUpCompletedDate)) &&
            (identical(other.phisVerifyForeignEstablishments, phisVerifyForeignEstablishments) || const DeepCollectionEquality().equals(other.phisVerifyForeignEstablishments, phisVerifyForeignEstablishments)) &&
            (identical(other.procedureForProductTampering, procedureForProductTampering) || const DeepCollectionEquality().equals(other.procedureForProductTampering, procedureForProductTampering)) &&
            (identical(other.followUpDeadlineDate, followUpDeadlineDate) || const DeepCollectionEquality().equals(other.followUpDeadlineDate, followUpDeadlineDate)) &&
            (identical(other.createdEmpName, createdEmpName) || const DeepCollectionEquality().equals(other.createdEmpName, createdEmpName)) &&
            (identical(other.firmNameAtTimeOfAction, firmNameAtTimeOfAction) || const DeepCollectionEquality().equals(other.firmNameAtTimeOfAction, firmNameAtTimeOfAction)) &&
            (identical(other.lockEmpId, lockEmpId) || const DeepCollectionEquality().equals(other.lockEmpId, lockEmpId)) &&
            (identical(other.workflowId, workflowId) || const DeepCollectionEquality().equals(other.workflowId, workflowId)) &&
            (identical(other.workflowStateId, workflowStateId) || const DeepCollectionEquality().equals(other.workflowStateId, workflowStateId)) &&
            (identical(other.office, office) || const DeepCollectionEquality().equals(other.office, office)) &&
            (identical(other.productRecordsAccordingToFoodSafetyActs, productRecordsAccordingToFoodSafetyActs) || const DeepCollectionEquality().equals(other.productRecordsAccordingToFoodSafetyActs, productRecordsAccordingToFoodSafetyActs)) &&
            (identical(other.empLocation, empLocation) || const DeepCollectionEquality().equals(other.empLocation, empLocation)) &&
            (identical(other.empSubLocation, empSubLocation) || const DeepCollectionEquality().equals(other.empSubLocation, empSubLocation)) &&
            (identical(other.respIndvInComp, respIndvInComp) || const DeepCollectionEquality().equals(other.respIndvInComp, respIndvInComp)) &&
            (identical(other.shellEggTemperature, shellEggTemperature) || const DeepCollectionEquality().equals(other.shellEggTemperature, shellEggTemperature)) &&
            (identical(other.areShellEggsPropMain, areShellEggsPropMain) || const DeepCollectionEquality().equals(other.areShellEggsPropMain, areShellEggsPropMain)) &&
            (identical(other.hasChangeHistory, hasChangeHistory) || const DeepCollectionEquality().equals(other.hasChangeHistory, hasChangeHistory)) &&
            (identical(other.handlesImportedProducts, handlesImportedProducts) || const DeepCollectionEquality().equals(other.handlesImportedProducts, handlesImportedProducts)) &&
            (identical(other.numMTSamples, numMTSamples) || const DeepCollectionEquality().equals(other.numMTSamples, numMTSamples)) &&
            (identical(other.numSplProjInvSamples, numSplProjInvSamples) || const DeepCollectionEquality().equals(other.numSplProjInvSamples, numSplProjInvSamples)) &&
            (identical(other.noSampleTakenInfo, noSampleTakenInfo) || const DeepCollectionEquality().equals(other.noSampleTakenInfo, noSampleTakenInfo)) &&
            (identical(other.firmGrindingRec, firmGrindingRec) || const DeepCollectionEquality().equals(other.firmGrindingRec, firmGrindingRec)) &&
            (identical(other.reviewerSupv, reviewerSupv) || const DeepCollectionEquality().equals(other.reviewerSupv, reviewerSupv)) &&
            (identical(other.fileAttached, fileAttached) || const DeepCollectionEquality().equals(other.fileAttached, fileAttached)) &&
            (identical(other.reason, reason) || const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.nutritionalLabelingVerify, nutritionalLabelingVerify) || const DeepCollectionEquality().equals(other.nutritionalLabelingVerify, nutritionalLabelingVerify)) &&
            (identical(other.didReferSurvFindings, didReferSurvFindings) || const DeepCollectionEquality().equals(other.didReferSurvFindings, didReferSurvFindings)) &&
            (identical(other.referralComments, referralComments) || const DeepCollectionEquality().equals(other.referralComments, referralComments)) &&
            (identical(other.invoiceNbr, invoiceNbr) || const DeepCollectionEquality().equals(other.invoiceNbr, invoiceNbr)) &&
            (identical(other.billofLadingNbr, billofLadingNbr) || const DeepCollectionEquality().equals(other.billofLadingNbr, billofLadingNbr)) &&
            (identical(other.getaPHISPermitNbr, getaPHISPermitNbr) || const DeepCollectionEquality().equals(other.getaPHISPermitNbr, getaPHISPermitNbr)) &&
            (identical(other.gethTSCode, gethTSCode) || const DeepCollectionEquality().equals(other.gethTSCode, gethTSCode)) &&
            (identical(other.customEntryNbr, customEntryNbr) || const DeepCollectionEquality().equals(other.customEntryNbr, customEntryNbr)) &&
            (identical(other.totalCases, totalCases) || const DeepCollectionEquality().equals(other.totalCases, totalCases)) &&
            (identical(other.unitType, unitType) || const DeepCollectionEquality().equals(other.unitType, unitType)) &&
            (identical(other.foreignProducerEstNbr, foreignProducerEstNbr) || const DeepCollectionEquality().equals(other.foreignProducerEstNbr, foreignProducerEstNbr)) &&
            (identical(other.brokerFirmID, brokerFirmID) || const DeepCollectionEquality().equals(other.brokerFirmID, brokerFirmID)) &&
            (identical(other.sampleLabFormNbr, sampleLabFormNbr) || const DeepCollectionEquality().equals(other.sampleLabFormNbr, sampleLabFormNbr)) &&
            (identical(other.detainedDisposition, detainedDisposition) || const DeepCollectionEquality().equals(other.detainedDisposition, detainedDisposition)) &&
            (identical(other.detainedDispositionDet, detainedDispositionDet) || const DeepCollectionEquality().equals(other.detainedDispositionDet, detainedDispositionDet)) &&
            (identical(other.recallDisposition, recallDisposition) || const DeepCollectionEquality().equals(other.recallDisposition, recallDisposition)) &&
            (identical(other.recallDispositionDet, recallDispositionDet) || const DeepCollectionEquality().equals(other.recallDispositionDet, recallDispositionDet)) &&
            (identical(other.getfTPInitiatedDate, getfTPInitiatedDate) || const DeepCollectionEquality().equals(other.getfTPInitiatedDate, getfTPInitiatedDate)) &&
            (identical(other.getfTPDisposition, getfTPDisposition) || const DeepCollectionEquality().equals(other.getfTPDisposition, getfTPDisposition)) &&
            (identical(other.getfTPDispositionDet, getfTPDispositionDet) || const DeepCollectionEquality().equals(other.getfTPDispositionDet, getfTPDispositionDet)) &&
            (identical(other.getoIGInvestigation, getoIGInvestigation) || const DeepCollectionEquality().equals(other.getoIGInvestigation, getoIGInvestigation)) &&
            (identical(other.getoIGInvestigationInitiatedBy, getoIGInvestigationInitiatedBy) || const DeepCollectionEquality().equals(other.getoIGInvestigationInitiatedBy, getoIGInvestigationInitiatedBy)) &&
            (identical(other.getoIGInvestigationDate, getoIGInvestigationDate) || const DeepCollectionEquality().equals(other.getoIGInvestigationDate, getoIGInvestigationDate)) &&
            (identical(other.retailProject, retailProject) || const DeepCollectionEquality().equals(other.retailProject, retailProject)) &&
            (identical(other.retailProjectOther, retailProjectOther) || const DeepCollectionEquality().equals(other.retailProjectOther, retailProjectOther)) &&
            (identical(other.retailSpecialProject, retailSpecialProject) || const DeepCollectionEquality().equals(other.retailSpecialProject, retailSpecialProject)) &&
            (identical(other.isNewFormat, isNewFormat) || const DeepCollectionEquality().equals(other.isNewFormat, isNewFormat)) &&
            (identical(other.verifyDriverIdentification, verifyDriverIdentification) || const DeepCollectionEquality().equals(other.verifyDriverIdentification, verifyDriverIdentification)) &&
            (identical(other.tier3Retail, tier3Retail) || const DeepCollectionEquality().equals(other.tier3Retail, tier3Retail)) &&
            (identical(other.logToIdentify, logToIdentify) || const DeepCollectionEquality().equals(other.logToIdentify, logToIdentify)) &&
            (identical(other.importProdObserve, importProdObserve) || const DeepCollectionEquality().equals(other.importProdObserve, importProdObserve)) &&
            (identical(other.phisUsedVerifyProducts, phisUsedVerifyProducts) || const DeepCollectionEquality().equals(other.phisUsedVerifyProducts, phisUsedVerifyProducts)) &&
            (identical(other.primaryBusinessTypeAtTimeOfAction, primaryBusinessTypeAtTimeOfAction) || const DeepCollectionEquality().equals(other.primaryBusinessTypeAtTimeOfAction, primaryBusinessTypeAtTimeOfAction)) &&
            (identical(other.productVolumeAtTimeOfAction, productVolumeAtTimeOfAction) || const DeepCollectionEquality().equals(other.productVolumeAtTimeOfAction, productVolumeAtTimeOfAction)) &&
            (identical(other.tierAtTimeOfAction, tierAtTimeOfAction) || const DeepCollectionEquality().equals(other.tierAtTimeOfAction, tierAtTimeOfAction)) &&
            (identical(other.wasFoodDefenseConducted, wasFoodDefenseConducted) || const DeepCollectionEquality().equals(other.wasFoodDefenseConducted, wasFoodDefenseConducted)) &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.wereShellEggsObserved, wereShellEggsObserved) || const DeepCollectionEquality().equals(other.wereShellEggsObserved, wereShellEggsObserved)) &&
            (identical(other.foodDefenseInvestigatorId, foodDefenseInvestigatorId) || const DeepCollectionEquality().equals(other.foodDefenseInvestigatorId, foodDefenseInvestigatorId)) &&
            (identical(other.surveillanceShellEggTemperatures, surveillanceShellEggTemperatures) || const DeepCollectionEquality().equals(other.surveillanceShellEggTemperatures, surveillanceShellEggTemperatures)) &&
            (identical(other.surveillanceChangeHistories, surveillanceChangeHistories) || const DeepCollectionEquality().equals(other.surveillanceChangeHistories, surveillanceChangeHistories)) &&
            (identical(other.surveillanceComments, surveillanceComments) || const DeepCollectionEquality().equals(other.surveillanceComments, surveillanceComments)) &&
            (identical(other.surveillanceUnlimitedComments, surveillanceUnlimitedComments) || const DeepCollectionEquality().equals(other.surveillanceUnlimitedComments, surveillanceUnlimitedComments)) &&
            (identical(other.surveillanceImpProdCountries, surveillanceImpProdCountries) || const DeepCollectionEquality().equals(other.surveillanceImpProdCountries, surveillanceImpProdCountries)) &&
            (identical(other.surveillanceQuestions, surveillanceQuestions) || const DeepCollectionEquality().equals(other.surveillanceQuestions, surveillanceQuestions)) &&
            (identical(other.productControls, productControls) || const DeepCollectionEquality().equals(other.productControls, productControls)) &&
            (identical(other.firmRepresentativeRepTitle1, firmRepresentativeRepTitle1) || const DeepCollectionEquality().equals(other.firmRepresentativeRepTitle1, firmRepresentativeRepTitle1)) &&
            (identical(other.storProceduresHazMat, storProceduresHazMat) || const DeepCollectionEquality().equals(other.storProceduresHazMat, storProceduresHazMat)) &&
            (identical(other.maintainingSecurityDuringShip, maintainingSecurityDuringShip) || const DeepCollectionEquality().equals(other.maintainingSecurityDuringShip, maintainingSecurityDuringShip)) &&
            (identical(other.empLococation, empLococation) || const DeepCollectionEquality().equals(other.empLococation, empLococation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(surveillanceId) ^
      const DeepCollectionEquality().hash(firmID) ^
      const DeepCollectionEquality().hash(datePerf) ^
      const DeepCollectionEquality().hash(meatCheck) ^
      const DeepCollectionEquality().hash(poultryCheck) ^
      const DeepCollectionEquality().hash(eggCheck) ^
      const DeepCollectionEquality().hash(shellEggCheck) ^
      const DeepCollectionEquality().hash(siluriformesFishCheck) ^
      const DeepCollectionEquality().hash(nonAmenableCheck) ^
      const DeepCollectionEquality().hash(sampleType) ^
      const DeepCollectionEquality().hash(sampleResult) ^
      const DeepCollectionEquality().hash(followUpDate) ^
      const DeepCollectionEquality().hash(followUpReason) ^
      const DeepCollectionEquality().hash(firmRepresentative1) ^
      const DeepCollectionEquality().hash(firmRepresentativeTitle1) ^
      const DeepCollectionEquality().hash(firmRepresentative2) ^
      const DeepCollectionEquality().hash(firmRepresentativeTitle2) ^
      const DeepCollectionEquality().hash(freqNum) ^
      const DeepCollectionEquality().hash(pestCompany) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(createdEmpId) ^
      const DeepCollectionEquality().hash(lastModDate) ^
      const DeepCollectionEquality().hash(lastModEmpId) ^
      const DeepCollectionEquality().hash(supervisorReviewed) ^
      const DeepCollectionEquality().hash(foodDefensePlan) ^
      const DeepCollectionEquality().hash(emergencyContactInfo) ^
      const DeepCollectionEquality().hash(outsideSurveillanceSystem) ^
      const DeepCollectionEquality().hash(insideSurveillanceSystem) ^
      const DeepCollectionEquality().hash(proceduresForAuthorizedPersons) ^
      const DeepCollectionEquality()
          .hash(storageProceduresForHazardousMaterials) ^
      const DeepCollectionEquality().hash(proceduresToProtectFood) ^
      const DeepCollectionEquality().hash(shippingReceivingAreasRestricted) ^
      const DeepCollectionEquality().hash(incomingShippingDocuments) ^
      const DeepCollectionEquality().hash(freeFromTampering) ^
      const DeepCollectionEquality().hash(productsWholesome) ^
      const DeepCollectionEquality().hash(sanitaryConditionsGood) ^
      const DeepCollectionEquality().hash(hazardousControlsAdequate) ^
      const DeepCollectionEquality().hash(nonHumanFoodDenatured) ^
      const DeepCollectionEquality().hash(recordsMaintained) ^
      const DeepCollectionEquality().hash(productsNotMisbranded) ^
      const DeepCollectionEquality().hash(complianceWithTermsAndConditions) ^
      const DeepCollectionEquality().hash(checkForFederalImportInspection) ^
      const DeepCollectionEquality().hash(correctDocumentsRequested) ^
      const DeepCollectionEquality().hash(checkForShippingMark) ^
      const DeepCollectionEquality().hash(phisVerifyForeignCountries) ^
      const DeepCollectionEquality()
          .hash(phisVerifyForeignEstablishmentsEligible) ^
      const DeepCollectionEquality().hash(phisVerifyFSISInspection) ^
      const DeepCollectionEquality().hash(sampleTaken) ^
      const DeepCollectionEquality().hash(sampleFromPreviousSample) ^
      const DeepCollectionEquality().hash(ecoliSampleTaken) ^
      const DeepCollectionEquality().hash(didDetentionOccur) ^
      const DeepCollectionEquality().hash(securityVulnerabilitiesDiscussed) ^
      const DeepCollectionEquality().hash(form5420Provided) ^
      const DeepCollectionEquality().hash(followUpRequired) ^
      const DeepCollectionEquality().hash(followUpFromPrevious) ^
      const DeepCollectionEquality().hash(investigatorMetWithRepresentative) ^
      const DeepCollectionEquality().hash(pestControlVisits) ^
      const DeepCollectionEquality().hash(followUpCompleted) ^
      const DeepCollectionEquality().hash(followUpCompletedDate) ^
      const DeepCollectionEquality().hash(phisVerifyForeignEstablishments) ^
      const DeepCollectionEquality().hash(procedureForProductTampering) ^
      const DeepCollectionEquality().hash(followUpDeadlineDate) ^
      const DeepCollectionEquality().hash(createdEmpName) ^
      const DeepCollectionEquality().hash(firmNameAtTimeOfAction) ^
      const DeepCollectionEquality().hash(lockEmpId) ^
      const DeepCollectionEquality().hash(workflowId) ^
      const DeepCollectionEquality().hash(workflowStateId) ^
      const DeepCollectionEquality().hash(office) ^
      const DeepCollectionEquality()
          .hash(productRecordsAccordingToFoodSafetyActs) ^
      const DeepCollectionEquality().hash(empLocation) ^
      const DeepCollectionEquality().hash(empSubLocation) ^
      const DeepCollectionEquality().hash(respIndvInComp) ^
      const DeepCollectionEquality().hash(shellEggTemperature) ^
      const DeepCollectionEquality().hash(areShellEggsPropMain) ^
      const DeepCollectionEquality().hash(hasChangeHistory) ^
      const DeepCollectionEquality().hash(handlesImportedProducts) ^
      const DeepCollectionEquality().hash(numMTSamples) ^
      const DeepCollectionEquality().hash(numSplProjInvSamples) ^
      const DeepCollectionEquality().hash(noSampleTakenInfo) ^
      const DeepCollectionEquality().hash(firmGrindingRec) ^
      const DeepCollectionEquality().hash(reviewerSupv) ^
      const DeepCollectionEquality().hash(fileAttached) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(nutritionalLabelingVerify) ^
      const DeepCollectionEquality().hash(didReferSurvFindings) ^
      const DeepCollectionEquality().hash(referralComments) ^
      const DeepCollectionEquality().hash(invoiceNbr) ^
      const DeepCollectionEquality().hash(billofLadingNbr) ^
      const DeepCollectionEquality().hash(getaPHISPermitNbr) ^
      const DeepCollectionEquality().hash(gethTSCode) ^
      const DeepCollectionEquality().hash(customEntryNbr) ^
      const DeepCollectionEquality().hash(totalCases) ^
      const DeepCollectionEquality().hash(unitType) ^
      const DeepCollectionEquality().hash(foreignProducerEstNbr) ^
      const DeepCollectionEquality().hash(brokerFirmID) ^
      const DeepCollectionEquality().hash(sampleLabFormNbr) ^
      const DeepCollectionEquality().hash(detainedDisposition) ^
      const DeepCollectionEquality().hash(detainedDispositionDet) ^
      const DeepCollectionEquality().hash(recallDisposition) ^
      const DeepCollectionEquality().hash(recallDispositionDet) ^
      const DeepCollectionEquality().hash(getfTPInitiatedDate) ^
      const DeepCollectionEquality().hash(getfTPDisposition) ^
      const DeepCollectionEquality().hash(getfTPDispositionDet) ^
      const DeepCollectionEquality().hash(getoIGInvestigation) ^
      const DeepCollectionEquality().hash(getoIGInvestigationInitiatedBy) ^
      const DeepCollectionEquality().hash(getoIGInvestigationDate) ^
      const DeepCollectionEquality().hash(retailProject) ^
      const DeepCollectionEquality().hash(retailProjectOther) ^
      const DeepCollectionEquality().hash(retailSpecialProject) ^
      const DeepCollectionEquality().hash(isNewFormat) ^
      const DeepCollectionEquality().hash(verifyDriverIdentification) ^
      const DeepCollectionEquality().hash(tier3Retail) ^
      const DeepCollectionEquality().hash(logToIdentify) ^
      const DeepCollectionEquality().hash(importProdObserve) ^
      const DeepCollectionEquality().hash(phisUsedVerifyProducts) ^
      const DeepCollectionEquality().hash(primaryBusinessTypeAtTimeOfAction) ^
      const DeepCollectionEquality().hash(productVolumeAtTimeOfAction) ^
      const DeepCollectionEquality().hash(tierAtTimeOfAction) ^
      const DeepCollectionEquality().hash(wasFoodDefenseConducted) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(wereShellEggsObserved) ^
      const DeepCollectionEquality().hash(foodDefenseInvestigatorId) ^
      const DeepCollectionEquality().hash(surveillanceShellEggTemperatures) ^
      const DeepCollectionEquality().hash(surveillanceChangeHistories) ^
      const DeepCollectionEquality().hash(surveillanceComments) ^
      const DeepCollectionEquality().hash(surveillanceUnlimitedComments) ^
      const DeepCollectionEquality().hash(surveillanceImpProdCountries) ^
      const DeepCollectionEquality().hash(surveillanceQuestions) ^
      const DeepCollectionEquality().hash(productControls) ^
      const DeepCollectionEquality().hash(firmRepresentativeRepTitle1) ^
      const DeepCollectionEquality().hash(storProceduresHazMat) ^
      const DeepCollectionEquality().hash(maintainingSecurityDuringShip) ^
      const DeepCollectionEquality().hash(empLococation) ^
      runtimeType.hashCode;
}

extension $SurveillanceExtension on Surveillance {
  Surveillance copyWith(
      {int? surveillanceId,
      int? firmID,
      DateTime? datePerf,
      String? meatCheck,
      String? poultryCheck,
      String? eggCheck,
      String? shellEggCheck,
      String? siluriformesFishCheck,
      String? nonAmenableCheck,
      String? sampleType,
      String? sampleResult,
      String? followUpDate,
      String? followUpReason,
      String? firmRepresentative1,
      String? firmRepresentativeTitle1,
      String? firmRepresentative2,
      String? firmRepresentativeTitle2,
      String? freqNum,
      String? pestCompany,
      DateTime? createdDate,
      int? createdEmpId,
      DateTime? lastModDate,
      int? lastModEmpId,
      String? supervisorReviewed,
      String? foodDefensePlan,
      String? emergencyContactInfo,
      String? outsideSurveillanceSystem,
      String? insideSurveillanceSystem,
      String? proceduresForAuthorizedPersons,
      String? storageProceduresForHazardousMaterials,
      String? proceduresToProtectFood,
      String? shippingReceivingAreasRestricted,
      String? incomingShippingDocuments,
      String? freeFromTampering,
      String? productsWholesome,
      String? sanitaryConditionsGood,
      String? hazardousControlsAdequate,
      String? nonHumanFoodDenatured,
      String? recordsMaintained,
      String? productsNotMisbranded,
      String? complianceWithTermsAndConditions,
      String? checkForFederalImportInspection,
      String? correctDocumentsRequested,
      String? checkForShippingMark,
      String? phisVerifyForeignCountries,
      String? phisVerifyForeignEstablishmentsEligible,
      String? phisVerifyFSISInspection,
      String? sampleTaken,
      String? sampleFromPreviousSample,
      String? ecoliSampleTaken,
      String? didDetentionOccur,
      String? securityVulnerabilitiesDiscussed,
      String? form5420Provided,
      String? followUpRequired,
      String? followUpFromPrevious,
      String? investigatorMetWithRepresentative,
      String? pestControlVisits,
      String? followUpCompleted,
      DateTime? followUpCompletedDate,
      String? phisVerifyForeignEstablishments,
      String? procedureForProductTampering,
      DateTime? followUpDeadlineDate,
      String? createdEmpName,
      String? firmNameAtTimeOfAction,
      int? lockEmpId,
      double? workflowId,
      double? workflowStateId,
      String? office,
      String? productRecordsAccordingToFoodSafetyActs,
      String? empLocation,
      String? empSubLocation,
      String? respIndvInComp,
      String? shellEggTemperature,
      String? areShellEggsPropMain,
      String? hasChangeHistory,
      String? handlesImportedProducts,
      int? numMTSamples,
      int? numSplProjInvSamples,
      String? noSampleTakenInfo,
      String? firmGrindingRec,
      int? reviewerSupv,
      String? fileAttached,
      String? reason,
      String? nutritionalLabelingVerify,
      String? didReferSurvFindings,
      String? referralComments,
      String? invoiceNbr,
      String? billofLadingNbr,
      String? getaPHISPermitNbr,
      String? gethTSCode,
      String? customEntryNbr,
      int? totalCases,
      String? unitType,
      String? foreignProducerEstNbr,
      int? brokerFirmID,
      String? sampleLabFormNbr,
      String? detainedDisposition,
      String? detainedDispositionDet,
      String? recallDisposition,
      String? recallDispositionDet,
      DateTime? getfTPInitiatedDate,
      String? getfTPDisposition,
      String? getfTPDispositionDet,
      String? getoIGInvestigation,
      String? getoIGInvestigationInitiatedBy,
      DateTime? getoIGInvestigationDate,
      String? retailProject,
      String? retailProjectOther,
      String? retailSpecialProject,
      String? isNewFormat,
      String? verifyDriverIdentification,
      String? tier3Retail,
      String? logToIdentify,
      bool? importProdObserve,
      String? phisUsedVerifyProducts,
      String? primaryBusinessTypeAtTimeOfAction,
      String? productVolumeAtTimeOfAction,
      String? tierAtTimeOfAction,
      bool? wasFoodDefenseConducted,
      String? title,
      bool? wereShellEggsObserved,
      int? foodDefenseInvestigatorId,
      List<SurveillanceShellEggTemperature>? surveillanceShellEggTemperatures,
      List<SurveillanceChangeHistory>? surveillanceChangeHistories,
      List<SurveillanceComment>? surveillanceComments,
      List<SurveillanceUnlimitedComments>? surveillanceUnlimitedComments,
      List<SurveillanceImpProdCountry>? surveillanceImpProdCountries,
      List<SurveillanceQuestion>? surveillanceQuestions,
      List<int>? productControls,
      String? firmRepresentativeRepTitle1,
      String? storProceduresHazMat,
      String? maintainingSecurityDuringShip,
      String? empLococation}) {
    return Surveillance(
        surveillanceId: surveillanceId ?? this.surveillanceId,
        firmID: firmID ?? this.firmID,
        datePerf: datePerf ?? this.datePerf,
        meatCheck: meatCheck ?? this.meatCheck,
        poultryCheck: poultryCheck ?? this.poultryCheck,
        eggCheck: eggCheck ?? this.eggCheck,
        shellEggCheck: shellEggCheck ?? this.shellEggCheck,
        siluriformesFishCheck:
            siluriformesFishCheck ?? this.siluriformesFishCheck,
        nonAmenableCheck: nonAmenableCheck ?? this.nonAmenableCheck,
        sampleType: sampleType ?? this.sampleType,
        sampleResult: sampleResult ?? this.sampleResult,
        followUpDate: followUpDate ?? this.followUpDate,
        followUpReason: followUpReason ?? this.followUpReason,
        firmRepresentative1: firmRepresentative1 ?? this.firmRepresentative1,
        firmRepresentativeTitle1:
            firmRepresentativeTitle1 ?? this.firmRepresentativeTitle1,
        firmRepresentative2: firmRepresentative2 ?? this.firmRepresentative2,
        firmRepresentativeTitle2:
            firmRepresentativeTitle2 ?? this.firmRepresentativeTitle2,
        freqNum: freqNum ?? this.freqNum,
        pestCompany: pestCompany ?? this.pestCompany,
        createdDate: createdDate ?? this.createdDate,
        createdEmpId: createdEmpId ?? this.createdEmpId,
        lastModDate: lastModDate ?? this.lastModDate,
        lastModEmpId: lastModEmpId ?? this.lastModEmpId,
        supervisorReviewed: supervisorReviewed ?? this.supervisorReviewed,
        foodDefensePlan: foodDefensePlan ?? this.foodDefensePlan,
        emergencyContactInfo: emergencyContactInfo ?? this.emergencyContactInfo,
        outsideSurveillanceSystem:
            outsideSurveillanceSystem ?? this.outsideSurveillanceSystem,
        insideSurveillanceSystem:
            insideSurveillanceSystem ?? this.insideSurveillanceSystem,
        proceduresForAuthorizedPersons: proceduresForAuthorizedPersons ??
            this.proceduresForAuthorizedPersons,
        storageProceduresForHazardousMaterials: storageProceduresForHazardousMaterials ??
            this.storageProceduresForHazardousMaterials,
        proceduresToProtectFood:
            proceduresToProtectFood ?? this.proceduresToProtectFood,
        shippingReceivingAreasRestricted: shippingReceivingAreasRestricted ??
            this.shippingReceivingAreasRestricted,
        incomingShippingDocuments:
            incomingShippingDocuments ?? this.incomingShippingDocuments,
        freeFromTampering: freeFromTampering ?? this.freeFromTampering,
        productsWholesome: productsWholesome ?? this.productsWholesome,
        sanitaryConditionsGood:
            sanitaryConditionsGood ?? this.sanitaryConditionsGood,
        hazardousControlsAdequate:
            hazardousControlsAdequate ?? this.hazardousControlsAdequate,
        nonHumanFoodDenatured:
            nonHumanFoodDenatured ?? this.nonHumanFoodDenatured,
        recordsMaintained: recordsMaintained ?? this.recordsMaintained,
        productsNotMisbranded:
            productsNotMisbranded ?? this.productsNotMisbranded,
        complianceWithTermsAndConditions: complianceWithTermsAndConditions ??
            this.complianceWithTermsAndConditions,
        checkForFederalImportInspection: checkForFederalImportInspection ??
            this.checkForFederalImportInspection,
        correctDocumentsRequested:
            correctDocumentsRequested ?? this.correctDocumentsRequested,
        checkForShippingMark: checkForShippingMark ?? this.checkForShippingMark,
        phisVerifyForeignCountries:
            phisVerifyForeignCountries ?? this.phisVerifyForeignCountries,
        phisVerifyForeignEstablishmentsEligible: phisVerifyForeignEstablishmentsEligible ??
            this.phisVerifyForeignEstablishmentsEligible,
        phisVerifyFSISInspection:
            phisVerifyFSISInspection ?? this.phisVerifyFSISInspection,
        sampleTaken: sampleTaken ?? this.sampleTaken,
        sampleFromPreviousSample:
            sampleFromPreviousSample ?? this.sampleFromPreviousSample,
        ecoliSampleTaken: ecoliSampleTaken ?? this.ecoliSampleTaken,
        didDetentionOccur: didDetentionOccur ?? this.didDetentionOccur,
        securityVulnerabilitiesDiscussed: securityVulnerabilitiesDiscussed ??
            this.securityVulnerabilitiesDiscussed,
        form5420Provided: form5420Provided ?? this.form5420Provided,
        followUpRequired: followUpRequired ?? this.followUpRequired,
        followUpFromPrevious: followUpFromPrevious ?? this.followUpFromPrevious,
        investigatorMetWithRepresentative: investigatorMetWithRepresentative ??
            this.investigatorMetWithRepresentative,
        pestControlVisits: pestControlVisits ?? this.pestControlVisits,
        followUpCompleted: followUpCompleted ?? this.followUpCompleted,
        followUpCompletedDate:
            followUpCompletedDate ?? this.followUpCompletedDate,
        phisVerifyForeignEstablishments: phisVerifyForeignEstablishments ??
            this.phisVerifyForeignEstablishments,
        procedureForProductTampering:
            procedureForProductTampering ?? this.procedureForProductTampering,
        followUpDeadlineDate: followUpDeadlineDate ?? this.followUpDeadlineDate,
        createdEmpName: createdEmpName ?? this.createdEmpName,
        firmNameAtTimeOfAction:
            firmNameAtTimeOfAction ?? this.firmNameAtTimeOfAction,
        lockEmpId: lockEmpId ?? this.lockEmpId,
        workflowId: workflowId ?? this.workflowId,
        workflowStateId: workflowStateId ?? this.workflowStateId,
        office: office ?? this.office,
        productRecordsAccordingToFoodSafetyActs:
            productRecordsAccordingToFoodSafetyActs ??
                this.productRecordsAccordingToFoodSafetyActs,
        empLocation: empLocation ?? this.empLocation,
        empSubLocation: empSubLocation ?? this.empSubLocation,
        respIndvInComp: respIndvInComp ?? this.respIndvInComp,
        shellEggTemperature: shellEggTemperature ?? this.shellEggTemperature,
        areShellEggsPropMain: areShellEggsPropMain ?? this.areShellEggsPropMain,
        hasChangeHistory: hasChangeHistory ?? this.hasChangeHistory,
        handlesImportedProducts:
            handlesImportedProducts ?? this.handlesImportedProducts,
        numMTSamples: numMTSamples ?? this.numMTSamples,
        numSplProjInvSamples: numSplProjInvSamples ?? this.numSplProjInvSamples,
        noSampleTakenInfo: noSampleTakenInfo ?? this.noSampleTakenInfo,
        firmGrindingRec: firmGrindingRec ?? this.firmGrindingRec,
        reviewerSupv: reviewerSupv ?? this.reviewerSupv,
        fileAttached: fileAttached ?? this.fileAttached,
        reason: reason ?? this.reason,
        nutritionalLabelingVerify:
            nutritionalLabelingVerify ?? this.nutritionalLabelingVerify,
        didReferSurvFindings: didReferSurvFindings ?? this.didReferSurvFindings,
        referralComments: referralComments ?? this.referralComments,
        invoiceNbr: invoiceNbr ?? this.invoiceNbr,
        billofLadingNbr: billofLadingNbr ?? this.billofLadingNbr,
        getaPHISPermitNbr: getaPHISPermitNbr ?? this.getaPHISPermitNbr,
        gethTSCode: gethTSCode ?? this.gethTSCode,
        customEntryNbr: customEntryNbr ?? this.customEntryNbr,
        totalCases: totalCases ?? this.totalCases,
        unitType: unitType ?? this.unitType,
        foreignProducerEstNbr:
            foreignProducerEstNbr ?? this.foreignProducerEstNbr,
        brokerFirmID: brokerFirmID ?? this.brokerFirmID,
        sampleLabFormNbr: sampleLabFormNbr ?? this.sampleLabFormNbr,
        detainedDisposition: detainedDisposition ?? this.detainedDisposition,
        detainedDispositionDet:
            detainedDispositionDet ?? this.detainedDispositionDet,
        recallDisposition: recallDisposition ?? this.recallDisposition,
        recallDispositionDet: recallDispositionDet ?? this.recallDispositionDet,
        getfTPInitiatedDate: getfTPInitiatedDate ?? this.getfTPInitiatedDate,
        getfTPDisposition: getfTPDisposition ?? this.getfTPDisposition,
        getfTPDispositionDet: getfTPDispositionDet ?? this.getfTPDispositionDet,
        getoIGInvestigation: getoIGInvestigation ?? this.getoIGInvestigation,
        getoIGInvestigationInitiatedBy: getoIGInvestigationInitiatedBy ??
            this.getoIGInvestigationInitiatedBy,
        getoIGInvestigationDate:
            getoIGInvestigationDate ?? this.getoIGInvestigationDate,
        retailProject: retailProject ?? this.retailProject,
        retailProjectOther: retailProjectOther ?? this.retailProjectOther,
        retailSpecialProject: retailSpecialProject ?? this.retailSpecialProject,
        isNewFormat: isNewFormat ?? this.isNewFormat,
        verifyDriverIdentification:
            verifyDriverIdentification ?? this.verifyDriverIdentification,
        tier3Retail: tier3Retail ?? this.tier3Retail,
        logToIdentify: logToIdentify ?? this.logToIdentify,
        importProdObserve: importProdObserve ?? this.importProdObserve,
        phisUsedVerifyProducts:
            phisUsedVerifyProducts ?? this.phisUsedVerifyProducts,
        primaryBusinessTypeAtTimeOfAction: primaryBusinessTypeAtTimeOfAction ??
            this.primaryBusinessTypeAtTimeOfAction,
        productVolumeAtTimeOfAction:
            productVolumeAtTimeOfAction ?? this.productVolumeAtTimeOfAction,
        tierAtTimeOfAction: tierAtTimeOfAction ?? this.tierAtTimeOfAction,
        wasFoodDefenseConducted:
            wasFoodDefenseConducted ?? this.wasFoodDefenseConducted,
        title: title ?? this.title,
        wereShellEggsObserved:
            wereShellEggsObserved ?? this.wereShellEggsObserved,
        foodDefenseInvestigatorId:
            foodDefenseInvestigatorId ?? this.foodDefenseInvestigatorId,
        surveillanceShellEggTemperatures: surveillanceShellEggTemperatures ??
            this.surveillanceShellEggTemperatures,
        surveillanceChangeHistories:
            surveillanceChangeHistories ?? this.surveillanceChangeHistories,
        surveillanceComments: surveillanceComments ?? this.surveillanceComments,
        surveillanceUnlimitedComments: surveillanceUnlimitedComments ?? this.surveillanceUnlimitedComments,
        surveillanceImpProdCountries: surveillanceImpProdCountries ?? this.surveillanceImpProdCountries,
        surveillanceQuestions: surveillanceQuestions ?? this.surveillanceQuestions,
        productControls: productControls ?? this.productControls,
        firmRepresentativeRepTitle1: firmRepresentativeRepTitle1 ?? this.firmRepresentativeRepTitle1,
        storProceduresHazMat: storProceduresHazMat ?? this.storProceduresHazMat,
        maintainingSecurityDuringShip: maintainingSecurityDuringShip ?? this.maintainingSecurityDuringShip,
        empLococation: empLococation ?? this.empLococation);
  }

  Surveillance copyWithWrapped(
      {Wrapped<int?>? surveillanceId,
      Wrapped<int?>? firmID,
      Wrapped<DateTime?>? datePerf,
      Wrapped<String?>? meatCheck,
      Wrapped<String?>? poultryCheck,
      Wrapped<String?>? eggCheck,
      Wrapped<String?>? shellEggCheck,
      Wrapped<String?>? siluriformesFishCheck,
      Wrapped<String?>? nonAmenableCheck,
      Wrapped<String?>? sampleType,
      Wrapped<String?>? sampleResult,
      Wrapped<String?>? followUpDate,
      Wrapped<String?>? followUpReason,
      Wrapped<String?>? firmRepresentative1,
      Wrapped<String?>? firmRepresentativeTitle1,
      Wrapped<String?>? firmRepresentative2,
      Wrapped<String?>? firmRepresentativeTitle2,
      Wrapped<String?>? freqNum,
      Wrapped<String?>? pestCompany,
      Wrapped<DateTime?>? createdDate,
      Wrapped<int?>? createdEmpId,
      Wrapped<DateTime?>? lastModDate,
      Wrapped<int?>? lastModEmpId,
      Wrapped<String?>? supervisorReviewed,
      Wrapped<String?>? foodDefensePlan,
      Wrapped<String?>? emergencyContactInfo,
      Wrapped<String?>? outsideSurveillanceSystem,
      Wrapped<String?>? insideSurveillanceSystem,
      Wrapped<String?>? proceduresForAuthorizedPersons,
      Wrapped<String?>? storageProceduresForHazardousMaterials,
      Wrapped<String?>? proceduresToProtectFood,
      Wrapped<String?>? shippingReceivingAreasRestricted,
      Wrapped<String?>? incomingShippingDocuments,
      Wrapped<String?>? freeFromTampering,
      Wrapped<String?>? productsWholesome,
      Wrapped<String?>? sanitaryConditionsGood,
      Wrapped<String?>? hazardousControlsAdequate,
      Wrapped<String?>? nonHumanFoodDenatured,
      Wrapped<String?>? recordsMaintained,
      Wrapped<String?>? productsNotMisbranded,
      Wrapped<String?>? complianceWithTermsAndConditions,
      Wrapped<String?>? checkForFederalImportInspection,
      Wrapped<String?>? correctDocumentsRequested,
      Wrapped<String?>? checkForShippingMark,
      Wrapped<String?>? phisVerifyForeignCountries,
      Wrapped<String?>? phisVerifyForeignEstablishmentsEligible,
      Wrapped<String?>? phisVerifyFSISInspection,
      Wrapped<String?>? sampleTaken,
      Wrapped<String?>? sampleFromPreviousSample,
      Wrapped<String?>? ecoliSampleTaken,
      Wrapped<String?>? didDetentionOccur,
      Wrapped<String?>? securityVulnerabilitiesDiscussed,
      Wrapped<String?>? form5420Provided,
      Wrapped<String?>? followUpRequired,
      Wrapped<String?>? followUpFromPrevious,
      Wrapped<String?>? investigatorMetWithRepresentative,
      Wrapped<String?>? pestControlVisits,
      Wrapped<String?>? followUpCompleted,
      Wrapped<DateTime?>? followUpCompletedDate,
      Wrapped<String?>? phisVerifyForeignEstablishments,
      Wrapped<String?>? procedureForProductTampering,
      Wrapped<DateTime?>? followUpDeadlineDate,
      Wrapped<String?>? createdEmpName,
      Wrapped<String?>? firmNameAtTimeOfAction,
      Wrapped<int?>? lockEmpId,
      Wrapped<double?>? workflowId,
      Wrapped<double?>? workflowStateId,
      Wrapped<String?>? office,
      Wrapped<String?>? productRecordsAccordingToFoodSafetyActs,
      Wrapped<String?>? empLocation,
      Wrapped<String?>? empSubLocation,
      Wrapped<String?>? respIndvInComp,
      Wrapped<String?>? shellEggTemperature,
      Wrapped<String?>? areShellEggsPropMain,
      Wrapped<String?>? hasChangeHistory,
      Wrapped<String?>? handlesImportedProducts,
      Wrapped<int?>? numMTSamples,
      Wrapped<int?>? numSplProjInvSamples,
      Wrapped<String?>? noSampleTakenInfo,
      Wrapped<String?>? firmGrindingRec,
      Wrapped<int?>? reviewerSupv,
      Wrapped<String?>? fileAttached,
      Wrapped<String?>? reason,
      Wrapped<String?>? nutritionalLabelingVerify,
      Wrapped<String?>? didReferSurvFindings,
      Wrapped<String?>? referralComments,
      Wrapped<String?>? invoiceNbr,
      Wrapped<String?>? billofLadingNbr,
      Wrapped<String?>? getaPHISPermitNbr,
      Wrapped<String?>? gethTSCode,
      Wrapped<String?>? customEntryNbr,
      Wrapped<int?>? totalCases,
      Wrapped<String?>? unitType,
      Wrapped<String?>? foreignProducerEstNbr,
      Wrapped<int?>? brokerFirmID,
      Wrapped<String?>? sampleLabFormNbr,
      Wrapped<String?>? detainedDisposition,
      Wrapped<String?>? detainedDispositionDet,
      Wrapped<String?>? recallDisposition,
      Wrapped<String?>? recallDispositionDet,
      Wrapped<DateTime?>? getfTPInitiatedDate,
      Wrapped<String?>? getfTPDisposition,
      Wrapped<String?>? getfTPDispositionDet,
      Wrapped<String?>? getoIGInvestigation,
      Wrapped<String?>? getoIGInvestigationInitiatedBy,
      Wrapped<DateTime?>? getoIGInvestigationDate,
      Wrapped<String?>? retailProject,
      Wrapped<String?>? retailProjectOther,
      Wrapped<String?>? retailSpecialProject,
      Wrapped<String?>? isNewFormat,
      Wrapped<String?>? verifyDriverIdentification,
      Wrapped<String?>? tier3Retail,
      Wrapped<String?>? logToIdentify,
      Wrapped<bool?>? importProdObserve,
      Wrapped<String?>? phisUsedVerifyProducts,
      Wrapped<String?>? primaryBusinessTypeAtTimeOfAction,
      Wrapped<String?>? productVolumeAtTimeOfAction,
      Wrapped<String?>? tierAtTimeOfAction,
      Wrapped<bool?>? wasFoodDefenseConducted,
      Wrapped<String?>? title,
      Wrapped<bool?>? wereShellEggsObserved,
      Wrapped<int?>? foodDefenseInvestigatorId,
      Wrapped<List<SurveillanceShellEggTemperature>?>?
          surveillanceShellEggTemperatures,
      Wrapped<List<SurveillanceChangeHistory>?>? surveillanceChangeHistories,
      Wrapped<List<SurveillanceComment>?>? surveillanceComments,
      Wrapped<List<SurveillanceUnlimitedComments>?>?
          surveillanceUnlimitedComments,
      Wrapped<List<SurveillanceImpProdCountry>?>? surveillanceImpProdCountries,
      Wrapped<List<SurveillanceQuestion>?>? surveillanceQuestions,
      Wrapped<List<int>?>? productControls,
      Wrapped<String?>? firmRepresentativeRepTitle1,
      Wrapped<String?>? storProceduresHazMat,
      Wrapped<String?>? maintainingSecurityDuringShip,
      Wrapped<String?>? empLococation}) {
    return Surveillance(
        surveillanceId: (surveillanceId != null
            ? surveillanceId.value
            : this.surveillanceId),
        firmID: (firmID != null ? firmID.value : this.firmID),
        datePerf: (datePerf != null ? datePerf.value : this.datePerf),
        meatCheck: (meatCheck != null ? meatCheck.value : this.meatCheck),
        poultryCheck:
            (poultryCheck != null ? poultryCheck.value : this.poultryCheck),
        eggCheck: (eggCheck != null ? eggCheck.value : this.eggCheck),
        shellEggCheck:
            (shellEggCheck != null ? shellEggCheck.value : this.shellEggCheck),
        siluriformesFishCheck: (siluriformesFishCheck != null
            ? siluriformesFishCheck.value
            : this.siluriformesFishCheck),
        nonAmenableCheck: (nonAmenableCheck != null
            ? nonAmenableCheck.value
            : this.nonAmenableCheck),
        sampleType: (sampleType != null ? sampleType.value : this.sampleType),
        sampleResult:
            (sampleResult != null ? sampleResult.value : this.sampleResult),
        followUpDate:
            (followUpDate != null ? followUpDate.value : this.followUpDate),
        followUpReason: (followUpReason != null
            ? followUpReason.value
            : this.followUpReason),
        firmRepresentative1: (firmRepresentative1 != null
            ? firmRepresentative1.value
            : this.firmRepresentative1),
        firmRepresentativeTitle1: (firmRepresentativeTitle1 != null
            ? firmRepresentativeTitle1.value
            : this.firmRepresentativeTitle1),
        firmRepresentative2: (firmRepresentative2 != null
            ? firmRepresentative2.value
            : this.firmRepresentative2),
        firmRepresentativeTitle2: (firmRepresentativeTitle2 != null
            ? firmRepresentativeTitle2.value
            : this.firmRepresentativeTitle2),
        freqNum: (freqNum != null ? freqNum.value : this.freqNum),
        pestCompany:
            (pestCompany != null ? pestCompany.value : this.pestCompany),
        createdDate:
            (createdDate != null ? createdDate.value : this.createdDate),
        createdEmpId:
            (createdEmpId != null ? createdEmpId.value : this.createdEmpId),
        lastModDate:
            (lastModDate != null ? lastModDate.value : this.lastModDate),
        lastModEmpId:
            (lastModEmpId != null ? lastModEmpId.value : this.lastModEmpId),
        supervisorReviewed: (supervisorReviewed != null
            ? supervisorReviewed.value
            : this.supervisorReviewed),
        foodDefensePlan: (foodDefensePlan != null
            ? foodDefensePlan.value
            : this.foodDefensePlan),
        emergencyContactInfo: (emergencyContactInfo != null
            ? emergencyContactInfo.value
            : this.emergencyContactInfo),
        outsideSurveillanceSystem: (outsideSurveillanceSystem != null
            ? outsideSurveillanceSystem.value
            : this.outsideSurveillanceSystem),
        insideSurveillanceSystem: (insideSurveillanceSystem != null
            ? insideSurveillanceSystem.value
            : this.insideSurveillanceSystem),
        proceduresForAuthorizedPersons: (proceduresForAuthorizedPersons != null
            ? proceduresForAuthorizedPersons.value
            : this.proceduresForAuthorizedPersons),
        storageProceduresForHazardousMaterials: (storageProceduresForHazardousMaterials != null
            ? storageProceduresForHazardousMaterials.value
            : this.storageProceduresForHazardousMaterials),
        proceduresToProtectFood: (proceduresToProtectFood != null
            ? proceduresToProtectFood.value
            : this.proceduresToProtectFood),
        shippingReceivingAreasRestricted: (shippingReceivingAreasRestricted != null
            ? shippingReceivingAreasRestricted.value
            : this.shippingReceivingAreasRestricted),
        incomingShippingDocuments: (incomingShippingDocuments != null
            ? incomingShippingDocuments.value
            : this.incomingShippingDocuments),
        freeFromTampering: (freeFromTampering != null
            ? freeFromTampering.value
            : this.freeFromTampering),
        productsWholesome: (productsWholesome != null
            ? productsWholesome.value
            : this.productsWholesome),
        sanitaryConditionsGood: (sanitaryConditionsGood != null
            ? sanitaryConditionsGood.value
            : this.sanitaryConditionsGood),
        hazardousControlsAdequate: (hazardousControlsAdequate != null
            ? hazardousControlsAdequate.value
            : this.hazardousControlsAdequate),
        nonHumanFoodDenatured: (nonHumanFoodDenatured != null
            ? nonHumanFoodDenatured.value
            : this.nonHumanFoodDenatured),
        recordsMaintained: (recordsMaintained != null
            ? recordsMaintained.value
            : this.recordsMaintained),
        productsNotMisbranded: (productsNotMisbranded != null
            ? productsNotMisbranded.value
            : this.productsNotMisbranded),
        complianceWithTermsAndConditions: (complianceWithTermsAndConditions != null
            ? complianceWithTermsAndConditions.value
            : this.complianceWithTermsAndConditions),
        checkForFederalImportInspection: (checkForFederalImportInspection != null
            ? checkForFederalImportInspection.value
            : this.checkForFederalImportInspection),
        correctDocumentsRequested: (correctDocumentsRequested != null
            ? correctDocumentsRequested.value
            : this.correctDocumentsRequested),
        checkForShippingMark: (checkForShippingMark != null
            ? checkForShippingMark.value
            : this.checkForShippingMark),
        phisVerifyForeignCountries:
            (phisVerifyForeignCountries != null ? phisVerifyForeignCountries.value : this.phisVerifyForeignCountries),
        phisVerifyForeignEstablishmentsEligible: (phisVerifyForeignEstablishmentsEligible != null ? phisVerifyForeignEstablishmentsEligible.value : this.phisVerifyForeignEstablishmentsEligible),
        phisVerifyFSISInspection: (phisVerifyFSISInspection != null ? phisVerifyFSISInspection.value : this.phisVerifyFSISInspection),
        sampleTaken: (sampleTaken != null ? sampleTaken.value : this.sampleTaken),
        sampleFromPreviousSample: (sampleFromPreviousSample != null ? sampleFromPreviousSample.value : this.sampleFromPreviousSample),
        ecoliSampleTaken: (ecoliSampleTaken != null ? ecoliSampleTaken.value : this.ecoliSampleTaken),
        didDetentionOccur: (didDetentionOccur != null ? didDetentionOccur.value : this.didDetentionOccur),
        securityVulnerabilitiesDiscussed: (securityVulnerabilitiesDiscussed != null ? securityVulnerabilitiesDiscussed.value : this.securityVulnerabilitiesDiscussed),
        form5420Provided: (form5420Provided != null ? form5420Provided.value : this.form5420Provided),
        followUpRequired: (followUpRequired != null ? followUpRequired.value : this.followUpRequired),
        followUpFromPrevious: (followUpFromPrevious != null ? followUpFromPrevious.value : this.followUpFromPrevious),
        investigatorMetWithRepresentative: (investigatorMetWithRepresentative != null ? investigatorMetWithRepresentative.value : this.investigatorMetWithRepresentative),
        pestControlVisits: (pestControlVisits != null ? pestControlVisits.value : this.pestControlVisits),
        followUpCompleted: (followUpCompleted != null ? followUpCompleted.value : this.followUpCompleted),
        followUpCompletedDate: (followUpCompletedDate != null ? followUpCompletedDate.value : this.followUpCompletedDate),
        phisVerifyForeignEstablishments: (phisVerifyForeignEstablishments != null ? phisVerifyForeignEstablishments.value : this.phisVerifyForeignEstablishments),
        procedureForProductTampering: (procedureForProductTampering != null ? procedureForProductTampering.value : this.procedureForProductTampering),
        followUpDeadlineDate: (followUpDeadlineDate != null ? followUpDeadlineDate.value : this.followUpDeadlineDate),
        createdEmpName: (createdEmpName != null ? createdEmpName.value : this.createdEmpName),
        firmNameAtTimeOfAction: (firmNameAtTimeOfAction != null ? firmNameAtTimeOfAction.value : this.firmNameAtTimeOfAction),
        lockEmpId: (lockEmpId != null ? lockEmpId.value : this.lockEmpId),
        workflowId: (workflowId != null ? workflowId.value : this.workflowId),
        workflowStateId: (workflowStateId != null ? workflowStateId.value : this.workflowStateId),
        office: (office != null ? office.value : this.office),
        productRecordsAccordingToFoodSafetyActs: (productRecordsAccordingToFoodSafetyActs != null ? productRecordsAccordingToFoodSafetyActs.value : this.productRecordsAccordingToFoodSafetyActs),
        empLocation: (empLocation != null ? empLocation.value : this.empLocation),
        empSubLocation: (empSubLocation != null ? empSubLocation.value : this.empSubLocation),
        respIndvInComp: (respIndvInComp != null ? respIndvInComp.value : this.respIndvInComp),
        shellEggTemperature: (shellEggTemperature != null ? shellEggTemperature.value : this.shellEggTemperature),
        areShellEggsPropMain: (areShellEggsPropMain != null ? areShellEggsPropMain.value : this.areShellEggsPropMain),
        hasChangeHistory: (hasChangeHistory != null ? hasChangeHistory.value : this.hasChangeHistory),
        handlesImportedProducts: (handlesImportedProducts != null ? handlesImportedProducts.value : this.handlesImportedProducts),
        numMTSamples: (numMTSamples != null ? numMTSamples.value : this.numMTSamples),
        numSplProjInvSamples: (numSplProjInvSamples != null ? numSplProjInvSamples.value : this.numSplProjInvSamples),
        noSampleTakenInfo: (noSampleTakenInfo != null ? noSampleTakenInfo.value : this.noSampleTakenInfo),
        firmGrindingRec: (firmGrindingRec != null ? firmGrindingRec.value : this.firmGrindingRec),
        reviewerSupv: (reviewerSupv != null ? reviewerSupv.value : this.reviewerSupv),
        fileAttached: (fileAttached != null ? fileAttached.value : this.fileAttached),
        reason: (reason != null ? reason.value : this.reason),
        nutritionalLabelingVerify: (nutritionalLabelingVerify != null ? nutritionalLabelingVerify.value : this.nutritionalLabelingVerify),
        didReferSurvFindings: (didReferSurvFindings != null ? didReferSurvFindings.value : this.didReferSurvFindings),
        referralComments: (referralComments != null ? referralComments.value : this.referralComments),
        invoiceNbr: (invoiceNbr != null ? invoiceNbr.value : this.invoiceNbr),
        billofLadingNbr: (billofLadingNbr != null ? billofLadingNbr.value : this.billofLadingNbr),
        getaPHISPermitNbr: (getaPHISPermitNbr != null ? getaPHISPermitNbr.value : this.getaPHISPermitNbr),
        gethTSCode: (gethTSCode != null ? gethTSCode.value : this.gethTSCode),
        customEntryNbr: (customEntryNbr != null ? customEntryNbr.value : this.customEntryNbr),
        totalCases: (totalCases != null ? totalCases.value : this.totalCases),
        unitType: (unitType != null ? unitType.value : this.unitType),
        foreignProducerEstNbr: (foreignProducerEstNbr != null ? foreignProducerEstNbr.value : this.foreignProducerEstNbr),
        brokerFirmID: (brokerFirmID != null ? brokerFirmID.value : this.brokerFirmID),
        sampleLabFormNbr: (sampleLabFormNbr != null ? sampleLabFormNbr.value : this.sampleLabFormNbr),
        detainedDisposition: (detainedDisposition != null ? detainedDisposition.value : this.detainedDisposition),
        detainedDispositionDet: (detainedDispositionDet != null ? detainedDispositionDet.value : this.detainedDispositionDet),
        recallDisposition: (recallDisposition != null ? recallDisposition.value : this.recallDisposition),
        recallDispositionDet: (recallDispositionDet != null ? recallDispositionDet.value : this.recallDispositionDet),
        getfTPInitiatedDate: (getfTPInitiatedDate != null ? getfTPInitiatedDate.value : this.getfTPInitiatedDate),
        getfTPDisposition: (getfTPDisposition != null ? getfTPDisposition.value : this.getfTPDisposition),
        getfTPDispositionDet: (getfTPDispositionDet != null ? getfTPDispositionDet.value : this.getfTPDispositionDet),
        getoIGInvestigation: (getoIGInvestigation != null ? getoIGInvestigation.value : this.getoIGInvestigation),
        getoIGInvestigationInitiatedBy: (getoIGInvestigationInitiatedBy != null ? getoIGInvestigationInitiatedBy.value : this.getoIGInvestigationInitiatedBy),
        getoIGInvestigationDate: (getoIGInvestigationDate != null ? getoIGInvestigationDate.value : this.getoIGInvestigationDate),
        retailProject: (retailProject != null ? retailProject.value : this.retailProject),
        retailProjectOther: (retailProjectOther != null ? retailProjectOther.value : this.retailProjectOther),
        retailSpecialProject: (retailSpecialProject != null ? retailSpecialProject.value : this.retailSpecialProject),
        isNewFormat: (isNewFormat != null ? isNewFormat.value : this.isNewFormat),
        verifyDriverIdentification: (verifyDriverIdentification != null ? verifyDriverIdentification.value : this.verifyDriverIdentification),
        tier3Retail: (tier3Retail != null ? tier3Retail.value : this.tier3Retail),
        logToIdentify: (logToIdentify != null ? logToIdentify.value : this.logToIdentify),
        importProdObserve: (importProdObserve != null ? importProdObserve.value : this.importProdObserve),
        phisUsedVerifyProducts: (phisUsedVerifyProducts != null ? phisUsedVerifyProducts.value : this.phisUsedVerifyProducts),
        primaryBusinessTypeAtTimeOfAction: (primaryBusinessTypeAtTimeOfAction != null ? primaryBusinessTypeAtTimeOfAction.value : this.primaryBusinessTypeAtTimeOfAction),
        productVolumeAtTimeOfAction: (productVolumeAtTimeOfAction != null ? productVolumeAtTimeOfAction.value : this.productVolumeAtTimeOfAction),
        tierAtTimeOfAction: (tierAtTimeOfAction != null ? tierAtTimeOfAction.value : this.tierAtTimeOfAction),
        wasFoodDefenseConducted: (wasFoodDefenseConducted != null ? wasFoodDefenseConducted.value : this.wasFoodDefenseConducted),
        title: (title != null ? title.value : this.title),
        wereShellEggsObserved: (wereShellEggsObserved != null ? wereShellEggsObserved.value : this.wereShellEggsObserved),
        foodDefenseInvestigatorId: (foodDefenseInvestigatorId != null ? foodDefenseInvestigatorId.value : this.foodDefenseInvestigatorId),
        surveillanceShellEggTemperatures: (surveillanceShellEggTemperatures != null ? surveillanceShellEggTemperatures.value : this.surveillanceShellEggTemperatures),
        surveillanceChangeHistories: (surveillanceChangeHistories != null ? surveillanceChangeHistories.value : this.surveillanceChangeHistories),
        surveillanceComments: (surveillanceComments != null ? surveillanceComments.value : this.surveillanceComments),
        surveillanceUnlimitedComments: (surveillanceUnlimitedComments != null ? surveillanceUnlimitedComments.value : this.surveillanceUnlimitedComments),
        surveillanceImpProdCountries: (surveillanceImpProdCountries != null ? surveillanceImpProdCountries.value : this.surveillanceImpProdCountries),
        surveillanceQuestions: (surveillanceQuestions != null ? surveillanceQuestions.value : this.surveillanceQuestions),
        productControls: (productControls != null ? productControls.value : this.productControls),
        firmRepresentativeRepTitle1: (firmRepresentativeRepTitle1 != null ? firmRepresentativeRepTitle1.value : this.firmRepresentativeRepTitle1),
        storProceduresHazMat: (storProceduresHazMat != null ? storProceduresHazMat.value : this.storProceduresHazMat),
        maintainingSecurityDuringShip: (maintainingSecurityDuringShip != null ? maintainingSecurityDuringShip.value : this.maintainingSecurityDuringShip),
        empLococation: (empLococation != null ? empLococation.value : this.empLococation));
  }
}

@JsonSerializable(explicitToJson: true)
class SurveillanceChangeHistory {
  const SurveillanceChangeHistory({
    this.id,
    this.surveillance,
    this.changeDate,
    this.changeUserID,
    this.changeDesc,
  });

  factory SurveillanceChangeHistory.fromJson(Map<String, dynamic> json) =>
      _$SurveillanceChangeHistoryFromJson(json);

  static const toJsonFactory = _$SurveillanceChangeHistoryToJson;
  Map<String, dynamic> toJson() => _$SurveillanceChangeHistoryToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;
  @JsonKey(name: 'surveillance', includeIfNull: false)
  final Surveillance? surveillance;
  @JsonKey(name: 'changeDate', includeIfNull: false)
  final DateTime? changeDate;
  @JsonKey(name: 'changeUserID', includeIfNull: false)
  final int? changeUserID;
  @JsonKey(name: 'changeDesc', includeIfNull: false)
  final String? changeDesc;
  static const fromJsonFactory = _$SurveillanceChangeHistoryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurveillanceChangeHistory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.surveillance, surveillance) ||
                const DeepCollectionEquality()
                    .equals(other.surveillance, surveillance)) &&
            (identical(other.changeDate, changeDate) ||
                const DeepCollectionEquality()
                    .equals(other.changeDate, changeDate)) &&
            (identical(other.changeUserID, changeUserID) ||
                const DeepCollectionEquality()
                    .equals(other.changeUserID, changeUserID)) &&
            (identical(other.changeDesc, changeDesc) ||
                const DeepCollectionEquality()
                    .equals(other.changeDesc, changeDesc)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(surveillance) ^
      const DeepCollectionEquality().hash(changeDate) ^
      const DeepCollectionEquality().hash(changeUserID) ^
      const DeepCollectionEquality().hash(changeDesc) ^
      runtimeType.hashCode;
}

extension $SurveillanceChangeHistoryExtension on SurveillanceChangeHistory {
  SurveillanceChangeHistory copyWith(
      {int? id,
      Surveillance? surveillance,
      DateTime? changeDate,
      int? changeUserID,
      String? changeDesc}) {
    return SurveillanceChangeHistory(
        id: id ?? this.id,
        surveillance: surveillance ?? this.surveillance,
        changeDate: changeDate ?? this.changeDate,
        changeUserID: changeUserID ?? this.changeUserID,
        changeDesc: changeDesc ?? this.changeDesc);
  }

  SurveillanceChangeHistory copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<Surveillance?>? surveillance,
      Wrapped<DateTime?>? changeDate,
      Wrapped<int?>? changeUserID,
      Wrapped<String?>? changeDesc}) {
    return SurveillanceChangeHistory(
        id: (id != null ? id.value : this.id),
        surveillance:
            (surveillance != null ? surveillance.value : this.surveillance),
        changeDate: (changeDate != null ? changeDate.value : this.changeDate),
        changeUserID:
            (changeUserID != null ? changeUserID.value : this.changeUserID),
        changeDesc: (changeDesc != null ? changeDesc.value : this.changeDesc));
  }
}

@JsonSerializable(explicitToJson: true)
class SurveillanceComment {
  const SurveillanceComment({
    this.id,
    this.surveillance,
    this.commentsType,
    this.comments,
  });

  factory SurveillanceComment.fromJson(Map<String, dynamic> json) =>
      _$SurveillanceCommentFromJson(json);

  static const toJsonFactory = _$SurveillanceCommentToJson;
  Map<String, dynamic> toJson() => _$SurveillanceCommentToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;
  @JsonKey(name: 'surveillance', includeIfNull: false)
  final Surveillance? surveillance;
  @JsonKey(name: 'commentsType', includeIfNull: false)
  final String? commentsType;
  @JsonKey(name: 'comments', includeIfNull: false)
  final String? comments;
  static const fromJsonFactory = _$SurveillanceCommentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurveillanceComment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.surveillance, surveillance) ||
                const DeepCollectionEquality()
                    .equals(other.surveillance, surveillance)) &&
            (identical(other.commentsType, commentsType) ||
                const DeepCollectionEquality()
                    .equals(other.commentsType, commentsType)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(surveillance) ^
      const DeepCollectionEquality().hash(commentsType) ^
      const DeepCollectionEquality().hash(comments) ^
      runtimeType.hashCode;
}

extension $SurveillanceCommentExtension on SurveillanceComment {
  SurveillanceComment copyWith(
      {int? id,
      Surveillance? surveillance,
      String? commentsType,
      String? comments}) {
    return SurveillanceComment(
        id: id ?? this.id,
        surveillance: surveillance ?? this.surveillance,
        commentsType: commentsType ?? this.commentsType,
        comments: comments ?? this.comments);
  }

  SurveillanceComment copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<Surveillance?>? surveillance,
      Wrapped<String?>? commentsType,
      Wrapped<String?>? comments}) {
    return SurveillanceComment(
        id: (id != null ? id.value : this.id),
        surveillance:
            (surveillance != null ? surveillance.value : this.surveillance),
        commentsType:
            (commentsType != null ? commentsType.value : this.commentsType),
        comments: (comments != null ? comments.value : this.comments));
  }
}

@JsonSerializable(explicitToJson: true)
class SurveillanceImpProdCountry {
  const SurveillanceImpProdCountry({
    this.surveillance,
    this.countryCode,
  });

  factory SurveillanceImpProdCountry.fromJson(Map<String, dynamic> json) =>
      _$SurveillanceImpProdCountryFromJson(json);

  static const toJsonFactory = _$SurveillanceImpProdCountryToJson;
  Map<String, dynamic> toJson() => _$SurveillanceImpProdCountryToJson(this);

  @JsonKey(name: 'surveillance', includeIfNull: false)
  final Surveillance? surveillance;
  @JsonKey(name: 'countryCode', includeIfNull: false)
  final String? countryCode;
  static const fromJsonFactory = _$SurveillanceImpProdCountryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurveillanceImpProdCountry &&
            (identical(other.surveillance, surveillance) ||
                const DeepCollectionEquality()
                    .equals(other.surveillance, surveillance)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(surveillance) ^
      const DeepCollectionEquality().hash(countryCode) ^
      runtimeType.hashCode;
}

extension $SurveillanceImpProdCountryExtension on SurveillanceImpProdCountry {
  SurveillanceImpProdCountry copyWith(
      {Surveillance? surveillance, String? countryCode}) {
    return SurveillanceImpProdCountry(
        surveillance: surveillance ?? this.surveillance,
        countryCode: countryCode ?? this.countryCode);
  }

  SurveillanceImpProdCountry copyWithWrapped(
      {Wrapped<Surveillance?>? surveillance, Wrapped<String?>? countryCode}) {
    return SurveillanceImpProdCountry(
        surveillance:
            (surveillance != null ? surveillance.value : this.surveillance),
        countryCode:
            (countryCode != null ? countryCode.value : this.countryCode));
  }
}

@JsonSerializable(explicitToJson: true)
class SurveillanceQuestion {
  const SurveillanceQuestion({
    this.id,
    this.surveillance,
    this.answer,
    this.questionLabel,
    this.questionSeqNum,
    this.headerType,
    this.comments,
    this.headerLabel,
    this.headerSeqNum,
  });

  factory SurveillanceQuestion.fromJson(Map<String, dynamic> json) =>
      _$SurveillanceQuestionFromJson(json);

  static const toJsonFactory = _$SurveillanceQuestionToJson;
  Map<String, dynamic> toJson() => _$SurveillanceQuestionToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;
  @JsonKey(name: 'surveillance', includeIfNull: false)
  final Surveillance? surveillance;
  @JsonKey(name: 'answer', includeIfNull: false)
  final String? answer;
  @JsonKey(name: 'questionLabel', includeIfNull: false)
  final String? questionLabel;
  @JsonKey(name: 'questionSeqNum', includeIfNull: false)
  final int? questionSeqNum;
  @JsonKey(name: 'headerType', includeIfNull: false)
  final String? headerType;
  @JsonKey(name: 'comments', includeIfNull: false)
  final String? comments;
  @JsonKey(name: 'headerLabel', includeIfNull: false)
  final String? headerLabel;
  @JsonKey(name: 'headerSeqNum', includeIfNull: false)
  final int? headerSeqNum;
  static const fromJsonFactory = _$SurveillanceQuestionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurveillanceQuestion &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.surveillance, surveillance) ||
                const DeepCollectionEquality()
                    .equals(other.surveillance, surveillance)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.questionLabel, questionLabel) ||
                const DeepCollectionEquality()
                    .equals(other.questionLabel, questionLabel)) &&
            (identical(other.questionSeqNum, questionSeqNum) ||
                const DeepCollectionEquality()
                    .equals(other.questionSeqNum, questionSeqNum)) &&
            (identical(other.headerType, headerType) ||
                const DeepCollectionEquality()
                    .equals(other.headerType, headerType)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.headerLabel, headerLabel) ||
                const DeepCollectionEquality()
                    .equals(other.headerLabel, headerLabel)) &&
            (identical(other.headerSeqNum, headerSeqNum) ||
                const DeepCollectionEquality()
                    .equals(other.headerSeqNum, headerSeqNum)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(surveillance) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(questionLabel) ^
      const DeepCollectionEquality().hash(questionSeqNum) ^
      const DeepCollectionEquality().hash(headerType) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(headerLabel) ^
      const DeepCollectionEquality().hash(headerSeqNum) ^
      runtimeType.hashCode;
}

extension $SurveillanceQuestionExtension on SurveillanceQuestion {
  SurveillanceQuestion copyWith(
      {int? id,
      Surveillance? surveillance,
      String? answer,
      String? questionLabel,
      int? questionSeqNum,
      String? headerType,
      String? comments,
      String? headerLabel,
      int? headerSeqNum}) {
    return SurveillanceQuestion(
        id: id ?? this.id,
        surveillance: surveillance ?? this.surveillance,
        answer: answer ?? this.answer,
        questionLabel: questionLabel ?? this.questionLabel,
        questionSeqNum: questionSeqNum ?? this.questionSeqNum,
        headerType: headerType ?? this.headerType,
        comments: comments ?? this.comments,
        headerLabel: headerLabel ?? this.headerLabel,
        headerSeqNum: headerSeqNum ?? this.headerSeqNum);
  }

  SurveillanceQuestion copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<Surveillance?>? surveillance,
      Wrapped<String?>? answer,
      Wrapped<String?>? questionLabel,
      Wrapped<int?>? questionSeqNum,
      Wrapped<String?>? headerType,
      Wrapped<String?>? comments,
      Wrapped<String?>? headerLabel,
      Wrapped<int?>? headerSeqNum}) {
    return SurveillanceQuestion(
        id: (id != null ? id.value : this.id),
        surveillance:
            (surveillance != null ? surveillance.value : this.surveillance),
        answer: (answer != null ? answer.value : this.answer),
        questionLabel:
            (questionLabel != null ? questionLabel.value : this.questionLabel),
        questionSeqNum: (questionSeqNum != null
            ? questionSeqNum.value
            : this.questionSeqNum),
        headerType: (headerType != null ? headerType.value : this.headerType),
        comments: (comments != null ? comments.value : this.comments),
        headerLabel:
            (headerLabel != null ? headerLabel.value : this.headerLabel),
        headerSeqNum:
            (headerSeqNum != null ? headerSeqNum.value : this.headerSeqNum));
  }
}

@JsonSerializable(explicitToJson: true)
class SurveillanceShellEggTemperature {
  const SurveillanceShellEggTemperature({
    this.id,
    this.surveillance,
    this.storageType,
    this.alias,
    this.temperature1,
    this.temperature2,
    this.temperature3,
    this.temperature4,
    this.temperature5,
    this.avgTemperature,
  });

  factory SurveillanceShellEggTemperature.fromJson(Map<String, dynamic> json) =>
      _$SurveillanceShellEggTemperatureFromJson(json);

  static const toJsonFactory = _$SurveillanceShellEggTemperatureToJson;
  Map<String, dynamic> toJson() =>
      _$SurveillanceShellEggTemperatureToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;
  @JsonKey(name: 'surveillance', includeIfNull: false)
  final Surveillance? surveillance;
  @JsonKey(name: 'storageType', includeIfNull: false)
  final String? storageType;
  @JsonKey(name: 'alias', includeIfNull: false)
  final String? alias;
  @JsonKey(name: 'temperature1', includeIfNull: false)
  final double? temperature1;
  @JsonKey(name: 'temperature2', includeIfNull: false)
  final double? temperature2;
  @JsonKey(name: 'temperature3', includeIfNull: false)
  final double? temperature3;
  @JsonKey(name: 'temperature4', includeIfNull: false)
  final double? temperature4;
  @JsonKey(name: 'temperature5', includeIfNull: false)
  final double? temperature5;
  @JsonKey(name: 'avgTemperature', includeIfNull: false)
  final double? avgTemperature;
  static const fromJsonFactory = _$SurveillanceShellEggTemperatureFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurveillanceShellEggTemperature &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.surveillance, surveillance) ||
                const DeepCollectionEquality()
                    .equals(other.surveillance, surveillance)) &&
            (identical(other.storageType, storageType) ||
                const DeepCollectionEquality()
                    .equals(other.storageType, storageType)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.temperature1, temperature1) ||
                const DeepCollectionEquality()
                    .equals(other.temperature1, temperature1)) &&
            (identical(other.temperature2, temperature2) ||
                const DeepCollectionEquality()
                    .equals(other.temperature2, temperature2)) &&
            (identical(other.temperature3, temperature3) ||
                const DeepCollectionEquality()
                    .equals(other.temperature3, temperature3)) &&
            (identical(other.temperature4, temperature4) ||
                const DeepCollectionEquality()
                    .equals(other.temperature4, temperature4)) &&
            (identical(other.temperature5, temperature5) ||
                const DeepCollectionEquality()
                    .equals(other.temperature5, temperature5)) &&
            (identical(other.avgTemperature, avgTemperature) ||
                const DeepCollectionEquality()
                    .equals(other.avgTemperature, avgTemperature)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(surveillance) ^
      const DeepCollectionEquality().hash(storageType) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(temperature1) ^
      const DeepCollectionEquality().hash(temperature2) ^
      const DeepCollectionEquality().hash(temperature3) ^
      const DeepCollectionEquality().hash(temperature4) ^
      const DeepCollectionEquality().hash(temperature5) ^
      const DeepCollectionEquality().hash(avgTemperature) ^
      runtimeType.hashCode;
}

extension $SurveillanceShellEggTemperatureExtension
    on SurveillanceShellEggTemperature {
  SurveillanceShellEggTemperature copyWith(
      {int? id,
      Surveillance? surveillance,
      String? storageType,
      String? alias,
      double? temperature1,
      double? temperature2,
      double? temperature3,
      double? temperature4,
      double? temperature5,
      double? avgTemperature}) {
    return SurveillanceShellEggTemperature(
        id: id ?? this.id,
        surveillance: surveillance ?? this.surveillance,
        storageType: storageType ?? this.storageType,
        alias: alias ?? this.alias,
        temperature1: temperature1 ?? this.temperature1,
        temperature2: temperature2 ?? this.temperature2,
        temperature3: temperature3 ?? this.temperature3,
        temperature4: temperature4 ?? this.temperature4,
        temperature5: temperature5 ?? this.temperature5,
        avgTemperature: avgTemperature ?? this.avgTemperature);
  }

  SurveillanceShellEggTemperature copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<Surveillance?>? surveillance,
      Wrapped<String?>? storageType,
      Wrapped<String?>? alias,
      Wrapped<double?>? temperature1,
      Wrapped<double?>? temperature2,
      Wrapped<double?>? temperature3,
      Wrapped<double?>? temperature4,
      Wrapped<double?>? temperature5,
      Wrapped<double?>? avgTemperature}) {
    return SurveillanceShellEggTemperature(
        id: (id != null ? id.value : this.id),
        surveillance:
            (surveillance != null ? surveillance.value : this.surveillance),
        storageType:
            (storageType != null ? storageType.value : this.storageType),
        alias: (alias != null ? alias.value : this.alias),
        temperature1:
            (temperature1 != null ? temperature1.value : this.temperature1),
        temperature2:
            (temperature2 != null ? temperature2.value : this.temperature2),
        temperature3:
            (temperature3 != null ? temperature3.value : this.temperature3),
        temperature4:
            (temperature4 != null ? temperature4.value : this.temperature4),
        temperature5:
            (temperature5 != null ? temperature5.value : this.temperature5),
        avgTemperature: (avgTemperature != null
            ? avgTemperature.value
            : this.avgTemperature));
  }
}

@JsonSerializable(explicitToJson: true)
class SurveillanceUnlimitedComments {
  const SurveillanceUnlimitedComments({
    this.id,
    this.surveillance,
    this.commentsType,
    this.comments,
  });

  factory SurveillanceUnlimitedComments.fromJson(Map<String, dynamic> json) =>
      _$SurveillanceUnlimitedCommentsFromJson(json);

  static const toJsonFactory = _$SurveillanceUnlimitedCommentsToJson;
  Map<String, dynamic> toJson() => _$SurveillanceUnlimitedCommentsToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;
  @JsonKey(name: 'surveillance', includeIfNull: false)
  final Surveillance? surveillance;
  @JsonKey(name: 'commentsType', includeIfNull: false)
  final String? commentsType;
  @JsonKey(name: 'comments', includeIfNull: false)
  final String? comments;
  static const fromJsonFactory = _$SurveillanceUnlimitedCommentsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurveillanceUnlimitedComments &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.surveillance, surveillance) ||
                const DeepCollectionEquality()
                    .equals(other.surveillance, surveillance)) &&
            (identical(other.commentsType, commentsType) ||
                const DeepCollectionEquality()
                    .equals(other.commentsType, commentsType)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(surveillance) ^
      const DeepCollectionEquality().hash(commentsType) ^
      const DeepCollectionEquality().hash(comments) ^
      runtimeType.hashCode;
}

extension $SurveillanceUnlimitedCommentsExtension
    on SurveillanceUnlimitedComments {
  SurveillanceUnlimitedComments copyWith(
      {int? id,
      Surveillance? surveillance,
      String? commentsType,
      String? comments}) {
    return SurveillanceUnlimitedComments(
        id: id ?? this.id,
        surveillance: surveillance ?? this.surveillance,
        commentsType: commentsType ?? this.commentsType,
        comments: comments ?? this.comments);
  }

  SurveillanceUnlimitedComments copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<Surveillance?>? surveillance,
      Wrapped<String?>? commentsType,
      Wrapped<String?>? comments}) {
    return SurveillanceUnlimitedComments(
        id: (id != null ? id.value : this.id),
        surveillance:
            (surveillance != null ? surveillance.value : this.surveillance),
        commentsType:
            (commentsType != null ? commentsType.value : this.commentsType),
        comments: (comments != null ? comments.value : this.comments));
  }
}

@JsonSerializable(explicitToJson: true)
class ContactInfo {
  const ContactInfo({
    this.contactInfoId,
    this.contactName,
    this.contactTitle,
    this.contactPhoneNum,
    this.contactPhoneNumExtn,
    this.contactMobileNum,
    this.receiveTextMessage,
    this.contactFaxNum,
    this.contactEmail,
  });

  factory ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoFromJson(json);

  static const toJsonFactory = _$ContactInfoToJson;
  Map<String, dynamic> toJson() => _$ContactInfoToJson(this);

  @JsonKey(name: 'contactInfoId', includeIfNull: false)
  final int? contactInfoId;
  @JsonKey(name: 'contactName', includeIfNull: false)
  final String? contactName;
  @JsonKey(name: 'contactTitle', includeIfNull: false)
  final String? contactTitle;
  @JsonKey(name: 'contactPhoneNum', includeIfNull: false)
  final String? contactPhoneNum;
  @JsonKey(name: 'contactPhoneNumExtn', includeIfNull: false)
  final String? contactPhoneNumExtn;
  @JsonKey(name: 'contactMobileNum', includeIfNull: false)
  final String? contactMobileNum;
  @JsonKey(name: 'receiveTextMessage', includeIfNull: false)
  final String? receiveTextMessage;
  @JsonKey(name: 'contactFaxNum', includeIfNull: false)
  final String? contactFaxNum;
  @JsonKey(name: 'contactEmail', includeIfNull: false)
  final String? contactEmail;
  static const fromJsonFactory = _$ContactInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactInfo &&
            (identical(other.contactInfoId, contactInfoId) ||
                const DeepCollectionEquality()
                    .equals(other.contactInfoId, contactInfoId)) &&
            (identical(other.contactName, contactName) ||
                const DeepCollectionEquality()
                    .equals(other.contactName, contactName)) &&
            (identical(other.contactTitle, contactTitle) ||
                const DeepCollectionEquality()
                    .equals(other.contactTitle, contactTitle)) &&
            (identical(other.contactPhoneNum, contactPhoneNum) ||
                const DeepCollectionEquality()
                    .equals(other.contactPhoneNum, contactPhoneNum)) &&
            (identical(other.contactPhoneNumExtn, contactPhoneNumExtn) ||
                const DeepCollectionEquality()
                    .equals(other.contactPhoneNumExtn, contactPhoneNumExtn)) &&
            (identical(other.contactMobileNum, contactMobileNum) ||
                const DeepCollectionEquality()
                    .equals(other.contactMobileNum, contactMobileNum)) &&
            (identical(other.receiveTextMessage, receiveTextMessage) ||
                const DeepCollectionEquality()
                    .equals(other.receiveTextMessage, receiveTextMessage)) &&
            (identical(other.contactFaxNum, contactFaxNum) ||
                const DeepCollectionEquality()
                    .equals(other.contactFaxNum, contactFaxNum)) &&
            (identical(other.contactEmail, contactEmail) ||
                const DeepCollectionEquality()
                    .equals(other.contactEmail, contactEmail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contactInfoId) ^
      const DeepCollectionEquality().hash(contactName) ^
      const DeepCollectionEquality().hash(contactTitle) ^
      const DeepCollectionEquality().hash(contactPhoneNum) ^
      const DeepCollectionEquality().hash(contactPhoneNumExtn) ^
      const DeepCollectionEquality().hash(contactMobileNum) ^
      const DeepCollectionEquality().hash(receiveTextMessage) ^
      const DeepCollectionEquality().hash(contactFaxNum) ^
      const DeepCollectionEquality().hash(contactEmail) ^
      runtimeType.hashCode;
}

extension $ContactInfoExtension on ContactInfo {
  ContactInfo copyWith(
      {int? contactInfoId,
      String? contactName,
      String? contactTitle,
      String? contactPhoneNum,
      String? contactPhoneNumExtn,
      String? contactMobileNum,
      String? receiveTextMessage,
      String? contactFaxNum,
      String? contactEmail}) {
    return ContactInfo(
        contactInfoId: contactInfoId ?? this.contactInfoId,
        contactName: contactName ?? this.contactName,
        contactTitle: contactTitle ?? this.contactTitle,
        contactPhoneNum: contactPhoneNum ?? this.contactPhoneNum,
        contactPhoneNumExtn: contactPhoneNumExtn ?? this.contactPhoneNumExtn,
        contactMobileNum: contactMobileNum ?? this.contactMobileNum,
        receiveTextMessage: receiveTextMessage ?? this.receiveTextMessage,
        contactFaxNum: contactFaxNum ?? this.contactFaxNum,
        contactEmail: contactEmail ?? this.contactEmail);
  }

  ContactInfo copyWithWrapped(
      {Wrapped<int?>? contactInfoId,
      Wrapped<String?>? contactName,
      Wrapped<String?>? contactTitle,
      Wrapped<String?>? contactPhoneNum,
      Wrapped<String?>? contactPhoneNumExtn,
      Wrapped<String?>? contactMobileNum,
      Wrapped<String?>? receiveTextMessage,
      Wrapped<String?>? contactFaxNum,
      Wrapped<String?>? contactEmail}) {
    return ContactInfo(
        contactInfoId:
            (contactInfoId != null ? contactInfoId.value : this.contactInfoId),
        contactName:
            (contactName != null ? contactName.value : this.contactName),
        contactTitle:
            (contactTitle != null ? contactTitle.value : this.contactTitle),
        contactPhoneNum: (contactPhoneNum != null
            ? contactPhoneNum.value
            : this.contactPhoneNum),
        contactPhoneNumExtn: (contactPhoneNumExtn != null
            ? contactPhoneNumExtn.value
            : this.contactPhoneNumExtn),
        contactMobileNum: (contactMobileNum != null
            ? contactMobileNum.value
            : this.contactMobileNum),
        receiveTextMessage: (receiveTextMessage != null
            ? receiveTextMessage.value
            : this.receiveTextMessage),
        contactFaxNum:
            (contactFaxNum != null ? contactFaxNum.value : this.contactFaxNum),
        contactEmail:
            (contactEmail != null ? contactEmail.value : this.contactEmail));
  }
}

@JsonSerializable(explicitToJson: true)
class FirmChangeHistory {
  const FirmChangeHistory({
    this.changeRecId,
    this.firm,
    this.changeUserId,
    this.changeDate,
    this.changeDesc,
    this.changeReason,
  });

  factory FirmChangeHistory.fromJson(Map<String, dynamic> json) =>
      _$FirmChangeHistoryFromJson(json);

  static const toJsonFactory = _$FirmChangeHistoryToJson;
  Map<String, dynamic> toJson() => _$FirmChangeHistoryToJson(this);

  @JsonKey(name: 'changeRecId', includeIfNull: false)
  final int? changeRecId;
  @JsonKey(name: 'firm', includeIfNull: false)
  final FirmInfo? firm;
  @JsonKey(name: 'changeUserId', includeIfNull: false)
  final int? changeUserId;
  @JsonKey(name: 'changeDate', includeIfNull: false)
  final DateTime? changeDate;
  @JsonKey(name: 'changeDesc', includeIfNull: false)
  final String? changeDesc;
  @JsonKey(name: 'changeReason', includeIfNull: false)
  final String? changeReason;
  static const fromJsonFactory = _$FirmChangeHistoryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirmChangeHistory &&
            (identical(other.changeRecId, changeRecId) ||
                const DeepCollectionEquality()
                    .equals(other.changeRecId, changeRecId)) &&
            (identical(other.firm, firm) ||
                const DeepCollectionEquality().equals(other.firm, firm)) &&
            (identical(other.changeUserId, changeUserId) ||
                const DeepCollectionEquality()
                    .equals(other.changeUserId, changeUserId)) &&
            (identical(other.changeDate, changeDate) ||
                const DeepCollectionEquality()
                    .equals(other.changeDate, changeDate)) &&
            (identical(other.changeDesc, changeDesc) ||
                const DeepCollectionEquality()
                    .equals(other.changeDesc, changeDesc)) &&
            (identical(other.changeReason, changeReason) ||
                const DeepCollectionEquality()
                    .equals(other.changeReason, changeReason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(changeRecId) ^
      const DeepCollectionEquality().hash(firm) ^
      const DeepCollectionEquality().hash(changeUserId) ^
      const DeepCollectionEquality().hash(changeDate) ^
      const DeepCollectionEquality().hash(changeDesc) ^
      const DeepCollectionEquality().hash(changeReason) ^
      runtimeType.hashCode;
}

extension $FirmChangeHistoryExtension on FirmChangeHistory {
  FirmChangeHistory copyWith(
      {int? changeRecId,
      FirmInfo? firm,
      int? changeUserId,
      DateTime? changeDate,
      String? changeDesc,
      String? changeReason}) {
    return FirmChangeHistory(
        changeRecId: changeRecId ?? this.changeRecId,
        firm: firm ?? this.firm,
        changeUserId: changeUserId ?? this.changeUserId,
        changeDate: changeDate ?? this.changeDate,
        changeDesc: changeDesc ?? this.changeDesc,
        changeReason: changeReason ?? this.changeReason);
  }

  FirmChangeHistory copyWithWrapped(
      {Wrapped<int?>? changeRecId,
      Wrapped<FirmInfo?>? firm,
      Wrapped<int?>? changeUserId,
      Wrapped<DateTime?>? changeDate,
      Wrapped<String?>? changeDesc,
      Wrapped<String?>? changeReason}) {
    return FirmChangeHistory(
        changeRecId:
            (changeRecId != null ? changeRecId.value : this.changeRecId),
        firm: (firm != null ? firm.value : this.firm),
        changeUserId:
            (changeUserId != null ? changeUserId.value : this.changeUserId),
        changeDate: (changeDate != null ? changeDate.value : this.changeDate),
        changeDesc: (changeDesc != null ? changeDesc.value : this.changeDesc),
        changeReason:
            (changeReason != null ? changeReason.value : this.changeReason));
  }
}

@JsonSerializable(explicitToJson: true)
class FirmComments {
  const FirmComments({
    this.commentsId,
    this.firm,
    this.commentType,
    this.text,
  });

  factory FirmComments.fromJson(Map<String, dynamic> json) =>
      _$FirmCommentsFromJson(json);

  static const toJsonFactory = _$FirmCommentsToJson;
  Map<String, dynamic> toJson() => _$FirmCommentsToJson(this);

  @JsonKey(name: 'commentsId', includeIfNull: false)
  final int? commentsId;
  @JsonKey(name: 'firm', includeIfNull: false)
  final FirmInfo? firm;
  @JsonKey(name: 'commentType', includeIfNull: false)
  final String? commentType;
  @JsonKey(name: 'text', includeIfNull: false)
  final String? text;
  static const fromJsonFactory = _$FirmCommentsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirmComments &&
            (identical(other.commentsId, commentsId) ||
                const DeepCollectionEquality()
                    .equals(other.commentsId, commentsId)) &&
            (identical(other.firm, firm) ||
                const DeepCollectionEquality().equals(other.firm, firm)) &&
            (identical(other.commentType, commentType) ||
                const DeepCollectionEquality()
                    .equals(other.commentType, commentType)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(commentsId) ^
      const DeepCollectionEquality().hash(firm) ^
      const DeepCollectionEquality().hash(commentType) ^
      const DeepCollectionEquality().hash(text) ^
      runtimeType.hashCode;
}

extension $FirmCommentsExtension on FirmComments {
  FirmComments copyWith(
      {int? commentsId, FirmInfo? firm, String? commentType, String? text}) {
    return FirmComments(
        commentsId: commentsId ?? this.commentsId,
        firm: firm ?? this.firm,
        commentType: commentType ?? this.commentType,
        text: text ?? this.text);
  }

  FirmComments copyWithWrapped(
      {Wrapped<int?>? commentsId,
      Wrapped<FirmInfo?>? firm,
      Wrapped<String?>? commentType,
      Wrapped<String?>? text}) {
    return FirmComments(
        commentsId: (commentsId != null ? commentsId.value : this.commentsId),
        firm: (firm != null ? firm.value : this.firm),
        commentType:
            (commentType != null ? commentType.value : this.commentType),
        text: (text != null ? text.value : this.text));
  }
}

@JsonSerializable(explicitToJson: true)
class FirmInfo {
  const FirmInfo({
    this.firmId,
    this.name,
    this.doingBusAs,
    this.alsoKnownAs,
    this.prevName,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.zipCode,
    this.county,
    this.isMailEqlFirm,
    this.mailAddress1,
    this.mailAddress2,
    this.mailCity,
    this.mailState,
    this.mailZipCode,
    this.mailCounty,
    this.estNum,
    this.risk,
    this.regionCode,
    this.subRegionCode,
    this.assignCode,
    this.numFloors,
    this.apxSqFoot,
    this.apxNumEmployees,
    this.isFormAttached,
    this.primaryBusType,
    this.secondaryBusType,
    this.tertiaryBusType,
    this.businessActivities,
    this.monOpenTime,
    this.monCloseTime,
    this.isMonClosed,
    this.tueOpenTime,
    this.tueCloseTime,
    this.isTueClosed,
    this.wedOpenTime,
    this.wedCloseTime,
    this.isWedClosed,
    this.thuOpenTime,
    this.thuCloseTime,
    this.isThuClosed,
    this.friOpenTime,
    this.friCloseTime,
    this.isFriClosed,
    this.satOpenTime,
    this.satCloseTime,
    this.isSatClosed,
    this.sunOpenTime,
    this.sunCloseTime,
    this.isSunClosed,
    this.dateOwnerChanged,
    this.countryOrigin,
    this.firstManSameAsOwner,
    this.orgSameAsFirmName,
    this.orgSameAsPhysicalAddress,
    this.orgSameAsMailAddress,
    this.orgName,
    this.orgType,
    this.orgAddress1,
    this.orgAddress2,
    this.orgCity,
    this.orgState,
    this.orgZipCode,
    this.orgCounty,
    this.isMeatHandled,
    this.isPoultryHandled,
    this.isEggsHandled,
    this.isSiluriformesFishHandled,
    this.isOtherHandled,
    this.otherProduct,
    this.isDomestic,
    this.isImported,
    this.volumeProduct,
    this.createdDate,
    this.createdEmpId,
    this.lastModDate,
    this.lastModEmpId,
    this.contactRegionalOffice,
    this.contactRegionalOfficeComment,
    this.workflowStateId,
    this.workflowRecordId,
    this.isOrderPermanent,
    this.isDeleteFirmReq,
    this.isEnergySource,
    this.exprOrderDate,
    this.lastSurvDate,
    this.isOpenInv,
    this.hasChangeHistory,
    this.fileAttached,
    this.complianceAttached,
    this.firmPrevOwnerships,
    this.firmComments,
    this.firmChangeHistory,
    this.firmInfoCountries,
    this.pestControlHistory,
    this.firmRegistrationInfo,
    this.owner,
    this.firstManager,
    this.secondManager,
    this.pestControl,
    this.associatedFirmLinks,
  });

  factory FirmInfo.fromJson(Map<String, dynamic> json) =>
      _$FirmInfoFromJson(json);

  static const toJsonFactory = _$FirmInfoToJson;
  Map<String, dynamic> toJson() => _$FirmInfoToJson(this);

  @JsonKey(name: 'firmId', includeIfNull: false)
  final int? firmId;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'doingBusAs', includeIfNull: false)
  final String? doingBusAs;
  @JsonKey(name: 'alsoKnownAs', includeIfNull: false)
  final String? alsoKnownAs;
  @JsonKey(name: 'prevName', includeIfNull: false)
  final String? prevName;
  @JsonKey(name: 'address1', includeIfNull: false)
  final String? address1;
  @JsonKey(name: 'address2', includeIfNull: false)
  final String? address2;
  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  @JsonKey(name: 'state', includeIfNull: false)
  final String? state;
  @JsonKey(name: 'zipCode', includeIfNull: false)
  final String? zipCode;
  @JsonKey(name: 'county', includeIfNull: false)
  final String? county;
  @JsonKey(name: 'isMailEqlFirm', includeIfNull: false)
  final String? isMailEqlFirm;
  @JsonKey(name: 'mailAddress1', includeIfNull: false)
  final String? mailAddress1;
  @JsonKey(name: 'mailAddress2', includeIfNull: false)
  final String? mailAddress2;
  @JsonKey(name: 'mailCity', includeIfNull: false)
  final String? mailCity;
  @JsonKey(name: 'mailState', includeIfNull: false)
  final String? mailState;
  @JsonKey(name: 'mailZipCode', includeIfNull: false)
  final String? mailZipCode;
  @JsonKey(name: 'mailCounty', includeIfNull: false)
  final String? mailCounty;
  @JsonKey(name: 'estNum', includeIfNull: false)
  final String? estNum;
  @JsonKey(name: 'risk', includeIfNull: false)
  final String? risk;
  @JsonKey(name: 'regionCode', includeIfNull: false)
  final String? regionCode;
  @JsonKey(name: 'subRegionCode', includeIfNull: false)
  final String? subRegionCode;
  @JsonKey(name: 'assignCode', includeIfNull: false)
  final String? assignCode;
  @JsonKey(name: 'numFloors', includeIfNull: false)
  final String? numFloors;
  @JsonKey(name: 'apxSqFoot', includeIfNull: false)
  final String? apxSqFoot;
  @JsonKey(name: 'apxNumEmployees', includeIfNull: false)
  final String? apxNumEmployees;
  @JsonKey(name: 'isFormAttached', includeIfNull: false)
  final String? isFormAttached;
  @JsonKey(name: 'primaryBusType', includeIfNull: false)
  final String? primaryBusType;
  @JsonKey(name: 'secondaryBusType', includeIfNull: false)
  final String? secondaryBusType;
  @JsonKey(name: 'tertiaryBusType', includeIfNull: false)
  final String? tertiaryBusType;
  @JsonKey(name: 'businessActivities', includeIfNull: false)
  final String? businessActivities;
  @JsonKey(name: 'monOpenTime', includeIfNull: false)
  final String? monOpenTime;
  @JsonKey(name: 'monCloseTime', includeIfNull: false)
  final String? monCloseTime;
  @JsonKey(name: 'isMonClosed', includeIfNull: false)
  final String? isMonClosed;
  @JsonKey(name: 'tueOpenTime', includeIfNull: false)
  final String? tueOpenTime;
  @JsonKey(name: 'tueCloseTime', includeIfNull: false)
  final String? tueCloseTime;
  @JsonKey(name: 'isTueClosed', includeIfNull: false)
  final String? isTueClosed;
  @JsonKey(name: 'wedOpenTime', includeIfNull: false)
  final String? wedOpenTime;
  @JsonKey(name: 'wedCloseTime', includeIfNull: false)
  final String? wedCloseTime;
  @JsonKey(name: 'isWedClosed', includeIfNull: false)
  final String? isWedClosed;
  @JsonKey(name: 'thuOpenTime', includeIfNull: false)
  final String? thuOpenTime;
  @JsonKey(name: 'thuCloseTime', includeIfNull: false)
  final String? thuCloseTime;
  @JsonKey(name: 'isThuClosed', includeIfNull: false)
  final String? isThuClosed;
  @JsonKey(name: 'friOpenTime', includeIfNull: false)
  final String? friOpenTime;
  @JsonKey(name: 'friCloseTime', includeIfNull: false)
  final String? friCloseTime;
  @JsonKey(name: 'isFriClosed', includeIfNull: false)
  final String? isFriClosed;
  @JsonKey(name: 'satOpenTime', includeIfNull: false)
  final String? satOpenTime;
  @JsonKey(name: 'satCloseTime', includeIfNull: false)
  final String? satCloseTime;
  @JsonKey(name: 'isSatClosed', includeIfNull: false)
  final String? isSatClosed;
  @JsonKey(name: 'sunOpenTime', includeIfNull: false)
  final String? sunOpenTime;
  @JsonKey(name: 'sunCloseTime', includeIfNull: false)
  final String? sunCloseTime;
  @JsonKey(name: 'isSunClosed', includeIfNull: false)
  final String? isSunClosed;
  @JsonKey(name: 'dateOwnerChanged', includeIfNull: false)
  final DateTime? dateOwnerChanged;
  @JsonKey(name: 'countryOrigin', includeIfNull: false)
  final String? countryOrigin;
  @JsonKey(name: 'firstManSameAsOwner', includeIfNull: false)
  final bool? firstManSameAsOwner;
  @JsonKey(name: 'orgSameAsFirmName', includeIfNull: false)
  final bool? orgSameAsFirmName;
  @JsonKey(name: 'orgSameAsPhysicalAddress', includeIfNull: false)
  final bool? orgSameAsPhysicalAddress;
  @JsonKey(name: 'orgSameAsMailAddress', includeIfNull: false)
  final bool? orgSameAsMailAddress;
  @JsonKey(name: 'orgName', includeIfNull: false)
  final String? orgName;
  @JsonKey(name: 'orgType', includeIfNull: false)
  final String? orgType;
  @JsonKey(name: 'orgAddress1', includeIfNull: false)
  final String? orgAddress1;
  @JsonKey(name: 'orgAddress2', includeIfNull: false)
  final String? orgAddress2;
  @JsonKey(name: 'orgCity', includeIfNull: false)
  final String? orgCity;
  @JsonKey(name: 'orgState', includeIfNull: false)
  final String? orgState;
  @JsonKey(name: 'orgZipCode', includeIfNull: false)
  final String? orgZipCode;
  @JsonKey(name: 'orgCounty', includeIfNull: false)
  final String? orgCounty;
  @JsonKey(name: 'isMeatHandled', includeIfNull: false)
  final String? isMeatHandled;
  @JsonKey(name: 'isPoultryHandled', includeIfNull: false)
  final String? isPoultryHandled;
  @JsonKey(name: 'isEggsHandled', includeIfNull: false)
  final String? isEggsHandled;
  @JsonKey(name: 'isSiluriformesFishHandled', includeIfNull: false)
  final String? isSiluriformesFishHandled;
  @JsonKey(name: 'isOtherHandled', includeIfNull: false)
  final String? isOtherHandled;
  @JsonKey(name: 'otherProduct', includeIfNull: false)
  final String? otherProduct;
  @JsonKey(name: 'isDomestic', includeIfNull: false)
  final String? isDomestic;
  @JsonKey(name: 'isImported', includeIfNull: false)
  final String? isImported;
  @JsonKey(name: 'volumeProduct', includeIfNull: false)
  final String? volumeProduct;
  @JsonKey(name: 'createdDate', includeIfNull: false)
  final DateTime? createdDate;
  @JsonKey(name: 'createdEmpId', includeIfNull: false)
  final int? createdEmpId;
  @JsonKey(name: 'lastModDate', includeIfNull: false)
  final DateTime? lastModDate;
  @JsonKey(name: 'lastModEmpId', includeIfNull: false)
  final int? lastModEmpId;
  @JsonKey(name: 'contactRegionalOffice', includeIfNull: false)
  final String? contactRegionalOffice;
  @JsonKey(name: 'contactRegionalOfficeComment', includeIfNull: false)
  final String? contactRegionalOfficeComment;
  @JsonKey(name: 'workflowStateId', includeIfNull: false)
  final int? workflowStateId;
  @JsonKey(name: 'workflowRecordId', includeIfNull: false)
  final int? workflowRecordId;
  @JsonKey(name: 'isOrderPermanent', includeIfNull: false)
  final String? isOrderPermanent;
  @JsonKey(name: 'isDeleteFirmReq', includeIfNull: false)
  final String? isDeleteFirmReq;
  @JsonKey(name: 'isEnergySource', includeIfNull: false)
  final String? isEnergySource;
  @JsonKey(name: 'exprOrderDate', includeIfNull: false)
  final DateTime? exprOrderDate;
  @JsonKey(name: 'lastSurvDate', includeIfNull: false)
  final DateTime? lastSurvDate;
  @JsonKey(name: 'isOpenInv', includeIfNull: false)
  final String? isOpenInv;
  @JsonKey(name: 'hasChangeHistory', includeIfNull: false)
  final String? hasChangeHistory;
  @JsonKey(name: 'fileAttached', includeIfNull: false)
  final String? fileAttached;
  @JsonKey(name: 'complianceAttached', includeIfNull: false)
  final String? complianceAttached;
  @JsonKey(
      name: 'firmPrevOwnerships',
      includeIfNull: false,
      defaultValue: <FirmPrevOwnership>[])
  final List<FirmPrevOwnership>? firmPrevOwnerships;
  @JsonKey(
      name: 'firmComments',
      includeIfNull: false,
      defaultValue: <FirmComments>[])
  final List<FirmComments>? firmComments;
  @JsonKey(
      name: 'firmChangeHistory',
      includeIfNull: false,
      defaultValue: <FirmChangeHistory>[])
  final List<FirmChangeHistory>? firmChangeHistory;
  @JsonKey(
      name: 'firmInfoCountries',
      includeIfNull: false,
      defaultValue: <FirmInfoCountries>[])
  final List<FirmInfoCountries>? firmInfoCountries;
  @JsonKey(
      name: 'pestControlHistory',
      includeIfNull: false,
      defaultValue: <FirmPestControlHistory>[])
  final List<FirmPestControlHistory>? pestControlHistory;
  @JsonKey(name: 'firmRegistrationInfo', includeIfNull: false)
  final FirmRegistrationInfo? firmRegistrationInfo;
  @JsonKey(name: 'owner', includeIfNull: false)
  final ContactInfo? owner;
  @JsonKey(name: 'firstManager', includeIfNull: false)
  final ContactInfo? firstManager;
  @JsonKey(name: 'secondManager', includeIfNull: false)
  final ContactInfo? secondManager;
  @JsonKey(name: 'pestControl', includeIfNull: false)
  final PestControl? pestControl;
  @JsonKey(
      name: 'associatedFirmLinks', includeIfNull: false, defaultValue: <int>[])
  final List<int>? associatedFirmLinks;
  static const fromJsonFactory = _$FirmInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirmInfo &&
            (identical(other.firmId, firmId) ||
                const DeepCollectionEquality().equals(other.firmId, firmId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.doingBusAs, doingBusAs) ||
                const DeepCollectionEquality()
                    .equals(other.doingBusAs, doingBusAs)) &&
            (identical(other.alsoKnownAs, alsoKnownAs) ||
                const DeepCollectionEquality()
                    .equals(other.alsoKnownAs, alsoKnownAs)) &&
            (identical(other.prevName, prevName) ||
                const DeepCollectionEquality()
                    .equals(other.prevName, prevName)) &&
            (identical(other.address1, address1) ||
                const DeepCollectionEquality()
                    .equals(other.address1, address1)) &&
            (identical(other.address2, address2) ||
                const DeepCollectionEquality()
                    .equals(other.address2, address2)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality()
                    .equals(other.zipCode, zipCode)) &&
            (identical(other.county, county) ||
                const DeepCollectionEquality().equals(other.county, county)) &&
            (identical(other.isMailEqlFirm, isMailEqlFirm) ||
                const DeepCollectionEquality()
                    .equals(other.isMailEqlFirm, isMailEqlFirm)) &&
            (identical(other.mailAddress1, mailAddress1) ||
                const DeepCollectionEquality()
                    .equals(other.mailAddress1, mailAddress1)) &&
            (identical(other.mailAddress2, mailAddress2) ||
                const DeepCollectionEquality()
                    .equals(other.mailAddress2, mailAddress2)) &&
            (identical(other.mailCity, mailCity) ||
                const DeepCollectionEquality()
                    .equals(other.mailCity, mailCity)) &&
            (identical(other.mailState, mailState) ||
                const DeepCollectionEquality()
                    .equals(other.mailState, mailState)) &&
            (identical(other.mailZipCode, mailZipCode) ||
                const DeepCollectionEquality()
                    .equals(other.mailZipCode, mailZipCode)) &&
            (identical(other.mailCounty, mailCounty) ||
                const DeepCollectionEquality()
                    .equals(other.mailCounty, mailCounty)) &&
            (identical(other.estNum, estNum) ||
                const DeepCollectionEquality().equals(other.estNum, estNum)) &&
            (identical(other.risk, risk) ||
                const DeepCollectionEquality().equals(other.risk, risk)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.subRegionCode, subRegionCode) ||
                const DeepCollectionEquality()
                    .equals(other.subRegionCode, subRegionCode)) &&
            (identical(other.assignCode, assignCode) ||
                const DeepCollectionEquality()
                    .equals(other.assignCode, assignCode)) &&
            (identical(other.numFloors, numFloors) ||
                const DeepCollectionEquality()
                    .equals(other.numFloors, numFloors)) &&
            (identical(other.apxSqFoot, apxSqFoot) ||
                const DeepCollectionEquality()
                    .equals(other.apxSqFoot, apxSqFoot)) &&
            (identical(other.apxNumEmployees, apxNumEmployees) || const DeepCollectionEquality().equals(other.apxNumEmployees, apxNumEmployees)) &&
            (identical(other.isFormAttached, isFormAttached) || const DeepCollectionEquality().equals(other.isFormAttached, isFormAttached)) &&
            (identical(other.primaryBusType, primaryBusType) || const DeepCollectionEquality().equals(other.primaryBusType, primaryBusType)) &&
            (identical(other.secondaryBusType, secondaryBusType) || const DeepCollectionEquality().equals(other.secondaryBusType, secondaryBusType)) &&
            (identical(other.tertiaryBusType, tertiaryBusType) || const DeepCollectionEquality().equals(other.tertiaryBusType, tertiaryBusType)) &&
            (identical(other.businessActivities, businessActivities) || const DeepCollectionEquality().equals(other.businessActivities, businessActivities)) &&
            (identical(other.monOpenTime, monOpenTime) || const DeepCollectionEquality().equals(other.monOpenTime, monOpenTime)) &&
            (identical(other.monCloseTime, monCloseTime) || const DeepCollectionEquality().equals(other.monCloseTime, monCloseTime)) &&
            (identical(other.isMonClosed, isMonClosed) || const DeepCollectionEquality().equals(other.isMonClosed, isMonClosed)) &&
            (identical(other.tueOpenTime, tueOpenTime) || const DeepCollectionEquality().equals(other.tueOpenTime, tueOpenTime)) &&
            (identical(other.tueCloseTime, tueCloseTime) || const DeepCollectionEquality().equals(other.tueCloseTime, tueCloseTime)) &&
            (identical(other.isTueClosed, isTueClosed) || const DeepCollectionEquality().equals(other.isTueClosed, isTueClosed)) &&
            (identical(other.wedOpenTime, wedOpenTime) || const DeepCollectionEquality().equals(other.wedOpenTime, wedOpenTime)) &&
            (identical(other.wedCloseTime, wedCloseTime) || const DeepCollectionEquality().equals(other.wedCloseTime, wedCloseTime)) &&
            (identical(other.isWedClosed, isWedClosed) || const DeepCollectionEquality().equals(other.isWedClosed, isWedClosed)) &&
            (identical(other.thuOpenTime, thuOpenTime) || const DeepCollectionEquality().equals(other.thuOpenTime, thuOpenTime)) &&
            (identical(other.thuCloseTime, thuCloseTime) || const DeepCollectionEquality().equals(other.thuCloseTime, thuCloseTime)) &&
            (identical(other.isThuClosed, isThuClosed) || const DeepCollectionEquality().equals(other.isThuClosed, isThuClosed)) &&
            (identical(other.friOpenTime, friOpenTime) || const DeepCollectionEquality().equals(other.friOpenTime, friOpenTime)) &&
            (identical(other.friCloseTime, friCloseTime) || const DeepCollectionEquality().equals(other.friCloseTime, friCloseTime)) &&
            (identical(other.isFriClosed, isFriClosed) || const DeepCollectionEquality().equals(other.isFriClosed, isFriClosed)) &&
            (identical(other.satOpenTime, satOpenTime) || const DeepCollectionEquality().equals(other.satOpenTime, satOpenTime)) &&
            (identical(other.satCloseTime, satCloseTime) || const DeepCollectionEquality().equals(other.satCloseTime, satCloseTime)) &&
            (identical(other.isSatClosed, isSatClosed) || const DeepCollectionEquality().equals(other.isSatClosed, isSatClosed)) &&
            (identical(other.sunOpenTime, sunOpenTime) || const DeepCollectionEquality().equals(other.sunOpenTime, sunOpenTime)) &&
            (identical(other.sunCloseTime, sunCloseTime) || const DeepCollectionEquality().equals(other.sunCloseTime, sunCloseTime)) &&
            (identical(other.isSunClosed, isSunClosed) || const DeepCollectionEquality().equals(other.isSunClosed, isSunClosed)) &&
            (identical(other.dateOwnerChanged, dateOwnerChanged) || const DeepCollectionEquality().equals(other.dateOwnerChanged, dateOwnerChanged)) &&
            (identical(other.countryOrigin, countryOrigin) || const DeepCollectionEquality().equals(other.countryOrigin, countryOrigin)) &&
            (identical(other.firstManSameAsOwner, firstManSameAsOwner) || const DeepCollectionEquality().equals(other.firstManSameAsOwner, firstManSameAsOwner)) &&
            (identical(other.orgSameAsFirmName, orgSameAsFirmName) || const DeepCollectionEquality().equals(other.orgSameAsFirmName, orgSameAsFirmName)) &&
            (identical(other.orgSameAsPhysicalAddress, orgSameAsPhysicalAddress) || const DeepCollectionEquality().equals(other.orgSameAsPhysicalAddress, orgSameAsPhysicalAddress)) &&
            (identical(other.orgSameAsMailAddress, orgSameAsMailAddress) || const DeepCollectionEquality().equals(other.orgSameAsMailAddress, orgSameAsMailAddress)) &&
            (identical(other.orgName, orgName) || const DeepCollectionEquality().equals(other.orgName, orgName)) &&
            (identical(other.orgType, orgType) || const DeepCollectionEquality().equals(other.orgType, orgType)) &&
            (identical(other.orgAddress1, orgAddress1) || const DeepCollectionEquality().equals(other.orgAddress1, orgAddress1)) &&
            (identical(other.orgAddress2, orgAddress2) || const DeepCollectionEquality().equals(other.orgAddress2, orgAddress2)) &&
            (identical(other.orgCity, orgCity) || const DeepCollectionEquality().equals(other.orgCity, orgCity)) &&
            (identical(other.orgState, orgState) || const DeepCollectionEquality().equals(other.orgState, orgState)) &&
            (identical(other.orgZipCode, orgZipCode) || const DeepCollectionEquality().equals(other.orgZipCode, orgZipCode)) &&
            (identical(other.orgCounty, orgCounty) || const DeepCollectionEquality().equals(other.orgCounty, orgCounty)) &&
            (identical(other.isMeatHandled, isMeatHandled) || const DeepCollectionEquality().equals(other.isMeatHandled, isMeatHandled)) &&
            (identical(other.isPoultryHandled, isPoultryHandled) || const DeepCollectionEquality().equals(other.isPoultryHandled, isPoultryHandled)) &&
            (identical(other.isEggsHandled, isEggsHandled) || const DeepCollectionEquality().equals(other.isEggsHandled, isEggsHandled)) &&
            (identical(other.isSiluriformesFishHandled, isSiluriformesFishHandled) || const DeepCollectionEquality().equals(other.isSiluriformesFishHandled, isSiluriformesFishHandled)) &&
            (identical(other.isOtherHandled, isOtherHandled) || const DeepCollectionEquality().equals(other.isOtherHandled, isOtherHandled)) &&
            (identical(other.otherProduct, otherProduct) || const DeepCollectionEquality().equals(other.otherProduct, otherProduct)) &&
            (identical(other.isDomestic, isDomestic) || const DeepCollectionEquality().equals(other.isDomestic, isDomestic)) &&
            (identical(other.isImported, isImported) || const DeepCollectionEquality().equals(other.isImported, isImported)) &&
            (identical(other.volumeProduct, volumeProduct) || const DeepCollectionEquality().equals(other.volumeProduct, volumeProduct)) &&
            (identical(other.createdDate, createdDate) || const DeepCollectionEquality().equals(other.createdDate, createdDate)) &&
            (identical(other.createdEmpId, createdEmpId) || const DeepCollectionEquality().equals(other.createdEmpId, createdEmpId)) &&
            (identical(other.lastModDate, lastModDate) || const DeepCollectionEquality().equals(other.lastModDate, lastModDate)) &&
            (identical(other.lastModEmpId, lastModEmpId) || const DeepCollectionEquality().equals(other.lastModEmpId, lastModEmpId)) &&
            (identical(other.contactRegionalOffice, contactRegionalOffice) || const DeepCollectionEquality().equals(other.contactRegionalOffice, contactRegionalOffice)) &&
            (identical(other.contactRegionalOfficeComment, contactRegionalOfficeComment) || const DeepCollectionEquality().equals(other.contactRegionalOfficeComment, contactRegionalOfficeComment)) &&
            (identical(other.workflowStateId, workflowStateId) || const DeepCollectionEquality().equals(other.workflowStateId, workflowStateId)) &&
            (identical(other.workflowRecordId, workflowRecordId) || const DeepCollectionEquality().equals(other.workflowRecordId, workflowRecordId)) &&
            (identical(other.isOrderPermanent, isOrderPermanent) || const DeepCollectionEquality().equals(other.isOrderPermanent, isOrderPermanent)) &&
            (identical(other.isDeleteFirmReq, isDeleteFirmReq) || const DeepCollectionEquality().equals(other.isDeleteFirmReq, isDeleteFirmReq)) &&
            (identical(other.isEnergySource, isEnergySource) || const DeepCollectionEquality().equals(other.isEnergySource, isEnergySource)) &&
            (identical(other.exprOrderDate, exprOrderDate) || const DeepCollectionEquality().equals(other.exprOrderDate, exprOrderDate)) &&
            (identical(other.lastSurvDate, lastSurvDate) || const DeepCollectionEquality().equals(other.lastSurvDate, lastSurvDate)) &&
            (identical(other.isOpenInv, isOpenInv) || const DeepCollectionEquality().equals(other.isOpenInv, isOpenInv)) &&
            (identical(other.hasChangeHistory, hasChangeHistory) || const DeepCollectionEquality().equals(other.hasChangeHistory, hasChangeHistory)) &&
            (identical(other.fileAttached, fileAttached) || const DeepCollectionEquality().equals(other.fileAttached, fileAttached)) &&
            (identical(other.complianceAttached, complianceAttached) || const DeepCollectionEquality().equals(other.complianceAttached, complianceAttached)) &&
            (identical(other.firmPrevOwnerships, firmPrevOwnerships) || const DeepCollectionEquality().equals(other.firmPrevOwnerships, firmPrevOwnerships)) &&
            (identical(other.firmComments, firmComments) || const DeepCollectionEquality().equals(other.firmComments, firmComments)) &&
            (identical(other.firmChangeHistory, firmChangeHistory) || const DeepCollectionEquality().equals(other.firmChangeHistory, firmChangeHistory)) &&
            (identical(other.firmInfoCountries, firmInfoCountries) || const DeepCollectionEquality().equals(other.firmInfoCountries, firmInfoCountries)) &&
            (identical(other.pestControlHistory, pestControlHistory) || const DeepCollectionEquality().equals(other.pestControlHistory, pestControlHistory)) &&
            (identical(other.firmRegistrationInfo, firmRegistrationInfo) || const DeepCollectionEquality().equals(other.firmRegistrationInfo, firmRegistrationInfo)) &&
            (identical(other.owner, owner) || const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.firstManager, firstManager) || const DeepCollectionEquality().equals(other.firstManager, firstManager)) &&
            (identical(other.secondManager, secondManager) || const DeepCollectionEquality().equals(other.secondManager, secondManager)) &&
            (identical(other.pestControl, pestControl) || const DeepCollectionEquality().equals(other.pestControl, pestControl)) &&
            (identical(other.associatedFirmLinks, associatedFirmLinks) || const DeepCollectionEquality().equals(other.associatedFirmLinks, associatedFirmLinks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firmId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(doingBusAs) ^
      const DeepCollectionEquality().hash(alsoKnownAs) ^
      const DeepCollectionEquality().hash(prevName) ^
      const DeepCollectionEquality().hash(address1) ^
      const DeepCollectionEquality().hash(address2) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(county) ^
      const DeepCollectionEquality().hash(isMailEqlFirm) ^
      const DeepCollectionEquality().hash(mailAddress1) ^
      const DeepCollectionEquality().hash(mailAddress2) ^
      const DeepCollectionEquality().hash(mailCity) ^
      const DeepCollectionEquality().hash(mailState) ^
      const DeepCollectionEquality().hash(mailZipCode) ^
      const DeepCollectionEquality().hash(mailCounty) ^
      const DeepCollectionEquality().hash(estNum) ^
      const DeepCollectionEquality().hash(risk) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(subRegionCode) ^
      const DeepCollectionEquality().hash(assignCode) ^
      const DeepCollectionEquality().hash(numFloors) ^
      const DeepCollectionEquality().hash(apxSqFoot) ^
      const DeepCollectionEquality().hash(apxNumEmployees) ^
      const DeepCollectionEquality().hash(isFormAttached) ^
      const DeepCollectionEquality().hash(primaryBusType) ^
      const DeepCollectionEquality().hash(secondaryBusType) ^
      const DeepCollectionEquality().hash(tertiaryBusType) ^
      const DeepCollectionEquality().hash(businessActivities) ^
      const DeepCollectionEquality().hash(monOpenTime) ^
      const DeepCollectionEquality().hash(monCloseTime) ^
      const DeepCollectionEquality().hash(isMonClosed) ^
      const DeepCollectionEquality().hash(tueOpenTime) ^
      const DeepCollectionEquality().hash(tueCloseTime) ^
      const DeepCollectionEquality().hash(isTueClosed) ^
      const DeepCollectionEquality().hash(wedOpenTime) ^
      const DeepCollectionEquality().hash(wedCloseTime) ^
      const DeepCollectionEquality().hash(isWedClosed) ^
      const DeepCollectionEquality().hash(thuOpenTime) ^
      const DeepCollectionEquality().hash(thuCloseTime) ^
      const DeepCollectionEquality().hash(isThuClosed) ^
      const DeepCollectionEquality().hash(friOpenTime) ^
      const DeepCollectionEquality().hash(friCloseTime) ^
      const DeepCollectionEquality().hash(isFriClosed) ^
      const DeepCollectionEquality().hash(satOpenTime) ^
      const DeepCollectionEquality().hash(satCloseTime) ^
      const DeepCollectionEquality().hash(isSatClosed) ^
      const DeepCollectionEquality().hash(sunOpenTime) ^
      const DeepCollectionEquality().hash(sunCloseTime) ^
      const DeepCollectionEquality().hash(isSunClosed) ^
      const DeepCollectionEquality().hash(dateOwnerChanged) ^
      const DeepCollectionEquality().hash(countryOrigin) ^
      const DeepCollectionEquality().hash(firstManSameAsOwner) ^
      const DeepCollectionEquality().hash(orgSameAsFirmName) ^
      const DeepCollectionEquality().hash(orgSameAsPhysicalAddress) ^
      const DeepCollectionEquality().hash(orgSameAsMailAddress) ^
      const DeepCollectionEquality().hash(orgName) ^
      const DeepCollectionEquality().hash(orgType) ^
      const DeepCollectionEquality().hash(orgAddress1) ^
      const DeepCollectionEquality().hash(orgAddress2) ^
      const DeepCollectionEquality().hash(orgCity) ^
      const DeepCollectionEquality().hash(orgState) ^
      const DeepCollectionEquality().hash(orgZipCode) ^
      const DeepCollectionEquality().hash(orgCounty) ^
      const DeepCollectionEquality().hash(isMeatHandled) ^
      const DeepCollectionEquality().hash(isPoultryHandled) ^
      const DeepCollectionEquality().hash(isEggsHandled) ^
      const DeepCollectionEquality().hash(isSiluriformesFishHandled) ^
      const DeepCollectionEquality().hash(isOtherHandled) ^
      const DeepCollectionEquality().hash(otherProduct) ^
      const DeepCollectionEquality().hash(isDomestic) ^
      const DeepCollectionEquality().hash(isImported) ^
      const DeepCollectionEquality().hash(volumeProduct) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(createdEmpId) ^
      const DeepCollectionEquality().hash(lastModDate) ^
      const DeepCollectionEquality().hash(lastModEmpId) ^
      const DeepCollectionEquality().hash(contactRegionalOffice) ^
      const DeepCollectionEquality().hash(contactRegionalOfficeComment) ^
      const DeepCollectionEquality().hash(workflowStateId) ^
      const DeepCollectionEquality().hash(workflowRecordId) ^
      const DeepCollectionEquality().hash(isOrderPermanent) ^
      const DeepCollectionEquality().hash(isDeleteFirmReq) ^
      const DeepCollectionEquality().hash(isEnergySource) ^
      const DeepCollectionEquality().hash(exprOrderDate) ^
      const DeepCollectionEquality().hash(lastSurvDate) ^
      const DeepCollectionEquality().hash(isOpenInv) ^
      const DeepCollectionEquality().hash(hasChangeHistory) ^
      const DeepCollectionEquality().hash(fileAttached) ^
      const DeepCollectionEquality().hash(complianceAttached) ^
      const DeepCollectionEquality().hash(firmPrevOwnerships) ^
      const DeepCollectionEquality().hash(firmComments) ^
      const DeepCollectionEquality().hash(firmChangeHistory) ^
      const DeepCollectionEquality().hash(firmInfoCountries) ^
      const DeepCollectionEquality().hash(pestControlHistory) ^
      const DeepCollectionEquality().hash(firmRegistrationInfo) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(firstManager) ^
      const DeepCollectionEquality().hash(secondManager) ^
      const DeepCollectionEquality().hash(pestControl) ^
      const DeepCollectionEquality().hash(associatedFirmLinks) ^
      runtimeType.hashCode;
}

extension $FirmInfoExtension on FirmInfo {
  FirmInfo copyWith(
      {int? firmId,
      String? name,
      String? doingBusAs,
      String? alsoKnownAs,
      String? prevName,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? zipCode,
      String? county,
      String? isMailEqlFirm,
      String? mailAddress1,
      String? mailAddress2,
      String? mailCity,
      String? mailState,
      String? mailZipCode,
      String? mailCounty,
      String? estNum,
      String? risk,
      String? regionCode,
      String? subRegionCode,
      String? assignCode,
      String? numFloors,
      String? apxSqFoot,
      String? apxNumEmployees,
      String? isFormAttached,
      String? primaryBusType,
      String? secondaryBusType,
      String? tertiaryBusType,
      String? businessActivities,
      String? monOpenTime,
      String? monCloseTime,
      String? isMonClosed,
      String? tueOpenTime,
      String? tueCloseTime,
      String? isTueClosed,
      String? wedOpenTime,
      String? wedCloseTime,
      String? isWedClosed,
      String? thuOpenTime,
      String? thuCloseTime,
      String? isThuClosed,
      String? friOpenTime,
      String? friCloseTime,
      String? isFriClosed,
      String? satOpenTime,
      String? satCloseTime,
      String? isSatClosed,
      String? sunOpenTime,
      String? sunCloseTime,
      String? isSunClosed,
      DateTime? dateOwnerChanged,
      String? countryOrigin,
      bool? firstManSameAsOwner,
      bool? orgSameAsFirmName,
      bool? orgSameAsPhysicalAddress,
      bool? orgSameAsMailAddress,
      String? orgName,
      String? orgType,
      String? orgAddress1,
      String? orgAddress2,
      String? orgCity,
      String? orgState,
      String? orgZipCode,
      String? orgCounty,
      String? isMeatHandled,
      String? isPoultryHandled,
      String? isEggsHandled,
      String? isSiluriformesFishHandled,
      String? isOtherHandled,
      String? otherProduct,
      String? isDomestic,
      String? isImported,
      String? volumeProduct,
      DateTime? createdDate,
      int? createdEmpId,
      DateTime? lastModDate,
      int? lastModEmpId,
      String? contactRegionalOffice,
      String? contactRegionalOfficeComment,
      int? workflowStateId,
      int? workflowRecordId,
      String? isOrderPermanent,
      String? isDeleteFirmReq,
      String? isEnergySource,
      DateTime? exprOrderDate,
      DateTime? lastSurvDate,
      String? isOpenInv,
      String? hasChangeHistory,
      String? fileAttached,
      String? complianceAttached,
      List<FirmPrevOwnership>? firmPrevOwnerships,
      List<FirmComments>? firmComments,
      List<FirmChangeHistory>? firmChangeHistory,
      List<FirmInfoCountries>? firmInfoCountries,
      List<FirmPestControlHistory>? pestControlHistory,
      FirmRegistrationInfo? firmRegistrationInfo,
      ContactInfo? owner,
      ContactInfo? firstManager,
      ContactInfo? secondManager,
      PestControl? pestControl,
      List<int>? associatedFirmLinks}) {
    return FirmInfo(
        firmId: firmId ?? this.firmId,
        name: name ?? this.name,
        doingBusAs: doingBusAs ?? this.doingBusAs,
        alsoKnownAs: alsoKnownAs ?? this.alsoKnownAs,
        prevName: prevName ?? this.prevName,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        city: city ?? this.city,
        state: state ?? this.state,
        zipCode: zipCode ?? this.zipCode,
        county: county ?? this.county,
        isMailEqlFirm: isMailEqlFirm ?? this.isMailEqlFirm,
        mailAddress1: mailAddress1 ?? this.mailAddress1,
        mailAddress2: mailAddress2 ?? this.mailAddress2,
        mailCity: mailCity ?? this.mailCity,
        mailState: mailState ?? this.mailState,
        mailZipCode: mailZipCode ?? this.mailZipCode,
        mailCounty: mailCounty ?? this.mailCounty,
        estNum: estNum ?? this.estNum,
        risk: risk ?? this.risk,
        regionCode: regionCode ?? this.regionCode,
        subRegionCode: subRegionCode ?? this.subRegionCode,
        assignCode: assignCode ?? this.assignCode,
        numFloors: numFloors ?? this.numFloors,
        apxSqFoot: apxSqFoot ?? this.apxSqFoot,
        apxNumEmployees: apxNumEmployees ?? this.apxNumEmployees,
        isFormAttached: isFormAttached ?? this.isFormAttached,
        primaryBusType: primaryBusType ?? this.primaryBusType,
        secondaryBusType: secondaryBusType ?? this.secondaryBusType,
        tertiaryBusType: tertiaryBusType ?? this.tertiaryBusType,
        businessActivities: businessActivities ?? this.businessActivities,
        monOpenTime: monOpenTime ?? this.monOpenTime,
        monCloseTime: monCloseTime ?? this.monCloseTime,
        isMonClosed: isMonClosed ?? this.isMonClosed,
        tueOpenTime: tueOpenTime ?? this.tueOpenTime,
        tueCloseTime: tueCloseTime ?? this.tueCloseTime,
        isTueClosed: isTueClosed ?? this.isTueClosed,
        wedOpenTime: wedOpenTime ?? this.wedOpenTime,
        wedCloseTime: wedCloseTime ?? this.wedCloseTime,
        isWedClosed: isWedClosed ?? this.isWedClosed,
        thuOpenTime: thuOpenTime ?? this.thuOpenTime,
        thuCloseTime: thuCloseTime ?? this.thuCloseTime,
        isThuClosed: isThuClosed ?? this.isThuClosed,
        friOpenTime: friOpenTime ?? this.friOpenTime,
        friCloseTime: friCloseTime ?? this.friCloseTime,
        isFriClosed: isFriClosed ?? this.isFriClosed,
        satOpenTime: satOpenTime ?? this.satOpenTime,
        satCloseTime: satCloseTime ?? this.satCloseTime,
        isSatClosed: isSatClosed ?? this.isSatClosed,
        sunOpenTime: sunOpenTime ?? this.sunOpenTime,
        sunCloseTime: sunCloseTime ?? this.sunCloseTime,
        isSunClosed: isSunClosed ?? this.isSunClosed,
        dateOwnerChanged: dateOwnerChanged ?? this.dateOwnerChanged,
        countryOrigin: countryOrigin ?? this.countryOrigin,
        firstManSameAsOwner: firstManSameAsOwner ?? this.firstManSameAsOwner,
        orgSameAsFirmName: orgSameAsFirmName ?? this.orgSameAsFirmName,
        orgSameAsPhysicalAddress:
            orgSameAsPhysicalAddress ?? this.orgSameAsPhysicalAddress,
        orgSameAsMailAddress: orgSameAsMailAddress ?? this.orgSameAsMailAddress,
        orgName: orgName ?? this.orgName,
        orgType: orgType ?? this.orgType,
        orgAddress1: orgAddress1 ?? this.orgAddress1,
        orgAddress2: orgAddress2 ?? this.orgAddress2,
        orgCity: orgCity ?? this.orgCity,
        orgState: orgState ?? this.orgState,
        orgZipCode: orgZipCode ?? this.orgZipCode,
        orgCounty: orgCounty ?? this.orgCounty,
        isMeatHandled: isMeatHandled ?? this.isMeatHandled,
        isPoultryHandled: isPoultryHandled ?? this.isPoultryHandled,
        isEggsHandled: isEggsHandled ?? this.isEggsHandled,
        isSiluriformesFishHandled:
            isSiluriformesFishHandled ?? this.isSiluriformesFishHandled,
        isOtherHandled: isOtherHandled ?? this.isOtherHandled,
        otherProduct: otherProduct ?? this.otherProduct,
        isDomestic: isDomestic ?? this.isDomestic,
        isImported: isImported ?? this.isImported,
        volumeProduct: volumeProduct ?? this.volumeProduct,
        createdDate: createdDate ?? this.createdDate,
        createdEmpId: createdEmpId ?? this.createdEmpId,
        lastModDate: lastModDate ?? this.lastModDate,
        lastModEmpId: lastModEmpId ?? this.lastModEmpId,
        contactRegionalOffice:
            contactRegionalOffice ?? this.contactRegionalOffice,
        contactRegionalOfficeComment:
            contactRegionalOfficeComment ?? this.contactRegionalOfficeComment,
        workflowStateId: workflowStateId ?? this.workflowStateId,
        workflowRecordId: workflowRecordId ?? this.workflowRecordId,
        isOrderPermanent: isOrderPermanent ?? this.isOrderPermanent,
        isDeleteFirmReq: isDeleteFirmReq ?? this.isDeleteFirmReq,
        isEnergySource: isEnergySource ?? this.isEnergySource,
        exprOrderDate: exprOrderDate ?? this.exprOrderDate,
        lastSurvDate: lastSurvDate ?? this.lastSurvDate,
        isOpenInv: isOpenInv ?? this.isOpenInv,
        hasChangeHistory: hasChangeHistory ?? this.hasChangeHistory,
        fileAttached: fileAttached ?? this.fileAttached,
        complianceAttached: complianceAttached ?? this.complianceAttached,
        firmPrevOwnerships: firmPrevOwnerships ?? this.firmPrevOwnerships,
        firmComments: firmComments ?? this.firmComments,
        firmChangeHistory: firmChangeHistory ?? this.firmChangeHistory,
        firmInfoCountries: firmInfoCountries ?? this.firmInfoCountries,
        pestControlHistory: pestControlHistory ?? this.pestControlHistory,
        firmRegistrationInfo: firmRegistrationInfo ?? this.firmRegistrationInfo,
        owner: owner ?? this.owner,
        firstManager: firstManager ?? this.firstManager,
        secondManager: secondManager ?? this.secondManager,
        pestControl: pestControl ?? this.pestControl,
        associatedFirmLinks: associatedFirmLinks ?? this.associatedFirmLinks);
  }

  FirmInfo copyWithWrapped(
      {Wrapped<int?>? firmId,
      Wrapped<String?>? name,
      Wrapped<String?>? doingBusAs,
      Wrapped<String?>? alsoKnownAs,
      Wrapped<String?>? prevName,
      Wrapped<String?>? address1,
      Wrapped<String?>? address2,
      Wrapped<String?>? city,
      Wrapped<String?>? state,
      Wrapped<String?>? zipCode,
      Wrapped<String?>? county,
      Wrapped<String?>? isMailEqlFirm,
      Wrapped<String?>? mailAddress1,
      Wrapped<String?>? mailAddress2,
      Wrapped<String?>? mailCity,
      Wrapped<String?>? mailState,
      Wrapped<String?>? mailZipCode,
      Wrapped<String?>? mailCounty,
      Wrapped<String?>? estNum,
      Wrapped<String?>? risk,
      Wrapped<String?>? regionCode,
      Wrapped<String?>? subRegionCode,
      Wrapped<String?>? assignCode,
      Wrapped<String?>? numFloors,
      Wrapped<String?>? apxSqFoot,
      Wrapped<String?>? apxNumEmployees,
      Wrapped<String?>? isFormAttached,
      Wrapped<String?>? primaryBusType,
      Wrapped<String?>? secondaryBusType,
      Wrapped<String?>? tertiaryBusType,
      Wrapped<String?>? businessActivities,
      Wrapped<String?>? monOpenTime,
      Wrapped<String?>? monCloseTime,
      Wrapped<String?>? isMonClosed,
      Wrapped<String?>? tueOpenTime,
      Wrapped<String?>? tueCloseTime,
      Wrapped<String?>? isTueClosed,
      Wrapped<String?>? wedOpenTime,
      Wrapped<String?>? wedCloseTime,
      Wrapped<String?>? isWedClosed,
      Wrapped<String?>? thuOpenTime,
      Wrapped<String?>? thuCloseTime,
      Wrapped<String?>? isThuClosed,
      Wrapped<String?>? friOpenTime,
      Wrapped<String?>? friCloseTime,
      Wrapped<String?>? isFriClosed,
      Wrapped<String?>? satOpenTime,
      Wrapped<String?>? satCloseTime,
      Wrapped<String?>? isSatClosed,
      Wrapped<String?>? sunOpenTime,
      Wrapped<String?>? sunCloseTime,
      Wrapped<String?>? isSunClosed,
      Wrapped<DateTime?>? dateOwnerChanged,
      Wrapped<String?>? countryOrigin,
      Wrapped<bool?>? firstManSameAsOwner,
      Wrapped<bool?>? orgSameAsFirmName,
      Wrapped<bool?>? orgSameAsPhysicalAddress,
      Wrapped<bool?>? orgSameAsMailAddress,
      Wrapped<String?>? orgName,
      Wrapped<String?>? orgType,
      Wrapped<String?>? orgAddress1,
      Wrapped<String?>? orgAddress2,
      Wrapped<String?>? orgCity,
      Wrapped<String?>? orgState,
      Wrapped<String?>? orgZipCode,
      Wrapped<String?>? orgCounty,
      Wrapped<String?>? isMeatHandled,
      Wrapped<String?>? isPoultryHandled,
      Wrapped<String?>? isEggsHandled,
      Wrapped<String?>? isSiluriformesFishHandled,
      Wrapped<String?>? isOtherHandled,
      Wrapped<String?>? otherProduct,
      Wrapped<String?>? isDomestic,
      Wrapped<String?>? isImported,
      Wrapped<String?>? volumeProduct,
      Wrapped<DateTime?>? createdDate,
      Wrapped<int?>? createdEmpId,
      Wrapped<DateTime?>? lastModDate,
      Wrapped<int?>? lastModEmpId,
      Wrapped<String?>? contactRegionalOffice,
      Wrapped<String?>? contactRegionalOfficeComment,
      Wrapped<int?>? workflowStateId,
      Wrapped<int?>? workflowRecordId,
      Wrapped<String?>? isOrderPermanent,
      Wrapped<String?>? isDeleteFirmReq,
      Wrapped<String?>? isEnergySource,
      Wrapped<DateTime?>? exprOrderDate,
      Wrapped<DateTime?>? lastSurvDate,
      Wrapped<String?>? isOpenInv,
      Wrapped<String?>? hasChangeHistory,
      Wrapped<String?>? fileAttached,
      Wrapped<String?>? complianceAttached,
      Wrapped<List<FirmPrevOwnership>?>? firmPrevOwnerships,
      Wrapped<List<FirmComments>?>? firmComments,
      Wrapped<List<FirmChangeHistory>?>? firmChangeHistory,
      Wrapped<List<FirmInfoCountries>?>? firmInfoCountries,
      Wrapped<List<FirmPestControlHistory>?>? pestControlHistory,
      Wrapped<FirmRegistrationInfo?>? firmRegistrationInfo,
      Wrapped<ContactInfo?>? owner,
      Wrapped<ContactInfo?>? firstManager,
      Wrapped<ContactInfo?>? secondManager,
      Wrapped<PestControl?>? pestControl,
      Wrapped<List<int>?>? associatedFirmLinks}) {
    return FirmInfo(
        firmId: (firmId != null ? firmId.value : this.firmId),
        name: (name != null ? name.value : this.name),
        doingBusAs: (doingBusAs != null ? doingBusAs.value : this.doingBusAs),
        alsoKnownAs:
            (alsoKnownAs != null ? alsoKnownAs.value : this.alsoKnownAs),
        prevName: (prevName != null ? prevName.value : this.prevName),
        address1: (address1 != null ? address1.value : this.address1),
        address2: (address2 != null ? address2.value : this.address2),
        city: (city != null ? city.value : this.city),
        state: (state != null ? state.value : this.state),
        zipCode: (zipCode != null ? zipCode.value : this.zipCode),
        county: (county != null ? county.value : this.county),
        isMailEqlFirm:
            (isMailEqlFirm != null ? isMailEqlFirm.value : this.isMailEqlFirm),
        mailAddress1:
            (mailAddress1 != null ? mailAddress1.value : this.mailAddress1),
        mailAddress2:
            (mailAddress2 != null ? mailAddress2.value : this.mailAddress2),
        mailCity: (mailCity != null ? mailCity.value : this.mailCity),
        mailState: (mailState != null ? mailState.value : this.mailState),
        mailZipCode:
            (mailZipCode != null ? mailZipCode.value : this.mailZipCode),
        mailCounty: (mailCounty != null ? mailCounty.value : this.mailCounty),
        estNum: (estNum != null ? estNum.value : this.estNum),
        risk: (risk != null ? risk.value : this.risk),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode),
        subRegionCode:
            (subRegionCode != null ? subRegionCode.value : this.subRegionCode),
        assignCode: (assignCode != null ? assignCode.value : this.assignCode),
        numFloors: (numFloors != null ? numFloors.value : this.numFloors),
        apxSqFoot: (apxSqFoot != null ? apxSqFoot.value : this.apxSqFoot),
        apxNumEmployees: (apxNumEmployees != null
            ? apxNumEmployees.value
            : this.apxNumEmployees),
        isFormAttached: (isFormAttached != null
            ? isFormAttached.value
            : this.isFormAttached),
        primaryBusType: (primaryBusType != null
            ? primaryBusType.value
            : this.primaryBusType),
        secondaryBusType: (secondaryBusType != null
            ? secondaryBusType.value
            : this.secondaryBusType),
        tertiaryBusType: (tertiaryBusType != null
            ? tertiaryBusType.value
            : this.tertiaryBusType),
        businessActivities: (businessActivities != null
            ? businessActivities.value
            : this.businessActivities),
        monOpenTime:
            (monOpenTime != null ? monOpenTime.value : this.monOpenTime),
        monCloseTime:
            (monCloseTime != null ? monCloseTime.value : this.monCloseTime),
        isMonClosed:
            (isMonClosed != null ? isMonClosed.value : this.isMonClosed),
        tueOpenTime:
            (tueOpenTime != null ? tueOpenTime.value : this.tueOpenTime),
        tueCloseTime:
            (tueCloseTime != null ? tueCloseTime.value : this.tueCloseTime),
        isTueClosed:
            (isTueClosed != null ? isTueClosed.value : this.isTueClosed),
        wedOpenTime:
            (wedOpenTime != null ? wedOpenTime.value : this.wedOpenTime),
        wedCloseTime:
            (wedCloseTime != null ? wedCloseTime.value : this.wedCloseTime),
        isWedClosed:
            (isWedClosed != null ? isWedClosed.value : this.isWedClosed),
        thuOpenTime:
            (thuOpenTime != null ? thuOpenTime.value : this.thuOpenTime),
        thuCloseTime:
            (thuCloseTime != null ? thuCloseTime.value : this.thuCloseTime),
        isThuClosed:
            (isThuClosed != null ? isThuClosed.value : this.isThuClosed),
        friOpenTime:
            (friOpenTime != null ? friOpenTime.value : this.friOpenTime),
        friCloseTime:
            (friCloseTime != null ? friCloseTime.value : this.friCloseTime),
        isFriClosed:
            (isFriClosed != null ? isFriClosed.value : this.isFriClosed),
        satOpenTime:
            (satOpenTime != null ? satOpenTime.value : this.satOpenTime),
        satCloseTime:
            (satCloseTime != null ? satCloseTime.value : this.satCloseTime),
        isSatClosed:
            (isSatClosed != null ? isSatClosed.value : this.isSatClosed),
        sunOpenTime:
            (sunOpenTime != null ? sunOpenTime.value : this.sunOpenTime),
        sunCloseTime:
            (sunCloseTime != null ? sunCloseTime.value : this.sunCloseTime),
        isSunClosed:
            (isSunClosed != null ? isSunClosed.value : this.isSunClosed),
        dateOwnerChanged: (dateOwnerChanged != null
            ? dateOwnerChanged.value
            : this.dateOwnerChanged),
        countryOrigin:
            (countryOrigin != null ? countryOrigin.value : this.countryOrigin),
        firstManSameAsOwner: (firstManSameAsOwner != null
            ? firstManSameAsOwner.value
            : this.firstManSameAsOwner),
        orgSameAsFirmName: (orgSameAsFirmName != null
            ? orgSameAsFirmName.value
            : this.orgSameAsFirmName),
        orgSameAsPhysicalAddress: (orgSameAsPhysicalAddress != null
            ? orgSameAsPhysicalAddress.value
            : this.orgSameAsPhysicalAddress),
        orgSameAsMailAddress: (orgSameAsMailAddress != null
            ? orgSameAsMailAddress.value
            : this.orgSameAsMailAddress),
        orgName: (orgName != null ? orgName.value : this.orgName),
        orgType: (orgType != null ? orgType.value : this.orgType),
        orgAddress1:
            (orgAddress1 != null ? orgAddress1.value : this.orgAddress1),
        orgAddress2:
            (orgAddress2 != null ? orgAddress2.value : this.orgAddress2),
        orgCity: (orgCity != null ? orgCity.value : this.orgCity),
        orgState: (orgState != null ? orgState.value : this.orgState),
        orgZipCode: (orgZipCode != null ? orgZipCode.value : this.orgZipCode),
        orgCounty: (orgCounty != null ? orgCounty.value : this.orgCounty),
        isMeatHandled:
            (isMeatHandled != null ? isMeatHandled.value : this.isMeatHandled),
        isPoultryHandled: (isPoultryHandled != null
            ? isPoultryHandled.value
            : this.isPoultryHandled),
        isEggsHandled:
            (isEggsHandled != null ? isEggsHandled.value : this.isEggsHandled),
        isSiluriformesFishHandled: (isSiluriformesFishHandled != null
            ? isSiluriformesFishHandled.value
            : this.isSiluriformesFishHandled),
        isOtherHandled: (isOtherHandled != null
            ? isOtherHandled.value
            : this.isOtherHandled),
        otherProduct:
            (otherProduct != null ? otherProduct.value : this.otherProduct),
        isDomestic: (isDomestic != null ? isDomestic.value : this.isDomestic),
        isImported: (isImported != null ? isImported.value : this.isImported),
        volumeProduct:
            (volumeProduct != null ? volumeProduct.value : this.volumeProduct),
        createdDate:
            (createdDate != null ? createdDate.value : this.createdDate),
        createdEmpId:
            (createdEmpId != null ? createdEmpId.value : this.createdEmpId),
        lastModDate:
            (lastModDate != null ? lastModDate.value : this.lastModDate),
        lastModEmpId:
            (lastModEmpId != null ? lastModEmpId.value : this.lastModEmpId),
        contactRegionalOffice: (contactRegionalOffice != null
            ? contactRegionalOffice.value
            : this.contactRegionalOffice),
        contactRegionalOfficeComment: (contactRegionalOfficeComment != null
            ? contactRegionalOfficeComment.value
            : this.contactRegionalOfficeComment),
        workflowStateId: (workflowStateId != null
            ? workflowStateId.value
            : this.workflowStateId),
        workflowRecordId: (workflowRecordId != null
            ? workflowRecordId.value
            : this.workflowRecordId),
        isOrderPermanent: (isOrderPermanent != null
            ? isOrderPermanent.value
            : this.isOrderPermanent),
        isDeleteFirmReq: (isDeleteFirmReq != null
            ? isDeleteFirmReq.value
            : this.isDeleteFirmReq),
        isEnergySource: (isEnergySource != null
            ? isEnergySource.value
            : this.isEnergySource),
        exprOrderDate:
            (exprOrderDate != null ? exprOrderDate.value : this.exprOrderDate),
        lastSurvDate: (lastSurvDate != null ? lastSurvDate.value : this.lastSurvDate),
        isOpenInv: (isOpenInv != null ? isOpenInv.value : this.isOpenInv),
        hasChangeHistory: (hasChangeHistory != null ? hasChangeHistory.value : this.hasChangeHistory),
        fileAttached: (fileAttached != null ? fileAttached.value : this.fileAttached),
        complianceAttached: (complianceAttached != null ? complianceAttached.value : this.complianceAttached),
        firmPrevOwnerships: (firmPrevOwnerships != null ? firmPrevOwnerships.value : this.firmPrevOwnerships),
        firmComments: (firmComments != null ? firmComments.value : this.firmComments),
        firmChangeHistory: (firmChangeHistory != null ? firmChangeHistory.value : this.firmChangeHistory),
        firmInfoCountries: (firmInfoCountries != null ? firmInfoCountries.value : this.firmInfoCountries),
        pestControlHistory: (pestControlHistory != null ? pestControlHistory.value : this.pestControlHistory),
        firmRegistrationInfo: (firmRegistrationInfo != null ? firmRegistrationInfo.value : this.firmRegistrationInfo),
        owner: (owner != null ? owner.value : this.owner),
        firstManager: (firstManager != null ? firstManager.value : this.firstManager),
        secondManager: (secondManager != null ? secondManager.value : this.secondManager),
        pestControl: (pestControl != null ? pestControl.value : this.pestControl),
        associatedFirmLinks: (associatedFirmLinks != null ? associatedFirmLinks.value : this.associatedFirmLinks));
  }
}

@JsonSerializable(explicitToJson: true)
class FirmInfoCountries {
  const FirmInfoCountries({
    this.firmInfo,
    this.countryCode,
  });

  factory FirmInfoCountries.fromJson(Map<String, dynamic> json) =>
      _$FirmInfoCountriesFromJson(json);

  static const toJsonFactory = _$FirmInfoCountriesToJson;
  Map<String, dynamic> toJson() => _$FirmInfoCountriesToJson(this);

  @JsonKey(name: 'firmInfo', includeIfNull: false)
  final FirmInfo? firmInfo;
  @JsonKey(name: 'countryCode', includeIfNull: false)
  final String? countryCode;
  static const fromJsonFactory = _$FirmInfoCountriesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirmInfoCountries &&
            (identical(other.firmInfo, firmInfo) ||
                const DeepCollectionEquality()
                    .equals(other.firmInfo, firmInfo)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firmInfo) ^
      const DeepCollectionEquality().hash(countryCode) ^
      runtimeType.hashCode;
}

extension $FirmInfoCountriesExtension on FirmInfoCountries {
  FirmInfoCountries copyWith({FirmInfo? firmInfo, String? countryCode}) {
    return FirmInfoCountries(
        firmInfo: firmInfo ?? this.firmInfo,
        countryCode: countryCode ?? this.countryCode);
  }

  FirmInfoCountries copyWithWrapped(
      {Wrapped<FirmInfo?>? firmInfo, Wrapped<String?>? countryCode}) {
    return FirmInfoCountries(
        firmInfo: (firmInfo != null ? firmInfo.value : this.firmInfo),
        countryCode:
            (countryCode != null ? countryCode.value : this.countryCode));
  }
}

@JsonSerializable(explicitToJson: true)
class FirmPestControlHistory {
  const FirmPestControlHistory({
    this.firmPestControlHistoryId,
    this.firm,
    this.createdDate,
    this.createdBy,
    this.changeDate,
    this.fieldName,
    this.newValue,
    this.previousValue,
  });

  factory FirmPestControlHistory.fromJson(Map<String, dynamic> json) =>
      _$FirmPestControlHistoryFromJson(json);

  static const toJsonFactory = _$FirmPestControlHistoryToJson;
  Map<String, dynamic> toJson() => _$FirmPestControlHistoryToJson(this);

  @JsonKey(name: 'firmPestControlHistoryId', includeIfNull: false)
  final int? firmPestControlHistoryId;
  @JsonKey(name: 'firm', includeIfNull: false)
  final FirmInfo? firm;
  @JsonKey(name: 'createdDate', includeIfNull: false)
  final DateTime? createdDate;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final int? createdBy;
  @JsonKey(name: 'changeDate', includeIfNull: false)
  final DateTime? changeDate;
  @JsonKey(name: 'fieldName', includeIfNull: false)
  final String? fieldName;
  @JsonKey(name: 'newValue', includeIfNull: false)
  final String? newValue;
  @JsonKey(name: 'previousValue', includeIfNull: false)
  final String? previousValue;
  static const fromJsonFactory = _$FirmPestControlHistoryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirmPestControlHistory &&
            (identical(
                    other.firmPestControlHistoryId, firmPestControlHistoryId) ||
                const DeepCollectionEquality().equals(
                    other.firmPestControlHistoryId,
                    firmPestControlHistoryId)) &&
            (identical(other.firm, firm) ||
                const DeepCollectionEquality().equals(other.firm, firm)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.changeDate, changeDate) ||
                const DeepCollectionEquality()
                    .equals(other.changeDate, changeDate)) &&
            (identical(other.fieldName, fieldName) ||
                const DeepCollectionEquality()
                    .equals(other.fieldName, fieldName)) &&
            (identical(other.newValue, newValue) ||
                const DeepCollectionEquality()
                    .equals(other.newValue, newValue)) &&
            (identical(other.previousValue, previousValue) ||
                const DeepCollectionEquality()
                    .equals(other.previousValue, previousValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firmPestControlHistoryId) ^
      const DeepCollectionEquality().hash(firm) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(changeDate) ^
      const DeepCollectionEquality().hash(fieldName) ^
      const DeepCollectionEquality().hash(newValue) ^
      const DeepCollectionEquality().hash(previousValue) ^
      runtimeType.hashCode;
}

extension $FirmPestControlHistoryExtension on FirmPestControlHistory {
  FirmPestControlHistory copyWith(
      {int? firmPestControlHistoryId,
      FirmInfo? firm,
      DateTime? createdDate,
      int? createdBy,
      DateTime? changeDate,
      String? fieldName,
      String? newValue,
      String? previousValue}) {
    return FirmPestControlHistory(
        firmPestControlHistoryId:
            firmPestControlHistoryId ?? this.firmPestControlHistoryId,
        firm: firm ?? this.firm,
        createdDate: createdDate ?? this.createdDate,
        createdBy: createdBy ?? this.createdBy,
        changeDate: changeDate ?? this.changeDate,
        fieldName: fieldName ?? this.fieldName,
        newValue: newValue ?? this.newValue,
        previousValue: previousValue ?? this.previousValue);
  }

  FirmPestControlHistory copyWithWrapped(
      {Wrapped<int?>? firmPestControlHistoryId,
      Wrapped<FirmInfo?>? firm,
      Wrapped<DateTime?>? createdDate,
      Wrapped<int?>? createdBy,
      Wrapped<DateTime?>? changeDate,
      Wrapped<String?>? fieldName,
      Wrapped<String?>? newValue,
      Wrapped<String?>? previousValue}) {
    return FirmPestControlHistory(
        firmPestControlHistoryId: (firmPestControlHistoryId != null
            ? firmPestControlHistoryId.value
            : this.firmPestControlHistoryId),
        firm: (firm != null ? firm.value : this.firm),
        createdDate:
            (createdDate != null ? createdDate.value : this.createdDate),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        changeDate: (changeDate != null ? changeDate.value : this.changeDate),
        fieldName: (fieldName != null ? fieldName.value : this.fieldName),
        newValue: (newValue != null ? newValue.value : this.newValue),
        previousValue:
            (previousValue != null ? previousValue.value : this.previousValue));
  }
}

@JsonSerializable(explicitToJson: true)
class FirmPrevOwnership {
  const FirmPrevOwnership({
    this.firmPrevOwnId,
    this.firm,
    this.firmPrevOwnName,
    this.prevOwnDate,
  });

  factory FirmPrevOwnership.fromJson(Map<String, dynamic> json) =>
      _$FirmPrevOwnershipFromJson(json);

  static const toJsonFactory = _$FirmPrevOwnershipToJson;
  Map<String, dynamic> toJson() => _$FirmPrevOwnershipToJson(this);

  @JsonKey(name: 'firmPrevOwnId', includeIfNull: false)
  final int? firmPrevOwnId;
  @JsonKey(name: 'firm', includeIfNull: false)
  final FirmInfo? firm;
  @JsonKey(name: 'firmPrevOwnName', includeIfNull: false)
  final String? firmPrevOwnName;
  @JsonKey(name: 'prevOwnDate', includeIfNull: false)
  final DateTime? prevOwnDate;
  static const fromJsonFactory = _$FirmPrevOwnershipFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirmPrevOwnership &&
            (identical(other.firmPrevOwnId, firmPrevOwnId) ||
                const DeepCollectionEquality()
                    .equals(other.firmPrevOwnId, firmPrevOwnId)) &&
            (identical(other.firm, firm) ||
                const DeepCollectionEquality().equals(other.firm, firm)) &&
            (identical(other.firmPrevOwnName, firmPrevOwnName) ||
                const DeepCollectionEquality()
                    .equals(other.firmPrevOwnName, firmPrevOwnName)) &&
            (identical(other.prevOwnDate, prevOwnDate) ||
                const DeepCollectionEquality()
                    .equals(other.prevOwnDate, prevOwnDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firmPrevOwnId) ^
      const DeepCollectionEquality().hash(firm) ^
      const DeepCollectionEquality().hash(firmPrevOwnName) ^
      const DeepCollectionEquality().hash(prevOwnDate) ^
      runtimeType.hashCode;
}

extension $FirmPrevOwnershipExtension on FirmPrevOwnership {
  FirmPrevOwnership copyWith(
      {int? firmPrevOwnId,
      FirmInfo? firm,
      String? firmPrevOwnName,
      DateTime? prevOwnDate}) {
    return FirmPrevOwnership(
        firmPrevOwnId: firmPrevOwnId ?? this.firmPrevOwnId,
        firm: firm ?? this.firm,
        firmPrevOwnName: firmPrevOwnName ?? this.firmPrevOwnName,
        prevOwnDate: prevOwnDate ?? this.prevOwnDate);
  }

  FirmPrevOwnership copyWithWrapped(
      {Wrapped<int?>? firmPrevOwnId,
      Wrapped<FirmInfo?>? firm,
      Wrapped<String?>? firmPrevOwnName,
      Wrapped<DateTime?>? prevOwnDate}) {
    return FirmPrevOwnership(
        firmPrevOwnId:
            (firmPrevOwnId != null ? firmPrevOwnId.value : this.firmPrevOwnId),
        firm: (firm != null ? firm.value : this.firm),
        firmPrevOwnName: (firmPrevOwnName != null
            ? firmPrevOwnName.value
            : this.firmPrevOwnName),
        prevOwnDate:
            (prevOwnDate != null ? prevOwnDate.value : this.prevOwnDate));
  }
}

@JsonSerializable(explicitToJson: true)
class FirmRegistrationInfo {
  const FirmRegistrationInfo({
    this.firmId,
    this.firm,
    this.isOriginal,
    this.regDate,
    this.regName,
    this.regTradeNames,
    this.regMailAddress,
    this.regState,
    this.phoneEmail,
    this.regType,
    this.certifyOffical,
    this.formOfOrg,
    this.othFormOfOrg,
    this.natureOfBusiness,
    this.othNatOfBusiness,
    this.regBusinessType,
    this.othRgtrBusType,
    this.regComment,
    this.isRegistered,
    this.regNumber,
    this.linkedDate,
    this.parentFirmId,
    this.parentFirmName,
    this.associatedFirmLinks,
  });

  factory FirmRegistrationInfo.fromJson(Map<String, dynamic> json) =>
      _$FirmRegistrationInfoFromJson(json);

  static const toJsonFactory = _$FirmRegistrationInfoToJson;
  Map<String, dynamic> toJson() => _$FirmRegistrationInfoToJson(this);

  @JsonKey(name: 'firmId', includeIfNull: false)
  final int? firmId;
  @JsonKey(name: 'firm', includeIfNull: false)
  final FirmInfo? firm;
  @JsonKey(name: 'isOriginal', includeIfNull: false)
  final String? isOriginal;
  @JsonKey(name: 'regDate', includeIfNull: false)
  final DateTime? regDate;
  @JsonKey(name: 'regName', includeIfNull: false)
  final String? regName;
  @JsonKey(name: 'regTradeNames', includeIfNull: false)
  final String? regTradeNames;
  @JsonKey(name: 'regMailAddress', includeIfNull: false)
  final String? regMailAddress;
  @JsonKey(name: 'regState', includeIfNull: false)
  final String? regState;
  @JsonKey(name: 'phoneEmail', includeIfNull: false)
  final String? phoneEmail;
  @JsonKey(name: 'regType', includeIfNull: false)
  final String? regType;
  @JsonKey(name: 'certifyOffical', includeIfNull: false)
  final String? certifyOffical;
  @JsonKey(name: 'formOfOrg', includeIfNull: false)
  final String? formOfOrg;
  @JsonKey(name: 'othFormOfOrg', includeIfNull: false)
  final String? othFormOfOrg;
  @JsonKey(name: 'natureOfBusiness', includeIfNull: false)
  final String? natureOfBusiness;
  @JsonKey(name: 'othNatOfBusiness', includeIfNull: false)
  final String? othNatOfBusiness;
  @JsonKey(name: 'regBusinessType', includeIfNull: false)
  final String? regBusinessType;
  @JsonKey(name: 'othRgtrBusType', includeIfNull: false)
  final String? othRgtrBusType;
  @JsonKey(name: 'regComment', includeIfNull: false)
  final String? regComment;
  @JsonKey(name: 'isRegistered', includeIfNull: false)
  final String? isRegistered;
  @JsonKey(name: 'regNumber', includeIfNull: false)
  final String? regNumber;
  @JsonKey(name: 'linkedDate', includeIfNull: false)
  final DateTime? linkedDate;
  @JsonKey(name: 'parentFirmId', includeIfNull: false)
  final String? parentFirmId;
  @JsonKey(name: 'parentFirmName', includeIfNull: false)
  final String? parentFirmName;
  @JsonKey(
      name: 'associatedFirmLinks', includeIfNull: false, defaultValue: <int>[])
  final List<int>? associatedFirmLinks;
  static const fromJsonFactory = _$FirmRegistrationInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirmRegistrationInfo &&
            (identical(other.firmId, firmId) ||
                const DeepCollectionEquality().equals(other.firmId, firmId)) &&
            (identical(other.firm, firm) ||
                const DeepCollectionEquality().equals(other.firm, firm)) &&
            (identical(other.isOriginal, isOriginal) ||
                const DeepCollectionEquality()
                    .equals(other.isOriginal, isOriginal)) &&
            (identical(other.regDate, regDate) ||
                const DeepCollectionEquality()
                    .equals(other.regDate, regDate)) &&
            (identical(other.regName, regName) ||
                const DeepCollectionEquality()
                    .equals(other.regName, regName)) &&
            (identical(other.regTradeNames, regTradeNames) ||
                const DeepCollectionEquality()
                    .equals(other.regTradeNames, regTradeNames)) &&
            (identical(other.regMailAddress, regMailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.regMailAddress, regMailAddress)) &&
            (identical(other.regState, regState) ||
                const DeepCollectionEquality()
                    .equals(other.regState, regState)) &&
            (identical(other.phoneEmail, phoneEmail) ||
                const DeepCollectionEquality()
                    .equals(other.phoneEmail, phoneEmail)) &&
            (identical(other.regType, regType) ||
                const DeepCollectionEquality()
                    .equals(other.regType, regType)) &&
            (identical(other.certifyOffical, certifyOffical) ||
                const DeepCollectionEquality()
                    .equals(other.certifyOffical, certifyOffical)) &&
            (identical(other.formOfOrg, formOfOrg) ||
                const DeepCollectionEquality()
                    .equals(other.formOfOrg, formOfOrg)) &&
            (identical(other.othFormOfOrg, othFormOfOrg) ||
                const DeepCollectionEquality()
                    .equals(other.othFormOfOrg, othFormOfOrg)) &&
            (identical(other.natureOfBusiness, natureOfBusiness) ||
                const DeepCollectionEquality()
                    .equals(other.natureOfBusiness, natureOfBusiness)) &&
            (identical(other.othNatOfBusiness, othNatOfBusiness) ||
                const DeepCollectionEquality()
                    .equals(other.othNatOfBusiness, othNatOfBusiness)) &&
            (identical(other.regBusinessType, regBusinessType) ||
                const DeepCollectionEquality()
                    .equals(other.regBusinessType, regBusinessType)) &&
            (identical(other.othRgtrBusType, othRgtrBusType) ||
                const DeepCollectionEquality()
                    .equals(other.othRgtrBusType, othRgtrBusType)) &&
            (identical(other.regComment, regComment) ||
                const DeepCollectionEquality()
                    .equals(other.regComment, regComment)) &&
            (identical(other.isRegistered, isRegistered) ||
                const DeepCollectionEquality()
                    .equals(other.isRegistered, isRegistered)) &&
            (identical(other.regNumber, regNumber) ||
                const DeepCollectionEquality()
                    .equals(other.regNumber, regNumber)) &&
            (identical(other.linkedDate, linkedDate) ||
                const DeepCollectionEquality()
                    .equals(other.linkedDate, linkedDate)) &&
            (identical(other.parentFirmId, parentFirmId) ||
                const DeepCollectionEquality()
                    .equals(other.parentFirmId, parentFirmId)) &&
            (identical(other.parentFirmName, parentFirmName) ||
                const DeepCollectionEquality().equals(other.parentFirmName, parentFirmName)) &&
            (identical(other.associatedFirmLinks, associatedFirmLinks) || const DeepCollectionEquality().equals(other.associatedFirmLinks, associatedFirmLinks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firmId) ^
      const DeepCollectionEquality().hash(firm) ^
      const DeepCollectionEquality().hash(isOriginal) ^
      const DeepCollectionEquality().hash(regDate) ^
      const DeepCollectionEquality().hash(regName) ^
      const DeepCollectionEquality().hash(regTradeNames) ^
      const DeepCollectionEquality().hash(regMailAddress) ^
      const DeepCollectionEquality().hash(regState) ^
      const DeepCollectionEquality().hash(phoneEmail) ^
      const DeepCollectionEquality().hash(regType) ^
      const DeepCollectionEquality().hash(certifyOffical) ^
      const DeepCollectionEquality().hash(formOfOrg) ^
      const DeepCollectionEquality().hash(othFormOfOrg) ^
      const DeepCollectionEquality().hash(natureOfBusiness) ^
      const DeepCollectionEquality().hash(othNatOfBusiness) ^
      const DeepCollectionEquality().hash(regBusinessType) ^
      const DeepCollectionEquality().hash(othRgtrBusType) ^
      const DeepCollectionEquality().hash(regComment) ^
      const DeepCollectionEquality().hash(isRegistered) ^
      const DeepCollectionEquality().hash(regNumber) ^
      const DeepCollectionEquality().hash(linkedDate) ^
      const DeepCollectionEquality().hash(parentFirmId) ^
      const DeepCollectionEquality().hash(parentFirmName) ^
      const DeepCollectionEquality().hash(associatedFirmLinks) ^
      runtimeType.hashCode;
}

extension $FirmRegistrationInfoExtension on FirmRegistrationInfo {
  FirmRegistrationInfo copyWith(
      {int? firmId,
      FirmInfo? firm,
      String? isOriginal,
      DateTime? regDate,
      String? regName,
      String? regTradeNames,
      String? regMailAddress,
      String? regState,
      String? phoneEmail,
      String? regType,
      String? certifyOffical,
      String? formOfOrg,
      String? othFormOfOrg,
      String? natureOfBusiness,
      String? othNatOfBusiness,
      String? regBusinessType,
      String? othRgtrBusType,
      String? regComment,
      String? isRegistered,
      String? regNumber,
      DateTime? linkedDate,
      String? parentFirmId,
      String? parentFirmName,
      List<int>? associatedFirmLinks}) {
    return FirmRegistrationInfo(
        firmId: firmId ?? this.firmId,
        firm: firm ?? this.firm,
        isOriginal: isOriginal ?? this.isOriginal,
        regDate: regDate ?? this.regDate,
        regName: regName ?? this.regName,
        regTradeNames: regTradeNames ?? this.regTradeNames,
        regMailAddress: regMailAddress ?? this.regMailAddress,
        regState: regState ?? this.regState,
        phoneEmail: phoneEmail ?? this.phoneEmail,
        regType: regType ?? this.regType,
        certifyOffical: certifyOffical ?? this.certifyOffical,
        formOfOrg: formOfOrg ?? this.formOfOrg,
        othFormOfOrg: othFormOfOrg ?? this.othFormOfOrg,
        natureOfBusiness: natureOfBusiness ?? this.natureOfBusiness,
        othNatOfBusiness: othNatOfBusiness ?? this.othNatOfBusiness,
        regBusinessType: regBusinessType ?? this.regBusinessType,
        othRgtrBusType: othRgtrBusType ?? this.othRgtrBusType,
        regComment: regComment ?? this.regComment,
        isRegistered: isRegistered ?? this.isRegistered,
        regNumber: regNumber ?? this.regNumber,
        linkedDate: linkedDate ?? this.linkedDate,
        parentFirmId: parentFirmId ?? this.parentFirmId,
        parentFirmName: parentFirmName ?? this.parentFirmName,
        associatedFirmLinks: associatedFirmLinks ?? this.associatedFirmLinks);
  }

  FirmRegistrationInfo copyWithWrapped(
      {Wrapped<int?>? firmId,
      Wrapped<FirmInfo?>? firm,
      Wrapped<String?>? isOriginal,
      Wrapped<DateTime?>? regDate,
      Wrapped<String?>? regName,
      Wrapped<String?>? regTradeNames,
      Wrapped<String?>? regMailAddress,
      Wrapped<String?>? regState,
      Wrapped<String?>? phoneEmail,
      Wrapped<String?>? regType,
      Wrapped<String?>? certifyOffical,
      Wrapped<String?>? formOfOrg,
      Wrapped<String?>? othFormOfOrg,
      Wrapped<String?>? natureOfBusiness,
      Wrapped<String?>? othNatOfBusiness,
      Wrapped<String?>? regBusinessType,
      Wrapped<String?>? othRgtrBusType,
      Wrapped<String?>? regComment,
      Wrapped<String?>? isRegistered,
      Wrapped<String?>? regNumber,
      Wrapped<DateTime?>? linkedDate,
      Wrapped<String?>? parentFirmId,
      Wrapped<String?>? parentFirmName,
      Wrapped<List<int>?>? associatedFirmLinks}) {
    return FirmRegistrationInfo(
        firmId: (firmId != null ? firmId.value : this.firmId),
        firm: (firm != null ? firm.value : this.firm),
        isOriginal: (isOriginal != null ? isOriginal.value : this.isOriginal),
        regDate: (regDate != null ? regDate.value : this.regDate),
        regName: (regName != null ? regName.value : this.regName),
        regTradeNames:
            (regTradeNames != null ? regTradeNames.value : this.regTradeNames),
        regMailAddress: (regMailAddress != null
            ? regMailAddress.value
            : this.regMailAddress),
        regState: (regState != null ? regState.value : this.regState),
        phoneEmail: (phoneEmail != null ? phoneEmail.value : this.phoneEmail),
        regType: (regType != null ? regType.value : this.regType),
        certifyOffical: (certifyOffical != null
            ? certifyOffical.value
            : this.certifyOffical),
        formOfOrg: (formOfOrg != null ? formOfOrg.value : this.formOfOrg),
        othFormOfOrg:
            (othFormOfOrg != null ? othFormOfOrg.value : this.othFormOfOrg),
        natureOfBusiness: (natureOfBusiness != null
            ? natureOfBusiness.value
            : this.natureOfBusiness),
        othNatOfBusiness: (othNatOfBusiness != null
            ? othNatOfBusiness.value
            : this.othNatOfBusiness),
        regBusinessType: (regBusinessType != null
            ? regBusinessType.value
            : this.regBusinessType),
        othRgtrBusType: (othRgtrBusType != null
            ? othRgtrBusType.value
            : this.othRgtrBusType),
        regComment: (regComment != null ? regComment.value : this.regComment),
        isRegistered:
            (isRegistered != null ? isRegistered.value : this.isRegistered),
        regNumber: (regNumber != null ? regNumber.value : this.regNumber),
        linkedDate: (linkedDate != null ? linkedDate.value : this.linkedDate),
        parentFirmId:
            (parentFirmId != null ? parentFirmId.value : this.parentFirmId),
        parentFirmName: (parentFirmName != null
            ? parentFirmName.value
            : this.parentFirmName),
        associatedFirmLinks: (associatedFirmLinks != null
            ? associatedFirmLinks.value
            : this.associatedFirmLinks));
  }
}

@JsonSerializable(explicitToJson: true)
class PestControl {
  const PestControl({
    this.pestControlId,
    this.firm,
    this.name,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.zipCode,
    this.phoneNumber,
    this.phoneNumberExtension,
    this.mobilePhoneNumber,
    this.email,
    this.selfAdministered,
    this.frequencyOfVisits,
  });

  factory PestControl.fromJson(Map<String, dynamic> json) =>
      _$PestControlFromJson(json);

  static const toJsonFactory = _$PestControlToJson;
  Map<String, dynamic> toJson() => _$PestControlToJson(this);

  @JsonKey(name: 'pestControlId', includeIfNull: false)
  final int? pestControlId;
  @JsonKey(name: 'firm', includeIfNull: false)
  final FirmInfo? firm;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'address1', includeIfNull: false)
  final String? address1;
  @JsonKey(name: 'address2', includeIfNull: false)
  final String? address2;
  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  @JsonKey(name: 'state', includeIfNull: false)
  final String? state;
  @JsonKey(name: 'zipCode', includeIfNull: false)
  final String? zipCode;
  @JsonKey(name: 'phoneNumber', includeIfNull: false)
  final String? phoneNumber;
  @JsonKey(name: 'phoneNumberExtension', includeIfNull: false)
  final String? phoneNumberExtension;
  @JsonKey(name: 'mobilePhoneNumber', includeIfNull: false)
  final String? mobilePhoneNumber;
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @JsonKey(name: 'selfAdministered', includeIfNull: false)
  final bool? selfAdministered;
  @JsonKey(name: 'frequencyOfVisits', includeIfNull: false)
  final String? frequencyOfVisits;
  static const fromJsonFactory = _$PestControlFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PestControl &&
            (identical(other.pestControlId, pestControlId) ||
                const DeepCollectionEquality()
                    .equals(other.pestControlId, pestControlId)) &&
            (identical(other.firm, firm) ||
                const DeepCollectionEquality().equals(other.firm, firm)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address1, address1) ||
                const DeepCollectionEquality()
                    .equals(other.address1, address1)) &&
            (identical(other.address2, address2) ||
                const DeepCollectionEquality()
                    .equals(other.address2, address2)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality()
                    .equals(other.zipCode, zipCode)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.phoneNumberExtension, phoneNumberExtension) ||
                const DeepCollectionEquality().equals(
                    other.phoneNumberExtension, phoneNumberExtension)) &&
            (identical(other.mobilePhoneNumber, mobilePhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobilePhoneNumber, mobilePhoneNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.selfAdministered, selfAdministered) ||
                const DeepCollectionEquality()
                    .equals(other.selfAdministered, selfAdministered)) &&
            (identical(other.frequencyOfVisits, frequencyOfVisits) ||
                const DeepCollectionEquality()
                    .equals(other.frequencyOfVisits, frequencyOfVisits)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pestControlId) ^
      const DeepCollectionEquality().hash(firm) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address1) ^
      const DeepCollectionEquality().hash(address2) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneNumberExtension) ^
      const DeepCollectionEquality().hash(mobilePhoneNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(selfAdministered) ^
      const DeepCollectionEquality().hash(frequencyOfVisits) ^
      runtimeType.hashCode;
}

extension $PestControlExtension on PestControl {
  PestControl copyWith(
      {int? pestControlId,
      FirmInfo? firm,
      String? name,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? zipCode,
      String? phoneNumber,
      String? phoneNumberExtension,
      String? mobilePhoneNumber,
      String? email,
      bool? selfAdministered,
      String? frequencyOfVisits}) {
    return PestControl(
        pestControlId: pestControlId ?? this.pestControlId,
        firm: firm ?? this.firm,
        name: name ?? this.name,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        city: city ?? this.city,
        state: state ?? this.state,
        zipCode: zipCode ?? this.zipCode,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        phoneNumberExtension: phoneNumberExtension ?? this.phoneNumberExtension,
        mobilePhoneNumber: mobilePhoneNumber ?? this.mobilePhoneNumber,
        email: email ?? this.email,
        selfAdministered: selfAdministered ?? this.selfAdministered,
        frequencyOfVisits: frequencyOfVisits ?? this.frequencyOfVisits);
  }

  PestControl copyWithWrapped(
      {Wrapped<int?>? pestControlId,
      Wrapped<FirmInfo?>? firm,
      Wrapped<String?>? name,
      Wrapped<String?>? address1,
      Wrapped<String?>? address2,
      Wrapped<String?>? city,
      Wrapped<String?>? state,
      Wrapped<String?>? zipCode,
      Wrapped<String?>? phoneNumber,
      Wrapped<String?>? phoneNumberExtension,
      Wrapped<String?>? mobilePhoneNumber,
      Wrapped<String?>? email,
      Wrapped<bool?>? selfAdministered,
      Wrapped<String?>? frequencyOfVisits}) {
    return PestControl(
        pestControlId:
            (pestControlId != null ? pestControlId.value : this.pestControlId),
        firm: (firm != null ? firm.value : this.firm),
        name: (name != null ? name.value : this.name),
        address1: (address1 != null ? address1.value : this.address1),
        address2: (address2 != null ? address2.value : this.address2),
        city: (city != null ? city.value : this.city),
        state: (state != null ? state.value : this.state),
        zipCode: (zipCode != null ? zipCode.value : this.zipCode),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        phoneNumberExtension: (phoneNumberExtension != null
            ? phoneNumberExtension.value
            : this.phoneNumberExtension),
        mobilePhoneNumber: (mobilePhoneNumber != null
            ? mobilePhoneNumber.value
            : this.mobilePhoneNumber),
        email: (email != null ? email.value : this.email),
        selfAdministered: (selfAdministered != null
            ? selfAdministered.value
            : this.selfAdministered),
        frequencyOfVisits: (frequencyOfVisits != null
            ? frequencyOfVisits.value
            : this.frequencyOfVisits));
  }
}

@JsonSerializable(explicitToJson: true)
class ANRole {
  const ANRole({
    this.roleID,
    this.roleName,
    this.roleType,
  });

  factory ANRole.fromJson(Map<String, dynamic> json) => _$ANRoleFromJson(json);

  static const toJsonFactory = _$ANRoleToJson;
  Map<String, dynamic> toJson() => _$ANRoleToJson(this);

  @JsonKey(name: 'roleID', includeIfNull: false)
  final int? roleID;
  @JsonKey(name: 'roleName', includeIfNull: false)
  final String? roleName;
  @JsonKey(name: 'roleType', includeIfNull: false)
  final String? roleType;
  static const fromJsonFactory = _$ANRoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ANRole &&
            (identical(other.roleID, roleID) ||
                const DeepCollectionEquality().equals(other.roleID, roleID)) &&
            (identical(other.roleName, roleName) ||
                const DeepCollectionEquality()
                    .equals(other.roleName, roleName)) &&
            (identical(other.roleType, roleType) ||
                const DeepCollectionEquality()
                    .equals(other.roleType, roleType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roleID) ^
      const DeepCollectionEquality().hash(roleName) ^
      const DeepCollectionEquality().hash(roleType) ^
      runtimeType.hashCode;
}

extension $ANRoleExtension on ANRole {
  ANRole copyWith({int? roleID, String? roleName, String? roleType}) {
    return ANRole(
        roleID: roleID ?? this.roleID,
        roleName: roleName ?? this.roleName,
        roleType: roleType ?? this.roleType);
  }

  ANRole copyWithWrapped(
      {Wrapped<int?>? roleID,
      Wrapped<String?>? roleName,
      Wrapped<String?>? roleType}) {
    return ANRole(
        roleID: (roleID != null ? roleID.value : this.roleID),
        roleName: (roleName != null ? roleName.value : this.roleName),
        roleType: (roleType != null ? roleType.value : this.roleType));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelPageANRole {
  const ModelPageANRole({
    this.records,
    this.page,
    this.count,
    this.totalPages,
    this.totalRecords,
  });

  factory ModelPageANRole.fromJson(Map<String, dynamic> json) =>
      _$ModelPageANRoleFromJson(json);

  static const toJsonFactory = _$ModelPageANRoleToJson;
  Map<String, dynamic> toJson() => _$ModelPageANRoleToJson(this);

  @JsonKey(name: 'records', includeIfNull: false, defaultValue: <ANRole>[])
  final List<ANRole>? records;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'count', includeIfNull: false)
  final int? count;
  @JsonKey(name: 'totalPages', includeIfNull: false)
  final int? totalPages;
  @JsonKey(name: 'totalRecords', includeIfNull: false)
  final int? totalRecords;
  static const fromJsonFactory = _$ModelPageANRoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelPageANRole &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      runtimeType.hashCode;
}

extension $ModelPageANRoleExtension on ModelPageANRole {
  ModelPageANRole copyWith(
      {List<ANRole>? records,
      int? page,
      int? count,
      int? totalPages,
      int? totalRecords}) {
    return ModelPageANRole(
        records: records ?? this.records,
        page: page ?? this.page,
        count: count ?? this.count,
        totalPages: totalPages ?? this.totalPages,
        totalRecords: totalRecords ?? this.totalRecords);
  }

  ModelPageANRole copyWithWrapped(
      {Wrapped<List<ANRole>?>? records,
      Wrapped<int?>? page,
      Wrapped<int?>? count,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalRecords}) {
    return ModelPageANRole(
        records: (records != null ? records.value : this.records),
        page: (page != null ? page.value : this.page),
        count: (count != null ? count.value : this.count),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalRecords:
            (totalRecords != null ? totalRecords.value : this.totalRecords));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelPageUser {
  const ModelPageUser({
    this.records,
    this.page,
    this.count,
    this.totalPages,
    this.totalRecords,
  });

  factory ModelPageUser.fromJson(Map<String, dynamic> json) =>
      _$ModelPageUserFromJson(json);

  static const toJsonFactory = _$ModelPageUserToJson;
  Map<String, dynamic> toJson() => _$ModelPageUserToJson(this);

  @JsonKey(name: 'records', includeIfNull: false, defaultValue: <User>[])
  final List<User>? records;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'count', includeIfNull: false)
  final int? count;
  @JsonKey(name: 'totalPages', includeIfNull: false)
  final int? totalPages;
  @JsonKey(name: 'totalRecords', includeIfNull: false)
  final int? totalRecords;
  static const fromJsonFactory = _$ModelPageUserFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelPageUser &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      runtimeType.hashCode;
}

extension $ModelPageUserExtension on ModelPageUser {
  ModelPageUser copyWith(
      {List<User>? records,
      int? page,
      int? count,
      int? totalPages,
      int? totalRecords}) {
    return ModelPageUser(
        records: records ?? this.records,
        page: page ?? this.page,
        count: count ?? this.count,
        totalPages: totalPages ?? this.totalPages,
        totalRecords: totalRecords ?? this.totalRecords);
  }

  ModelPageUser copyWithWrapped(
      {Wrapped<List<User>?>? records,
      Wrapped<int?>? page,
      Wrapped<int?>? count,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalRecords}) {
    return ModelPageUser(
        records: (records != null ? records.value : this.records),
        page: (page != null ? page.value : this.page),
        count: (count != null ? count.value : this.count),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalRecords:
            (totalRecords != null ? totalRecords.value : this.totalRecords));
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  const User({
    this.eauthId,
    this.empId,
    this.userLevel,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: 'eauthId', includeIfNull: false)
  final String? eauthId;
  @JsonKey(name: 'empId', includeIfNull: false)
  final int? empId;
  @JsonKey(name: 'userLevel', includeIfNull: false)
  final int? userLevel;
  static const fromJsonFactory = _$UserFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.eauthId, eauthId) ||
                const DeepCollectionEquality()
                    .equals(other.eauthId, eauthId)) &&
            (identical(other.empId, empId) ||
                const DeepCollectionEquality().equals(other.empId, empId)) &&
            (identical(other.userLevel, userLevel) ||
                const DeepCollectionEquality()
                    .equals(other.userLevel, userLevel)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eauthId) ^
      const DeepCollectionEquality().hash(empId) ^
      const DeepCollectionEquality().hash(userLevel) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith({String? eauthId, int? empId, int? userLevel}) {
    return User(
        eauthId: eauthId ?? this.eauthId,
        empId: empId ?? this.empId,
        userLevel: userLevel ?? this.userLevel);
  }

  User copyWithWrapped(
      {Wrapped<String?>? eauthId,
      Wrapped<int?>? empId,
      Wrapped<int?>? userLevel}) {
    return User(
        eauthId: (eauthId != null ? eauthId.value : this.eauthId),
        empId: (empId != null ? empId.value : this.empId),
        userLevel: (userLevel != null ? userLevel.value : this.userLevel));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelPageSurveillance {
  const ModelPageSurveillance({
    this.records,
    this.page,
    this.count,
    this.totalPages,
    this.totalRecords,
  });

  factory ModelPageSurveillance.fromJson(Map<String, dynamic> json) =>
      _$ModelPageSurveillanceFromJson(json);

  static const toJsonFactory = _$ModelPageSurveillanceToJson;
  Map<String, dynamic> toJson() => _$ModelPageSurveillanceToJson(this);

  @JsonKey(
      name: 'records', includeIfNull: false, defaultValue: <Surveillance>[])
  final List<Surveillance>? records;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'count', includeIfNull: false)
  final int? count;
  @JsonKey(name: 'totalPages', includeIfNull: false)
  final int? totalPages;
  @JsonKey(name: 'totalRecords', includeIfNull: false)
  final int? totalRecords;
  static const fromJsonFactory = _$ModelPageSurveillanceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelPageSurveillance &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      runtimeType.hashCode;
}

extension $ModelPageSurveillanceExtension on ModelPageSurveillance {
  ModelPageSurveillance copyWith(
      {List<Surveillance>? records,
      int? page,
      int? count,
      int? totalPages,
      int? totalRecords}) {
    return ModelPageSurveillance(
        records: records ?? this.records,
        page: page ?? this.page,
        count: count ?? this.count,
        totalPages: totalPages ?? this.totalPages,
        totalRecords: totalRecords ?? this.totalRecords);
  }

  ModelPageSurveillance copyWithWrapped(
      {Wrapped<List<Surveillance>?>? records,
      Wrapped<int?>? page,
      Wrapped<int?>? count,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalRecords}) {
    return ModelPageSurveillance(
        records: (records != null ? records.value : this.records),
        page: (page != null ? page.value : this.page),
        count: (count != null ? count.value : this.count),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalRecords:
            (totalRecords != null ? totalRecords.value : this.totalRecords));
  }
}

@JsonSerializable(explicitToJson: true)
class Reminder {
  const Reminder({
    this.remindersId,
    this.recordID,
    this.type,
    this.creator,
    this.createdDate,
    this.firmName,
    this.empId,
    this.empName,
    this.followUp,
    this.dueDate,
    this.variance,
  });

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);

  static const toJsonFactory = _$ReminderToJson;
  Map<String, dynamic> toJson() => _$ReminderToJson(this);

  @JsonKey(name: 'remindersId', includeIfNull: false)
  final int? remindersId;
  @JsonKey(name: 'recordID', includeIfNull: false)
  final int? recordID;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'creator', includeIfNull: false)
  final int? creator;
  @JsonKey(name: 'createdDate', includeIfNull: false)
  final DateTime? createdDate;
  @JsonKey(name: 'firmName', includeIfNull: false)
  final String? firmName;
  @JsonKey(name: 'empId', includeIfNull: false)
  final int? empId;
  @JsonKey(name: 'empName', includeIfNull: false)
  final String? empName;
  @JsonKey(name: 'followUp', includeIfNull: false)
  final String? followUp;
  @JsonKey(name: 'dueDate', includeIfNull: false)
  final DateTime? dueDate;
  @JsonKey(name: 'variance', includeIfNull: false)
  final String? variance;
  static const fromJsonFactory = _$ReminderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Reminder &&
            (identical(other.remindersId, remindersId) ||
                const DeepCollectionEquality()
                    .equals(other.remindersId, remindersId)) &&
            (identical(other.recordID, recordID) ||
                const DeepCollectionEquality()
                    .equals(other.recordID, recordID)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.firmName, firmName) ||
                const DeepCollectionEquality()
                    .equals(other.firmName, firmName)) &&
            (identical(other.empId, empId) ||
                const DeepCollectionEquality().equals(other.empId, empId)) &&
            (identical(other.empName, empName) ||
                const DeepCollectionEquality()
                    .equals(other.empName, empName)) &&
            (identical(other.followUp, followUp) ||
                const DeepCollectionEquality()
                    .equals(other.followUp, followUp)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.variance, variance) ||
                const DeepCollectionEquality()
                    .equals(other.variance, variance)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(remindersId) ^
      const DeepCollectionEquality().hash(recordID) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(firmName) ^
      const DeepCollectionEquality().hash(empId) ^
      const DeepCollectionEquality().hash(empName) ^
      const DeepCollectionEquality().hash(followUp) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(variance) ^
      runtimeType.hashCode;
}

extension $ReminderExtension on Reminder {
  Reminder copyWith(
      {int? remindersId,
      int? recordID,
      String? type,
      int? creator,
      DateTime? createdDate,
      String? firmName,
      int? empId,
      String? empName,
      String? followUp,
      DateTime? dueDate,
      String? variance}) {
    return Reminder(
        remindersId: remindersId ?? this.remindersId,
        recordID: recordID ?? this.recordID,
        type: type ?? this.type,
        creator: creator ?? this.creator,
        createdDate: createdDate ?? this.createdDate,
        firmName: firmName ?? this.firmName,
        empId: empId ?? this.empId,
        empName: empName ?? this.empName,
        followUp: followUp ?? this.followUp,
        dueDate: dueDate ?? this.dueDate,
        variance: variance ?? this.variance);
  }

  Reminder copyWithWrapped(
      {Wrapped<int?>? remindersId,
      Wrapped<int?>? recordID,
      Wrapped<String?>? type,
      Wrapped<int?>? creator,
      Wrapped<DateTime?>? createdDate,
      Wrapped<String?>? firmName,
      Wrapped<int?>? empId,
      Wrapped<String?>? empName,
      Wrapped<String?>? followUp,
      Wrapped<DateTime?>? dueDate,
      Wrapped<String?>? variance}) {
    return Reminder(
        remindersId:
            (remindersId != null ? remindersId.value : this.remindersId),
        recordID: (recordID != null ? recordID.value : this.recordID),
        type: (type != null ? type.value : this.type),
        creator: (creator != null ? creator.value : this.creator),
        createdDate:
            (createdDate != null ? createdDate.value : this.createdDate),
        firmName: (firmName != null ? firmName.value : this.firmName),
        empId: (empId != null ? empId.value : this.empId),
        empName: (empName != null ? empName.value : this.empName),
        followUp: (followUp != null ? followUp.value : this.followUp),
        dueDate: (dueDate != null ? dueDate.value : this.dueDate),
        variance: (variance != null ? variance.value : this.variance));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelPageFirmInfo {
  const ModelPageFirmInfo({
    this.records,
    this.page,
    this.count,
    this.totalPages,
    this.totalRecords,
  });

  factory ModelPageFirmInfo.fromJson(Map<String, dynamic> json) =>
      _$ModelPageFirmInfoFromJson(json);

  static const toJsonFactory = _$ModelPageFirmInfoToJson;
  Map<String, dynamic> toJson() => _$ModelPageFirmInfoToJson(this);

  @JsonKey(name: 'records', includeIfNull: false, defaultValue: <FirmInfo>[])
  final List<FirmInfo>? records;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'count', includeIfNull: false)
  final int? count;
  @JsonKey(name: 'totalPages', includeIfNull: false)
  final int? totalPages;
  @JsonKey(name: 'totalRecords', includeIfNull: false)
  final int? totalRecords;
  static const fromJsonFactory = _$ModelPageFirmInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelPageFirmInfo &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      runtimeType.hashCode;
}

extension $ModelPageFirmInfoExtension on ModelPageFirmInfo {
  ModelPageFirmInfo copyWith(
      {List<FirmInfo>? records,
      int? page,
      int? count,
      int? totalPages,
      int? totalRecords}) {
    return ModelPageFirmInfo(
        records: records ?? this.records,
        page: page ?? this.page,
        count: count ?? this.count,
        totalPages: totalPages ?? this.totalPages,
        totalRecords: totalRecords ?? this.totalRecords);
  }

  ModelPageFirmInfo copyWithWrapped(
      {Wrapped<List<FirmInfo>?>? records,
      Wrapped<int?>? page,
      Wrapped<int?>? count,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalRecords}) {
    return ModelPageFirmInfo(
        records: (records != null ? records.value : this.records),
        page: (page != null ? page.value : this.page),
        count: (count != null ? count.value : this.count),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalRecords:
            (totalRecords != null ? totalRecords.value : this.totalRecords));
  }
}

@JsonSerializable(explicitToJson: true)
class Employee {
  const Employee({
    this.id,
    this.employeeId,
    this.lastName,
    this.firstName,
    this.loginName,
    this.title,
    this.districtCode,
    this.districtName,
    this.circuitCode,
    this.circuitName,
    this.establishmentId,
    this.establishmentCode,
    this.establishmentName,
    this.regionCode,
    this.regionName,
    this.subRegionCode,
    this.assignmentCode,
    this.assignmentLocation,
    this.programArea,
    this.email,
    this.active,
    this.badgeNumber,
    this.phoneNumber,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  static const toJsonFactory = _$EmployeeToJson;
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'employeeId', includeIfNull: false)
  final int? employeeId;
  @JsonKey(name: 'lastName', includeIfNull: false)
  final String? lastName;
  @JsonKey(name: 'firstName', includeIfNull: false)
  final String? firstName;
  @JsonKey(name: 'loginName', includeIfNull: false)
  final String? loginName;
  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;
  @JsonKey(name: 'districtCode', includeIfNull: false)
  final String? districtCode;
  @JsonKey(name: 'districtName', includeIfNull: false)
  final String? districtName;
  @JsonKey(name: 'circuitCode', includeIfNull: false)
  final String? circuitCode;
  @JsonKey(name: 'circuitName', includeIfNull: false)
  final String? circuitName;
  @JsonKey(name: 'establishmentId', includeIfNull: false)
  final int? establishmentId;
  @JsonKey(name: 'establishmentCode', includeIfNull: false)
  final String? establishmentCode;
  @JsonKey(name: 'establishmentName', includeIfNull: false)
  final String? establishmentName;
  @JsonKey(name: 'regionCode', includeIfNull: false)
  final String? regionCode;
  @JsonKey(name: 'regionName', includeIfNull: false)
  final String? regionName;
  @JsonKey(name: 'subRegionCode', includeIfNull: false)
  final String? subRegionCode;
  @JsonKey(name: 'assignmentCode', includeIfNull: false)
  final String? assignmentCode;
  @JsonKey(name: 'assignmentLocation', includeIfNull: false)
  final String? assignmentLocation;
  @JsonKey(name: 'programArea', includeIfNull: false)
  final String? programArea;
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @JsonKey(name: 'active', includeIfNull: false)
  final String? active;
  @JsonKey(name: 'badgeNumber', includeIfNull: false)
  final String? badgeNumber;
  @JsonKey(name: 'phoneNumber', includeIfNull: false)
  final String? phoneNumber;
  static const fromJsonFactory = _$EmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.loginName, loginName) ||
                const DeepCollectionEquality()
                    .equals(other.loginName, loginName)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.districtCode, districtCode) ||
                const DeepCollectionEquality()
                    .equals(other.districtCode, districtCode)) &&
            (identical(other.districtName, districtName) ||
                const DeepCollectionEquality()
                    .equals(other.districtName, districtName)) &&
            (identical(other.circuitCode, circuitCode) ||
                const DeepCollectionEquality()
                    .equals(other.circuitCode, circuitCode)) &&
            (identical(other.circuitName, circuitName) ||
                const DeepCollectionEquality()
                    .equals(other.circuitName, circuitName)) &&
            (identical(other.establishmentId, establishmentId) ||
                const DeepCollectionEquality()
                    .equals(other.establishmentId, establishmentId)) &&
            (identical(other.establishmentCode, establishmentCode) ||
                const DeepCollectionEquality()
                    .equals(other.establishmentCode, establishmentCode)) &&
            (identical(other.establishmentName, establishmentName) ||
                const DeepCollectionEquality()
                    .equals(other.establishmentName, establishmentName)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.regionName, regionName) ||
                const DeepCollectionEquality()
                    .equals(other.regionName, regionName)) &&
            (identical(other.subRegionCode, subRegionCode) ||
                const DeepCollectionEquality()
                    .equals(other.subRegionCode, subRegionCode)) &&
            (identical(other.assignmentCode, assignmentCode) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentCode, assignmentCode)) &&
            (identical(other.assignmentLocation, assignmentLocation) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentLocation, assignmentLocation)) &&
            (identical(other.programArea, programArea) ||
                const DeepCollectionEquality()
                    .equals(other.programArea, programArea)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.badgeNumber, badgeNumber) ||
                const DeepCollectionEquality()
                    .equals(other.badgeNumber, badgeNumber)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(loginName) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(districtCode) ^
      const DeepCollectionEquality().hash(districtName) ^
      const DeepCollectionEquality().hash(circuitCode) ^
      const DeepCollectionEquality().hash(circuitName) ^
      const DeepCollectionEquality().hash(establishmentId) ^
      const DeepCollectionEquality().hash(establishmentCode) ^
      const DeepCollectionEquality().hash(establishmentName) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(regionName) ^
      const DeepCollectionEquality().hash(subRegionCode) ^
      const DeepCollectionEquality().hash(assignmentCode) ^
      const DeepCollectionEquality().hash(assignmentLocation) ^
      const DeepCollectionEquality().hash(programArea) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(badgeNumber) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      runtimeType.hashCode;
}

extension $EmployeeExtension on Employee {
  Employee copyWith(
      {String? id,
      int? employeeId,
      String? lastName,
      String? firstName,
      String? loginName,
      String? title,
      String? districtCode,
      String? districtName,
      String? circuitCode,
      String? circuitName,
      int? establishmentId,
      String? establishmentCode,
      String? establishmentName,
      String? regionCode,
      String? regionName,
      String? subRegionCode,
      String? assignmentCode,
      String? assignmentLocation,
      String? programArea,
      String? email,
      String? active,
      String? badgeNumber,
      String? phoneNumber}) {
    return Employee(
        id: id ?? this.id,
        employeeId: employeeId ?? this.employeeId,
        lastName: lastName ?? this.lastName,
        firstName: firstName ?? this.firstName,
        loginName: loginName ?? this.loginName,
        title: title ?? this.title,
        districtCode: districtCode ?? this.districtCode,
        districtName: districtName ?? this.districtName,
        circuitCode: circuitCode ?? this.circuitCode,
        circuitName: circuitName ?? this.circuitName,
        establishmentId: establishmentId ?? this.establishmentId,
        establishmentCode: establishmentCode ?? this.establishmentCode,
        establishmentName: establishmentName ?? this.establishmentName,
        regionCode: regionCode ?? this.regionCode,
        regionName: regionName ?? this.regionName,
        subRegionCode: subRegionCode ?? this.subRegionCode,
        assignmentCode: assignmentCode ?? this.assignmentCode,
        assignmentLocation: assignmentLocation ?? this.assignmentLocation,
        programArea: programArea ?? this.programArea,
        email: email ?? this.email,
        active: active ?? this.active,
        badgeNumber: badgeNumber ?? this.badgeNumber,
        phoneNumber: phoneNumber ?? this.phoneNumber);
  }

  Employee copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<int?>? employeeId,
      Wrapped<String?>? lastName,
      Wrapped<String?>? firstName,
      Wrapped<String?>? loginName,
      Wrapped<String?>? title,
      Wrapped<String?>? districtCode,
      Wrapped<String?>? districtName,
      Wrapped<String?>? circuitCode,
      Wrapped<String?>? circuitName,
      Wrapped<int?>? establishmentId,
      Wrapped<String?>? establishmentCode,
      Wrapped<String?>? establishmentName,
      Wrapped<String?>? regionCode,
      Wrapped<String?>? regionName,
      Wrapped<String?>? subRegionCode,
      Wrapped<String?>? assignmentCode,
      Wrapped<String?>? assignmentLocation,
      Wrapped<String?>? programArea,
      Wrapped<String?>? email,
      Wrapped<String?>? active,
      Wrapped<String?>? badgeNumber,
      Wrapped<String?>? phoneNumber}) {
    return Employee(
        id: (id != null ? id.value : this.id),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        lastName: (lastName != null ? lastName.value : this.lastName),
        firstName: (firstName != null ? firstName.value : this.firstName),
        loginName: (loginName != null ? loginName.value : this.loginName),
        title: (title != null ? title.value : this.title),
        districtCode:
            (districtCode != null ? districtCode.value : this.districtCode),
        districtName:
            (districtName != null ? districtName.value : this.districtName),
        circuitCode:
            (circuitCode != null ? circuitCode.value : this.circuitCode),
        circuitName:
            (circuitName != null ? circuitName.value : this.circuitName),
        establishmentId: (establishmentId != null
            ? establishmentId.value
            : this.establishmentId),
        establishmentCode: (establishmentCode != null
            ? establishmentCode.value
            : this.establishmentCode),
        establishmentName: (establishmentName != null
            ? establishmentName.value
            : this.establishmentName),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode),
        regionName: (regionName != null ? regionName.value : this.regionName),
        subRegionCode:
            (subRegionCode != null ? subRegionCode.value : this.subRegionCode),
        assignmentCode: (assignmentCode != null
            ? assignmentCode.value
            : this.assignmentCode),
        assignmentLocation: (assignmentLocation != null
            ? assignmentLocation.value
            : this.assignmentLocation),
        programArea:
            (programArea != null ? programArea.value : this.programArea),
        email: (email != null ? email.value : this.email),
        active: (active != null ? active.value : this.active),
        badgeNumber:
            (badgeNumber != null ? badgeNumber.value : this.badgeNumber),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelPageEmployee {
  const ModelPageEmployee({
    this.records,
    this.page,
    this.count,
    this.totalPages,
    this.totalRecords,
  });

  factory ModelPageEmployee.fromJson(Map<String, dynamic> json) =>
      _$ModelPageEmployeeFromJson(json);

  static const toJsonFactory = _$ModelPageEmployeeToJson;
  Map<String, dynamic> toJson() => _$ModelPageEmployeeToJson(this);

  @JsonKey(name: 'records', includeIfNull: false, defaultValue: <Employee>[])
  final List<Employee>? records;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'count', includeIfNull: false)
  final int? count;
  @JsonKey(name: 'totalPages', includeIfNull: false)
  final int? totalPages;
  @JsonKey(name: 'totalRecords', includeIfNull: false)
  final int? totalRecords;
  static const fromJsonFactory = _$ModelPageEmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelPageEmployee &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      runtimeType.hashCode;
}

extension $ModelPageEmployeeExtension on ModelPageEmployee {
  ModelPageEmployee copyWith(
      {List<Employee>? records,
      int? page,
      int? count,
      int? totalPages,
      int? totalRecords}) {
    return ModelPageEmployee(
        records: records ?? this.records,
        page: page ?? this.page,
        count: count ?? this.count,
        totalPages: totalPages ?? this.totalPages,
        totalRecords: totalRecords ?? this.totalRecords);
  }

  ModelPageEmployee copyWithWrapped(
      {Wrapped<List<Employee>?>? records,
      Wrapped<int?>? page,
      Wrapped<int?>? count,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalRecords}) {
    return ModelPageEmployee(
        records: (records != null ? records.value : this.records),
        page: (page != null ? page.value : this.page),
        count: (count != null ? count.value : this.count),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalRecords:
            (totalRecords != null ? totalRecords.value : this.totalRecords));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeRole {
  const EmployeeRole({
    this.empId,
    this.assuranceNetRoleId,
    this.workflowRoleId,
    this.isPrimary,
    this.startDate,
    this.endDate,
    this.districtCode,
    this.assignmentCode,
    this.employeeRoleId,
    this.regionCode,
    this.subRegionCode,
  });

  factory EmployeeRole.fromJson(Map<String, dynamic> json) =>
      _$EmployeeRoleFromJson(json);

  static const toJsonFactory = _$EmployeeRoleToJson;
  Map<String, dynamic> toJson() => _$EmployeeRoleToJson(this);

  @JsonKey(name: 'empId', includeIfNull: false)
  final int? empId;
  @JsonKey(name: 'assuranceNetRoleId', includeIfNull: false)
  final int? assuranceNetRoleId;
  @JsonKey(name: 'workflowRoleId', includeIfNull: false)
  final double? workflowRoleId;
  @JsonKey(name: 'isPrimary', includeIfNull: false)
  final String? isPrimary;
  @JsonKey(name: 'startDate', includeIfNull: false)
  final DateTime? startDate;
  @JsonKey(name: 'endDate', includeIfNull: false)
  final DateTime? endDate;
  @JsonKey(name: 'districtCode', includeIfNull: false)
  final String? districtCode;
  @JsonKey(name: 'assignmentCode', includeIfNull: false)
  final String? assignmentCode;
  @JsonKey(name: 'employeeRoleId', includeIfNull: false)
  final int? employeeRoleId;
  @JsonKey(name: 'regionCode', includeIfNull: false)
  final String? regionCode;
  @JsonKey(name: 'subRegionCode', includeIfNull: false)
  final String? subRegionCode;
  static const fromJsonFactory = _$EmployeeRoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeRole &&
            (identical(other.empId, empId) ||
                const DeepCollectionEquality().equals(other.empId, empId)) &&
            (identical(other.assuranceNetRoleId, assuranceNetRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.assuranceNetRoleId, assuranceNetRoleId)) &&
            (identical(other.workflowRoleId, workflowRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.workflowRoleId, workflowRoleId)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.districtCode, districtCode) ||
                const DeepCollectionEquality()
                    .equals(other.districtCode, districtCode)) &&
            (identical(other.assignmentCode, assignmentCode) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentCode, assignmentCode)) &&
            (identical(other.employeeRoleId, employeeRoleId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeRoleId, employeeRoleId)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.subRegionCode, subRegionCode) ||
                const DeepCollectionEquality()
                    .equals(other.subRegionCode, subRegionCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(empId) ^
      const DeepCollectionEquality().hash(assuranceNetRoleId) ^
      const DeepCollectionEquality().hash(workflowRoleId) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(districtCode) ^
      const DeepCollectionEquality().hash(assignmentCode) ^
      const DeepCollectionEquality().hash(employeeRoleId) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(subRegionCode) ^
      runtimeType.hashCode;
}

extension $EmployeeRoleExtension on EmployeeRole {
  EmployeeRole copyWith(
      {int? empId,
      int? assuranceNetRoleId,
      double? workflowRoleId,
      String? isPrimary,
      DateTime? startDate,
      DateTime? endDate,
      String? districtCode,
      String? assignmentCode,
      int? employeeRoleId,
      String? regionCode,
      String? subRegionCode}) {
    return EmployeeRole(
        empId: empId ?? this.empId,
        assuranceNetRoleId: assuranceNetRoleId ?? this.assuranceNetRoleId,
        workflowRoleId: workflowRoleId ?? this.workflowRoleId,
        isPrimary: isPrimary ?? this.isPrimary,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        districtCode: districtCode ?? this.districtCode,
        assignmentCode: assignmentCode ?? this.assignmentCode,
        employeeRoleId: employeeRoleId ?? this.employeeRoleId,
        regionCode: regionCode ?? this.regionCode,
        subRegionCode: subRegionCode ?? this.subRegionCode);
  }

  EmployeeRole copyWithWrapped(
      {Wrapped<int?>? empId,
      Wrapped<int?>? assuranceNetRoleId,
      Wrapped<double?>? workflowRoleId,
      Wrapped<String?>? isPrimary,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<String?>? districtCode,
      Wrapped<String?>? assignmentCode,
      Wrapped<int?>? employeeRoleId,
      Wrapped<String?>? regionCode,
      Wrapped<String?>? subRegionCode}) {
    return EmployeeRole(
        empId: (empId != null ? empId.value : this.empId),
        assuranceNetRoleId: (assuranceNetRoleId != null
            ? assuranceNetRoleId.value
            : this.assuranceNetRoleId),
        workflowRoleId: (workflowRoleId != null
            ? workflowRoleId.value
            : this.workflowRoleId),
        isPrimary: (isPrimary != null ? isPrimary.value : this.isPrimary),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        districtCode:
            (districtCode != null ? districtCode.value : this.districtCode),
        assignmentCode: (assignmentCode != null
            ? assignmentCode.value
            : this.assignmentCode),
        employeeRoleId: (employeeRoleId != null
            ? employeeRoleId.value
            : this.employeeRoleId),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode),
        subRegionCode:
            (subRegionCode != null ? subRegionCode.value : this.subRegionCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelPageEmployeeRole {
  const ModelPageEmployeeRole({
    this.records,
    this.page,
    this.count,
    this.totalPages,
    this.totalRecords,
  });

  factory ModelPageEmployeeRole.fromJson(Map<String, dynamic> json) =>
      _$ModelPageEmployeeRoleFromJson(json);

  static const toJsonFactory = _$ModelPageEmployeeRoleToJson;
  Map<String, dynamic> toJson() => _$ModelPageEmployeeRoleToJson(this);

  @JsonKey(
      name: 'records', includeIfNull: false, defaultValue: <EmployeeRole>[])
  final List<EmployeeRole>? records;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'count', includeIfNull: false)
  final int? count;
  @JsonKey(name: 'totalPages', includeIfNull: false)
  final int? totalPages;
  @JsonKey(name: 'totalRecords', includeIfNull: false)
  final int? totalRecords;
  static const fromJsonFactory = _$ModelPageEmployeeRoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelPageEmployeeRole &&
            (identical(other.records, records) ||
                const DeepCollectionEquality()
                    .equals(other.records, records)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalRecords, totalRecords) ||
                const DeepCollectionEquality()
                    .equals(other.totalRecords, totalRecords)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(records) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalRecords) ^
      runtimeType.hashCode;
}

extension $ModelPageEmployeeRoleExtension on ModelPageEmployeeRole {
  ModelPageEmployeeRole copyWith(
      {List<EmployeeRole>? records,
      int? page,
      int? count,
      int? totalPages,
      int? totalRecords}) {
    return ModelPageEmployeeRole(
        records: records ?? this.records,
        page: page ?? this.page,
        count: count ?? this.count,
        totalPages: totalPages ?? this.totalPages,
        totalRecords: totalRecords ?? this.totalRecords);
  }

  ModelPageEmployeeRole copyWithWrapped(
      {Wrapped<List<EmployeeRole>?>? records,
      Wrapped<int?>? page,
      Wrapped<int?>? count,
      Wrapped<int?>? totalPages,
      Wrapped<int?>? totalRecords}) {
    return ModelPageEmployeeRole(
        records: (records != null ? records.value : this.records),
        page: (page != null ? page.value : this.page),
        count: (count != null ? count.value : this.count),
        totalPages: (totalPages != null ? totalPages.value : this.totalPages),
        totalRecords:
            (totalRecords != null ? totalRecords.value : this.totalRecords));
  }
}

@JsonSerializable(explicitToJson: true)
class State {
  const State({
    this.fullName,
    this.shortName,
  });

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

  static const toJsonFactory = _$StateToJson;
  Map<String, dynamic> toJson() => _$StateToJson(this);

  @JsonKey(name: 'fullName', includeIfNull: false)
  final String? fullName;
  @JsonKey(name: 'shortName', includeIfNull: false)
  final String? shortName;
  static const fromJsonFactory = _$StateFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is State &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(shortName) ^
      runtimeType.hashCode;
}

extension $StateExtension on State {
  State copyWith({String? fullName, String? shortName}) {
    return State(
        fullName: fullName ?? this.fullName,
        shortName: shortName ?? this.shortName);
  }

  State copyWithWrapped(
      {Wrapped<String?>? fullName, Wrapped<String?>? shortName}) {
    return State(
        fullName: (fullName != null ? fullName.value : this.fullName),
        shortName: (shortName != null ? shortName.value : this.shortName));
  }
}

@JsonSerializable(explicitToJson: true)
class DropdownElement {
  const DropdownElement({
    this.code,
    this.label,
    this.description,
    this.sequence,
    this.elementDomain,
    this.moduleName,
    this.active,
  });

  factory DropdownElement.fromJson(Map<String, dynamic> json) =>
      _$DropdownElementFromJson(json);

  static const toJsonFactory = _$DropdownElementToJson;
  Map<String, dynamic> toJson() => _$DropdownElementToJson(this);

  @JsonKey(name: 'code', includeIfNull: false)
  final String? code;
  @JsonKey(name: 'label', includeIfNull: false)
  final String? label;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'sequence', includeIfNull: false)
  final int? sequence;
  @JsonKey(name: 'elementDomain', includeIfNull: false)
  final String? elementDomain;
  @JsonKey(name: 'moduleName', includeIfNull: false)
  final String? moduleName;
  @JsonKey(name: 'active', includeIfNull: false)
  final bool? active;
  static const fromJsonFactory = _$DropdownElementFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DropdownElement &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.sequence, sequence) ||
                const DeepCollectionEquality()
                    .equals(other.sequence, sequence)) &&
            (identical(other.elementDomain, elementDomain) ||
                const DeepCollectionEquality()
                    .equals(other.elementDomain, elementDomain)) &&
            (identical(other.moduleName, moduleName) ||
                const DeepCollectionEquality()
                    .equals(other.moduleName, moduleName)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(sequence) ^
      const DeepCollectionEquality().hash(elementDomain) ^
      const DeepCollectionEquality().hash(moduleName) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $DropdownElementExtension on DropdownElement {
  DropdownElement copyWith(
      {String? code,
      String? label,
      String? description,
      int? sequence,
      String? elementDomain,
      String? moduleName,
      bool? active}) {
    return DropdownElement(
        code: code ?? this.code,
        label: label ?? this.label,
        description: description ?? this.description,
        sequence: sequence ?? this.sequence,
        elementDomain: elementDomain ?? this.elementDomain,
        moduleName: moduleName ?? this.moduleName,
        active: active ?? this.active);
  }

  DropdownElement copyWithWrapped(
      {Wrapped<String?>? code,
      Wrapped<String?>? label,
      Wrapped<String?>? description,
      Wrapped<int?>? sequence,
      Wrapped<String?>? elementDomain,
      Wrapped<String?>? moduleName,
      Wrapped<bool?>? active}) {
    return DropdownElement(
        code: (code != null ? code.value : this.code),
        label: (label != null ? label.value : this.label),
        description:
            (description != null ? description.value : this.description),
        sequence: (sequence != null ? sequence.value : this.sequence),
        elementDomain:
            (elementDomain != null ? elementDomain.value : this.elementDomain),
        moduleName: (moduleName != null ? moduleName.value : this.moduleName),
        active: (active != null ? active.value : this.active));
  }
}

@JsonSerializable(explicitToJson: true)
class RegionalGrouping {
  const RegionalGrouping({
    this.id,
    this.subRegionName,
    this.subRegionCode,
    this.assignmentName,
    this.assignmentCode,
    this.regionName,
    this.regionCode,
  });

  factory RegionalGrouping.fromJson(Map<String, dynamic> json) =>
      _$RegionalGroupingFromJson(json);

  static const toJsonFactory = _$RegionalGroupingToJson;
  Map<String, dynamic> toJson() => _$RegionalGroupingToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final int? id;
  @JsonKey(name: 'subRegionName', includeIfNull: false)
  final String? subRegionName;
  @JsonKey(name: 'subRegionCode', includeIfNull: false)
  final String? subRegionCode;
  @JsonKey(name: 'assignmentName', includeIfNull: false)
  final String? assignmentName;
  @JsonKey(name: 'assignmentCode', includeIfNull: false)
  final String? assignmentCode;
  @JsonKey(name: 'regionName', includeIfNull: false)
  final String? regionName;
  @JsonKey(name: 'regionCode', includeIfNull: false)
  final String? regionCode;
  static const fromJsonFactory = _$RegionalGroupingFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegionalGrouping &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.subRegionName, subRegionName) ||
                const DeepCollectionEquality()
                    .equals(other.subRegionName, subRegionName)) &&
            (identical(other.subRegionCode, subRegionCode) ||
                const DeepCollectionEquality()
                    .equals(other.subRegionCode, subRegionCode)) &&
            (identical(other.assignmentName, assignmentName) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentName, assignmentName)) &&
            (identical(other.assignmentCode, assignmentCode) ||
                const DeepCollectionEquality()
                    .equals(other.assignmentCode, assignmentCode)) &&
            (identical(other.regionName, regionName) ||
                const DeepCollectionEquality()
                    .equals(other.regionName, regionName)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(subRegionName) ^
      const DeepCollectionEquality().hash(subRegionCode) ^
      const DeepCollectionEquality().hash(assignmentName) ^
      const DeepCollectionEquality().hash(assignmentCode) ^
      const DeepCollectionEquality().hash(regionName) ^
      const DeepCollectionEquality().hash(regionCode) ^
      runtimeType.hashCode;
}

extension $RegionalGroupingExtension on RegionalGrouping {
  RegionalGrouping copyWith(
      {int? id,
      String? subRegionName,
      String? subRegionCode,
      String? assignmentName,
      String? assignmentCode,
      String? regionName,
      String? regionCode}) {
    return RegionalGrouping(
        id: id ?? this.id,
        subRegionName: subRegionName ?? this.subRegionName,
        subRegionCode: subRegionCode ?? this.subRegionCode,
        assignmentName: assignmentName ?? this.assignmentName,
        assignmentCode: assignmentCode ?? this.assignmentCode,
        regionName: regionName ?? this.regionName,
        regionCode: regionCode ?? this.regionCode);
  }

  RegionalGrouping copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String?>? subRegionName,
      Wrapped<String?>? subRegionCode,
      Wrapped<String?>? assignmentName,
      Wrapped<String?>? assignmentCode,
      Wrapped<String?>? regionName,
      Wrapped<String?>? regionCode}) {
    return RegionalGrouping(
        id: (id != null ? id.value : this.id),
        subRegionName:
            (subRegionName != null ? subRegionName.value : this.subRegionName),
        subRegionCode:
            (subRegionCode != null ? subRegionCode.value : this.subRegionCode),
        assignmentName: (assignmentName != null
            ? assignmentName.value
            : this.assignmentName),
        assignmentCode: (assignmentCode != null
            ? assignmentCode.value
            : this.assignmentCode),
        regionName: (regionName != null ? regionName.value : this.regionName),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode));
  }
}

@JsonSerializable(explicitToJson: true)
class FollowUpDateDTO {
  const FollowUpDateDTO({
    this.label,
    this.value,
  });

  factory FollowUpDateDTO.fromJson(Map<String, dynamic> json) =>
      _$FollowUpDateDTOFromJson(json);

  static const toJsonFactory = _$FollowUpDateDTOToJson;
  Map<String, dynamic> toJson() => _$FollowUpDateDTOToJson(this);

  @JsonKey(name: 'label', includeIfNull: false)
  final String? label;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$FollowUpDateDTOFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FollowUpDateDTO &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $FollowUpDateDTOExtension on FollowUpDateDTO {
  FollowUpDateDTO copyWith({String? label, String? value}) {
    return FollowUpDateDTO(
        label: label ?? this.label, value: value ?? this.value);
  }

  FollowUpDateDTO copyWithWrapped(
      {Wrapped<String?>? label, Wrapped<String?>? value}) {
    return FollowUpDateDTO(
        label: (label != null ? label.value : this.label),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class StateCounty {
  const StateCounty({
    this.state,
    this.county,
    this.assignCode,
    this.regionCode,
    this.fipsCode,
  });

  factory StateCounty.fromJson(Map<String, dynamic> json) =>
      _$StateCountyFromJson(json);

  static const toJsonFactory = _$StateCountyToJson;
  Map<String, dynamic> toJson() => _$StateCountyToJson(this);

  @JsonKey(name: 'state', includeIfNull: false)
  final String? state;
  @JsonKey(name: 'county', includeIfNull: false)
  final String? county;
  @JsonKey(name: 'assignCode', includeIfNull: false)
  final String? assignCode;
  @JsonKey(name: 'regionCode', includeIfNull: false)
  final String? regionCode;
  @JsonKey(name: 'fipsCode', includeIfNull: false)
  final int? fipsCode;
  static const fromJsonFactory = _$StateCountyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateCounty &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.county, county) ||
                const DeepCollectionEquality().equals(other.county, county)) &&
            (identical(other.assignCode, assignCode) ||
                const DeepCollectionEquality()
                    .equals(other.assignCode, assignCode)) &&
            (identical(other.regionCode, regionCode) ||
                const DeepCollectionEquality()
                    .equals(other.regionCode, regionCode)) &&
            (identical(other.fipsCode, fipsCode) ||
                const DeepCollectionEquality()
                    .equals(other.fipsCode, fipsCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(county) ^
      const DeepCollectionEquality().hash(assignCode) ^
      const DeepCollectionEquality().hash(regionCode) ^
      const DeepCollectionEquality().hash(fipsCode) ^
      runtimeType.hashCode;
}

extension $StateCountyExtension on StateCounty {
  StateCounty copyWith(
      {String? state,
      String? county,
      String? assignCode,
      String? regionCode,
      int? fipsCode}) {
    return StateCounty(
        state: state ?? this.state,
        county: county ?? this.county,
        assignCode: assignCode ?? this.assignCode,
        regionCode: regionCode ?? this.regionCode,
        fipsCode: fipsCode ?? this.fipsCode);
  }

  StateCounty copyWithWrapped(
      {Wrapped<String?>? state,
      Wrapped<String?>? county,
      Wrapped<String?>? assignCode,
      Wrapped<String?>? regionCode,
      Wrapped<int?>? fipsCode}) {
    return StateCounty(
        state: (state != null ? state.value : this.state),
        county: (county != null ? county.value : this.county),
        assignCode: (assignCode != null ? assignCode.value : this.assignCode),
        regionCode: (regionCode != null ? regionCode.value : this.regionCode),
        fipsCode: (fipsCode != null ? fipsCode.value : this.fipsCode));
  }
}

@JsonSerializable(explicitToJson: true)
class Country {
  const Country({
    this.shortName,
    this.full,
  });

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  static const toJsonFactory = _$CountryToJson;
  Map<String, dynamic> toJson() => _$CountryToJson(this);

  @JsonKey(name: 'shortName', includeIfNull: false)
  final String? shortName;
  @JsonKey(name: 'full', includeIfNull: false)
  final String? full;
  static const fromJsonFactory = _$CountryFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Country &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.full, full) ||
                const DeepCollectionEquality().equals(other.full, full)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(full) ^
      runtimeType.hashCode;
}

extension $CountryExtension on Country {
  Country copyWith({String? shortName, String? full}) {
    return Country(
        shortName: shortName ?? this.shortName, full: full ?? this.full);
  }

  Country copyWithWrapped(
      {Wrapped<String?>? shortName, Wrapped<String?>? full}) {
    return Country(
        shortName: (shortName != null ? shortName.value : this.shortName),
        full: (full != null ? full.value : this.full));
  }
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
