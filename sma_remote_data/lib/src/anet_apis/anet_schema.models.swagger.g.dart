// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anet_schema.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Surveillance _$SurveillanceFromJson(Map<String, dynamic> json) => Surveillance(
      surveillanceId: json['surveillanceId'] as int?,
      firmID: json['firmID'] as int?,
      datePerf: json['datePerf'] == null
          ? null
          : DateTime.parse(json['datePerf'] as String),
      meatCheck: json['meatCheck'] as String?,
      poultryCheck: json['poultryCheck'] as String?,
      eggCheck: json['eggCheck'] as String?,
      shellEggCheck: json['shellEggCheck'] as String?,
      siluriformesFishCheck: json['siluriformesFishCheck'] as String?,
      nonAmenableCheck: json['nonAmenableCheck'] as String?,
      sampleType: json['sampleType'] as String?,
      sampleResult: json['sampleResult'] as String?,
      followUpDate: json['followUpDate'] as String?,
      followUpReason: json['followUpReason'] as String?,
      firmRepresentative1: json['firmRepresentative1'] as String?,
      firmRepresentativeTitle1: json['firmRepresentativeTitle1'] as String?,
      firmRepresentative2: json['firmRepresentative2'] as String?,
      firmRepresentativeTitle2: json['firmRepresentativeTitle2'] as String?,
      freqNum: json['freqNum'] as String?,
      pestCompany: json['pestCompany'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      createdEmpId: json['createdEmpId'] as int?,
      lastModDate: json['lastModDate'] == null
          ? null
          : DateTime.parse(json['lastModDate'] as String),
      lastModEmpId: json['lastModEmpId'] as int?,
      supervisorReviewed: json['supervisorReviewed'] as String?,
      foodDefensePlan: json['foodDefensePlan'] as String?,
      emergencyContactInfo: json['emergencyContactInfo'] as String?,
      outsideSurveillanceSystem: json['outsideSurveillanceSystem'] as String?,
      insideSurveillanceSystem: json['insideSurveillanceSystem'] as String?,
      proceduresForAuthorizedPersons:
          json['proceduresForAuthorizedPersons'] as String?,
      storageProceduresForHazardousMaterials:
          json['storageProceduresForHazardousMaterials'] as String?,
      proceduresToProtectFood: json['proceduresToProtectFood'] as String?,
      shippingReceivingAreasRestricted:
          json['shippingReceivingAreasRestricted'] as String?,
      incomingShippingDocuments: json['incomingShippingDocuments'] as String?,
      freeFromTampering: json['freeFromTampering'] as String?,
      productsWholesome: json['productsWholesome'] as String?,
      sanitaryConditionsGood: json['sanitaryConditionsGood'] as String?,
      hazardousControlsAdequate: json['hazardousControlsAdequate'] as String?,
      nonHumanFoodDenatured: json['nonHumanFoodDenatured'] as String?,
      recordsMaintained: json['recordsMaintained'] as String?,
      productsNotMisbranded: json['productsNotMisbranded'] as String?,
      complianceWithTermsAndConditions:
          json['complianceWithTermsAndConditions'] as String?,
      checkForFederalImportInspection:
          json['checkForFederalImportInspection'] as String?,
      correctDocumentsRequested: json['correctDocumentsRequested'] as String?,
      checkForShippingMark: json['checkForShippingMark'] as String?,
      phisVerifyForeignCountries: json['phisVerifyForeignCountries'] as String?,
      phisVerifyForeignEstablishmentsEligible:
          json['phisVerifyForeignEstablishmentsEligible'] as String?,
      phisVerifyFSISInspection: json['phisVerifyFSISInspection'] as String?,
      sampleTaken: json['sampleTaken'] as String?,
      sampleFromPreviousSample: json['sampleFromPreviousSample'] as String?,
      ecoliSampleTaken: json['ecoliSampleTaken'] as String?,
      didDetentionOccur: json['didDetentionOccur'] as String?,
      securityVulnerabilitiesDiscussed:
          json['securityVulnerabilitiesDiscussed'] as String?,
      form5420Provided: json['form5420Provided'] as String?,
      followUpRequired: json['followUpRequired'] as String?,
      followUpFromPrevious: json['followUpFromPrevious'] as String?,
      investigatorMetWithRepresentative:
          json['investigatorMetWithRepresentative'] as String?,
      pestControlVisits: json['pestControlVisits'] as String?,
      followUpCompleted: json['followUpCompleted'] as String?,
      followUpCompletedDate: json['followUpCompletedDate'] == null
          ? null
          : DateTime.parse(json['followUpCompletedDate'] as String),
      phisVerifyForeignEstablishments:
          json['phisVerifyForeignEstablishments'] as String?,
      procedureForProductTampering:
          json['procedureForProductTampering'] as String?,
      followUpDeadlineDate: json['followUpDeadlineDate'] == null
          ? null
          : DateTime.parse(json['followUpDeadlineDate'] as String),
      createdEmpName: json['createdEmpName'] as String?,
      firmNameAtTimeOfAction: json['firmNameAtTimeOfAction'] as String?,
      lockEmpId: json['lockEmpId'] as int?,
      workflowId: (json['workflowId'] as num?)?.toDouble(),
      workflowStateId: (json['workflowStateId'] as num?)?.toDouble(),
      office: json['office'] as String?,
      productRecordsAccordingToFoodSafetyActs:
          json['productRecordsAccordingToFoodSafetyActs'] as String?,
      empLocation: json['empLocation'] as String?,
      empSubLocation: json['empSubLocation'] as String?,
      respIndvInComp: json['respIndvInComp'] as String?,
      shellEggTemperature: json['shellEggTemperature'] as String?,
      areShellEggsPropMain: json['areShellEggsPropMain'] as String?,
      hasChangeHistory: json['hasChangeHistory'] as String?,
      handlesImportedProducts: json['handlesImportedProducts'] as String?,
      numMTSamples: json['numMTSamples'] as int?,
      numSplProjInvSamples: json['numSplProjInvSamples'] as int?,
      noSampleTakenInfo: json['noSampleTakenInfo'] as String?,
      firmGrindingRec: json['firmGrindingRec'] as String?,
      reviewerSupv: json['reviewerSupv'] as int?,
      fileAttached: json['fileAttached'] as String?,
      reason: json['reason'] as String?,
      nutritionalLabelingVerify: json['nutritionalLabelingVerify'] as String?,
      didReferSurvFindings: json['didReferSurvFindings'] as String?,
      referralComments: json['referralComments'] as String?,
      invoiceNbr: json['invoiceNbr'] as String?,
      billofLadingNbr: json['billofLadingNbr'] as String?,
      getaPHISPermitNbr: json['getaPHISPermitNbr'] as String?,
      gethTSCode: json['gethTSCode'] as String?,
      customEntryNbr: json['customEntryNbr'] as String?,
      totalCases: json['totalCases'] as int?,
      unitType: json['unitType'] as String?,
      foreignProducerEstNbr: json['foreignProducerEstNbr'] as String?,
      brokerFirmID: json['brokerFirmID'] as int?,
      sampleLabFormNbr: json['sampleLabFormNbr'] as String?,
      detainedDisposition: json['detainedDisposition'] as String?,
      detainedDispositionDet: json['detainedDispositionDet'] as String?,
      recallDisposition: json['recallDisposition'] as String?,
      recallDispositionDet: json['recallDispositionDet'] as String?,
      getfTPInitiatedDate: json['getfTPInitiatedDate'] == null
          ? null
          : DateTime.parse(json['getfTPInitiatedDate'] as String),
      getfTPDisposition: json['getfTPDisposition'] as String?,
      getfTPDispositionDet: json['getfTPDispositionDet'] as String?,
      getoIGInvestigation: json['getoIGInvestigation'] as String?,
      getoIGInvestigationInitiatedBy:
          json['getoIGInvestigationInitiatedBy'] as String?,
      getoIGInvestigationDate: json['getoIGInvestigationDate'] == null
          ? null
          : DateTime.parse(json['getoIGInvestigationDate'] as String),
      retailProject: json['retailProject'] as String?,
      retailProjectOther: json['retailProjectOther'] as String?,
      retailSpecialProject: json['retailSpecialProject'] as String?,
      isNewFormat: json['isNewFormat'] as String?,
      verifyDriverIdentification: json['verifyDriverIdentification'] as String?,
      tier3Retail: json['tier3Retail'] as String?,
      logToIdentify: json['logToIdentify'] as String?,
      importProdObserve: json['importProdObserve'] as bool?,
      phisUsedVerifyProducts: json['phisUsedVerifyProducts'] as String?,
      primaryBusinessTypeAtTimeOfAction:
          json['primaryBusinessTypeAtTimeOfAction'] as String?,
      productVolumeAtTimeOfAction:
          json['productVolumeAtTimeOfAction'] as String?,
      tierAtTimeOfAction: json['tierAtTimeOfAction'] as String?,
      wasFoodDefenseConducted: json['wasFoodDefenseConducted'] as bool?,
      title: json['title'] as String?,
      wereShellEggsObserved: json['wereShellEggsObserved'] as bool?,
      foodDefenseInvestigatorId: json['foodDefenseInvestigatorId'] as int?,
      surveillanceShellEggTemperatures:
          (json['surveillanceShellEggTemperatures'] as List<dynamic>?)
                  ?.map((e) => SurveillanceShellEggTemperature.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
      surveillanceChangeHistories: (json['surveillanceChangeHistories']
                  as List<dynamic>?)
              ?.map((e) =>
                  SurveillanceChangeHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      surveillanceComments: (json['surveillanceComments'] as List<dynamic>?)
              ?.map((e) =>
                  SurveillanceComment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      surveillanceUnlimitedComments:
          (json['surveillanceUnlimitedComments'] as List<dynamic>?)
                  ?.map((e) => SurveillanceUnlimitedComments.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
      surveillanceImpProdCountries:
          (json['surveillanceImpProdCountries'] as List<dynamic>?)
                  ?.map((e) => SurveillanceImpProdCountry.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
      surveillanceQuestions: (json['surveillanceQuestions'] as List<dynamic>?)
              ?.map((e) =>
                  SurveillanceQuestion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      productControls: (json['productControls'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      firmRepresentativeRepTitle1:
          json['firmRepresentativeRepTitle1'] as String?,
      storProceduresHazMat: json['storProceduresHazMat'] as String?,
      maintainingSecurityDuringShip:
          json['maintainingSecurityDuringShip'] as String?,
      empLococation: json['empLococation'] as String?,
    );

Map<String, dynamic> _$SurveillanceToJson(Surveillance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('surveillanceId', instance.surveillanceId);
  writeNotNull('firmID', instance.firmID);
  writeNotNull('datePerf', instance.datePerf?.toIso8601String());
  writeNotNull('meatCheck', instance.meatCheck);
  writeNotNull('poultryCheck', instance.poultryCheck);
  writeNotNull('eggCheck', instance.eggCheck);
  writeNotNull('shellEggCheck', instance.shellEggCheck);
  writeNotNull('siluriformesFishCheck', instance.siluriformesFishCheck);
  writeNotNull('nonAmenableCheck', instance.nonAmenableCheck);
  writeNotNull('sampleType', instance.sampleType);
  writeNotNull('sampleResult', instance.sampleResult);
  writeNotNull('followUpDate', instance.followUpDate);
  writeNotNull('followUpReason', instance.followUpReason);
  writeNotNull('firmRepresentative1', instance.firmRepresentative1);
  writeNotNull('firmRepresentativeTitle1', instance.firmRepresentativeTitle1);
  writeNotNull('firmRepresentative2', instance.firmRepresentative2);
  writeNotNull('firmRepresentativeTitle2', instance.firmRepresentativeTitle2);
  writeNotNull('freqNum', instance.freqNum);
  writeNotNull('pestCompany', instance.pestCompany);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('createdEmpId', instance.createdEmpId);
  writeNotNull('lastModDate', instance.lastModDate?.toIso8601String());
  writeNotNull('lastModEmpId', instance.lastModEmpId);
  writeNotNull('supervisorReviewed', instance.supervisorReviewed);
  writeNotNull('foodDefensePlan', instance.foodDefensePlan);
  writeNotNull('emergencyContactInfo', instance.emergencyContactInfo);
  writeNotNull('outsideSurveillanceSystem', instance.outsideSurveillanceSystem);
  writeNotNull('insideSurveillanceSystem', instance.insideSurveillanceSystem);
  writeNotNull('proceduresForAuthorizedPersons',
      instance.proceduresForAuthorizedPersons);
  writeNotNull('storageProceduresForHazardousMaterials',
      instance.storageProceduresForHazardousMaterials);
  writeNotNull('proceduresToProtectFood', instance.proceduresToProtectFood);
  writeNotNull('shippingReceivingAreasRestricted',
      instance.shippingReceivingAreasRestricted);
  writeNotNull('incomingShippingDocuments', instance.incomingShippingDocuments);
  writeNotNull('freeFromTampering', instance.freeFromTampering);
  writeNotNull('productsWholesome', instance.productsWholesome);
  writeNotNull('sanitaryConditionsGood', instance.sanitaryConditionsGood);
  writeNotNull('hazardousControlsAdequate', instance.hazardousControlsAdequate);
  writeNotNull('nonHumanFoodDenatured', instance.nonHumanFoodDenatured);
  writeNotNull('recordsMaintained', instance.recordsMaintained);
  writeNotNull('productsNotMisbranded', instance.productsNotMisbranded);
  writeNotNull('complianceWithTermsAndConditions',
      instance.complianceWithTermsAndConditions);
  writeNotNull('checkForFederalImportInspection',
      instance.checkForFederalImportInspection);
  writeNotNull('correctDocumentsRequested', instance.correctDocumentsRequested);
  writeNotNull('checkForShippingMark', instance.checkForShippingMark);
  writeNotNull(
      'phisVerifyForeignCountries', instance.phisVerifyForeignCountries);
  writeNotNull('phisVerifyForeignEstablishmentsEligible',
      instance.phisVerifyForeignEstablishmentsEligible);
  writeNotNull('phisVerifyFSISInspection', instance.phisVerifyFSISInspection);
  writeNotNull('sampleTaken', instance.sampleTaken);
  writeNotNull('sampleFromPreviousSample', instance.sampleFromPreviousSample);
  writeNotNull('ecoliSampleTaken', instance.ecoliSampleTaken);
  writeNotNull('didDetentionOccur', instance.didDetentionOccur);
  writeNotNull('securityVulnerabilitiesDiscussed',
      instance.securityVulnerabilitiesDiscussed);
  writeNotNull('form5420Provided', instance.form5420Provided);
  writeNotNull('followUpRequired', instance.followUpRequired);
  writeNotNull('followUpFromPrevious', instance.followUpFromPrevious);
  writeNotNull('investigatorMetWithRepresentative',
      instance.investigatorMetWithRepresentative);
  writeNotNull('pestControlVisits', instance.pestControlVisits);
  writeNotNull('followUpCompleted', instance.followUpCompleted);
  writeNotNull('followUpCompletedDate',
      instance.followUpCompletedDate?.toIso8601String());
  writeNotNull('phisVerifyForeignEstablishments',
      instance.phisVerifyForeignEstablishments);
  writeNotNull(
      'procedureForProductTampering', instance.procedureForProductTampering);
  writeNotNull(
      'followUpDeadlineDate', instance.followUpDeadlineDate?.toIso8601String());
  writeNotNull('createdEmpName', instance.createdEmpName);
  writeNotNull('firmNameAtTimeOfAction', instance.firmNameAtTimeOfAction);
  writeNotNull('lockEmpId', instance.lockEmpId);
  writeNotNull('workflowId', instance.workflowId);
  writeNotNull('workflowStateId', instance.workflowStateId);
  writeNotNull('office', instance.office);
  writeNotNull('productRecordsAccordingToFoodSafetyActs',
      instance.productRecordsAccordingToFoodSafetyActs);
  writeNotNull('empLocation', instance.empLocation);
  writeNotNull('empSubLocation', instance.empSubLocation);
  writeNotNull('respIndvInComp', instance.respIndvInComp);
  writeNotNull('shellEggTemperature', instance.shellEggTemperature);
  writeNotNull('areShellEggsPropMain', instance.areShellEggsPropMain);
  writeNotNull('hasChangeHistory', instance.hasChangeHistory);
  writeNotNull('handlesImportedProducts', instance.handlesImportedProducts);
  writeNotNull('numMTSamples', instance.numMTSamples);
  writeNotNull('numSplProjInvSamples', instance.numSplProjInvSamples);
  writeNotNull('noSampleTakenInfo', instance.noSampleTakenInfo);
  writeNotNull('firmGrindingRec', instance.firmGrindingRec);
  writeNotNull('reviewerSupv', instance.reviewerSupv);
  writeNotNull('fileAttached', instance.fileAttached);
  writeNotNull('reason', instance.reason);
  writeNotNull('nutritionalLabelingVerify', instance.nutritionalLabelingVerify);
  writeNotNull('didReferSurvFindings', instance.didReferSurvFindings);
  writeNotNull('referralComments', instance.referralComments);
  writeNotNull('invoiceNbr', instance.invoiceNbr);
  writeNotNull('billofLadingNbr', instance.billofLadingNbr);
  writeNotNull('getaPHISPermitNbr', instance.getaPHISPermitNbr);
  writeNotNull('gethTSCode', instance.gethTSCode);
  writeNotNull('customEntryNbr', instance.customEntryNbr);
  writeNotNull('totalCases', instance.totalCases);
  writeNotNull('unitType', instance.unitType);
  writeNotNull('foreignProducerEstNbr', instance.foreignProducerEstNbr);
  writeNotNull('brokerFirmID', instance.brokerFirmID);
  writeNotNull('sampleLabFormNbr', instance.sampleLabFormNbr);
  writeNotNull('detainedDisposition', instance.detainedDisposition);
  writeNotNull('detainedDispositionDet', instance.detainedDispositionDet);
  writeNotNull('recallDisposition', instance.recallDisposition);
  writeNotNull('recallDispositionDet', instance.recallDispositionDet);
  writeNotNull(
      'getfTPInitiatedDate', instance.getfTPInitiatedDate?.toIso8601String());
  writeNotNull('getfTPDisposition', instance.getfTPDisposition);
  writeNotNull('getfTPDispositionDet', instance.getfTPDispositionDet);
  writeNotNull('getoIGInvestigation', instance.getoIGInvestigation);
  writeNotNull('getoIGInvestigationInitiatedBy',
      instance.getoIGInvestigationInitiatedBy);
  writeNotNull('getoIGInvestigationDate',
      instance.getoIGInvestigationDate?.toIso8601String());
  writeNotNull('retailProject', instance.retailProject);
  writeNotNull('retailProjectOther', instance.retailProjectOther);
  writeNotNull('retailSpecialProject', instance.retailSpecialProject);
  writeNotNull('isNewFormat', instance.isNewFormat);
  writeNotNull(
      'verifyDriverIdentification', instance.verifyDriverIdentification);
  writeNotNull('tier3Retail', instance.tier3Retail);
  writeNotNull('logToIdentify', instance.logToIdentify);
  writeNotNull('importProdObserve', instance.importProdObserve);
  writeNotNull('phisUsedVerifyProducts', instance.phisUsedVerifyProducts);
  writeNotNull('primaryBusinessTypeAtTimeOfAction',
      instance.primaryBusinessTypeAtTimeOfAction);
  writeNotNull(
      'productVolumeAtTimeOfAction', instance.productVolumeAtTimeOfAction);
  writeNotNull('tierAtTimeOfAction', instance.tierAtTimeOfAction);
  writeNotNull('wasFoodDefenseConducted', instance.wasFoodDefenseConducted);
  writeNotNull('title', instance.title);
  writeNotNull('wereShellEggsObserved', instance.wereShellEggsObserved);
  writeNotNull('foodDefenseInvestigatorId', instance.foodDefenseInvestigatorId);
  writeNotNull(
      'surveillanceShellEggTemperatures',
      instance.surveillanceShellEggTemperatures
          ?.map((e) => e.toJson())
          .toList());
  writeNotNull('surveillanceChangeHistories',
      instance.surveillanceChangeHistories?.map((e) => e.toJson()).toList());
  writeNotNull('surveillanceComments',
      instance.surveillanceComments?.map((e) => e.toJson()).toList());
  writeNotNull('surveillanceUnlimitedComments',
      instance.surveillanceUnlimitedComments?.map((e) => e.toJson()).toList());
  writeNotNull('surveillanceImpProdCountries',
      instance.surveillanceImpProdCountries?.map((e) => e.toJson()).toList());
  writeNotNull('surveillanceQuestions',
      instance.surveillanceQuestions?.map((e) => e.toJson()).toList());
  writeNotNull('productControls', instance.productControls);
  writeNotNull(
      'firmRepresentativeRepTitle1', instance.firmRepresentativeRepTitle1);
  writeNotNull('storProceduresHazMat', instance.storProceduresHazMat);
  writeNotNull(
      'maintainingSecurityDuringShip', instance.maintainingSecurityDuringShip);
  writeNotNull('empLococation', instance.empLococation);
  return val;
}

SurveillanceChangeHistory _$SurveillanceChangeHistoryFromJson(
        Map<String, dynamic> json) =>
    SurveillanceChangeHistory(
      id: json['id'] as int?,
      surveillance: json['surveillance'] == null
          ? null
          : Surveillance.fromJson(json['surveillance'] as Map<String, dynamic>),
      changeDate: json['changeDate'] == null
          ? null
          : DateTime.parse(json['changeDate'] as String),
      changeUserID: json['changeUserID'] as int?,
      changeDesc: json['changeDesc'] as String?,
    );

Map<String, dynamic> _$SurveillanceChangeHistoryToJson(
    SurveillanceChangeHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('surveillance', instance.surveillance?.toJson());
  writeNotNull('changeDate', instance.changeDate?.toIso8601String());
  writeNotNull('changeUserID', instance.changeUserID);
  writeNotNull('changeDesc', instance.changeDesc);
  return val;
}

SurveillanceComment _$SurveillanceCommentFromJson(Map<String, dynamic> json) =>
    SurveillanceComment(
      id: json['id'] as int?,
      surveillance: json['surveillance'] == null
          ? null
          : Surveillance.fromJson(json['surveillance'] as Map<String, dynamic>),
      commentsType: json['commentsType'] as String?,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$SurveillanceCommentToJson(SurveillanceComment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('surveillance', instance.surveillance?.toJson());
  writeNotNull('commentsType', instance.commentsType);
  writeNotNull('comments', instance.comments);
  return val;
}

SurveillanceImpProdCountry _$SurveillanceImpProdCountryFromJson(
        Map<String, dynamic> json) =>
    SurveillanceImpProdCountry(
      surveillance: json['surveillance'] == null
          ? null
          : Surveillance.fromJson(json['surveillance'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$SurveillanceImpProdCountryToJson(
    SurveillanceImpProdCountry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('surveillance', instance.surveillance?.toJson());
  writeNotNull('countryCode', instance.countryCode);
  return val;
}

SurveillanceQuestion _$SurveillanceQuestionFromJson(
        Map<String, dynamic> json) =>
    SurveillanceQuestion(
      id: json['id'] as int?,
      surveillance: json['surveillance'] == null
          ? null
          : Surveillance.fromJson(json['surveillance'] as Map<String, dynamic>),
      answer: json['answer'] as String?,
      questionLabel: json['questionLabel'] as String?,
      questionSeqNum: json['questionSeqNum'] as int?,
      headerType: json['headerType'] as String?,
      comments: json['comments'] as String?,
      headerLabel: json['headerLabel'] as String?,
      headerSeqNum: json['headerSeqNum'] as int?,
    );

Map<String, dynamic> _$SurveillanceQuestionToJson(
    SurveillanceQuestion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('surveillance', instance.surveillance?.toJson());
  writeNotNull('answer', instance.answer);
  writeNotNull('questionLabel', instance.questionLabel);
  writeNotNull('questionSeqNum', instance.questionSeqNum);
  writeNotNull('headerType', instance.headerType);
  writeNotNull('comments', instance.comments);
  writeNotNull('headerLabel', instance.headerLabel);
  writeNotNull('headerSeqNum', instance.headerSeqNum);
  return val;
}

SurveillanceShellEggTemperature _$SurveillanceShellEggTemperatureFromJson(
        Map<String, dynamic> json) =>
    SurveillanceShellEggTemperature(
      id: json['id'] as int?,
      surveillance: json['surveillance'] == null
          ? null
          : Surveillance.fromJson(json['surveillance'] as Map<String, dynamic>),
      storageType: json['storageType'] as String?,
      alias: json['alias'] as String?,
      temperature1: (json['temperature1'] as num?)?.toDouble(),
      temperature2: (json['temperature2'] as num?)?.toDouble(),
      temperature3: (json['temperature3'] as num?)?.toDouble(),
      temperature4: (json['temperature4'] as num?)?.toDouble(),
      temperature5: (json['temperature5'] as num?)?.toDouble(),
      avgTemperature: (json['avgTemperature'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SurveillanceShellEggTemperatureToJson(
    SurveillanceShellEggTemperature instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('surveillance', instance.surveillance?.toJson());
  writeNotNull('storageType', instance.storageType);
  writeNotNull('alias', instance.alias);
  writeNotNull('temperature1', instance.temperature1);
  writeNotNull('temperature2', instance.temperature2);
  writeNotNull('temperature3', instance.temperature3);
  writeNotNull('temperature4', instance.temperature4);
  writeNotNull('temperature5', instance.temperature5);
  writeNotNull('avgTemperature', instance.avgTemperature);
  return val;
}

SurveillanceUnlimitedComments _$SurveillanceUnlimitedCommentsFromJson(
        Map<String, dynamic> json) =>
    SurveillanceUnlimitedComments(
      id: json['id'] as int?,
      surveillance: json['surveillance'] == null
          ? null
          : Surveillance.fromJson(json['surveillance'] as Map<String, dynamic>),
      commentsType: json['commentsType'] as String?,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$SurveillanceUnlimitedCommentsToJson(
    SurveillanceUnlimitedComments instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('surveillance', instance.surveillance?.toJson());
  writeNotNull('commentsType', instance.commentsType);
  writeNotNull('comments', instance.comments);
  return val;
}

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) => ContactInfo(
      contactInfoId: json['contactInfoId'] as int?,
      contactName: json['contactName'] as String?,
      contactTitle: json['contactTitle'] as String?,
      contactPhoneNum: json['contactPhoneNum'] as String?,
      contactPhoneNumExtn: json['contactPhoneNumExtn'] as String?,
      contactMobileNum: json['contactMobileNum'] as String?,
      receiveTextMessage: json['receiveTextMessage'] as String?,
      contactFaxNum: json['contactFaxNum'] as String?,
      contactEmail: json['contactEmail'] as String?,
    );

Map<String, dynamic> _$ContactInfoToJson(ContactInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contactInfoId', instance.contactInfoId);
  writeNotNull('contactName', instance.contactName);
  writeNotNull('contactTitle', instance.contactTitle);
  writeNotNull('contactPhoneNum', instance.contactPhoneNum);
  writeNotNull('contactPhoneNumExtn', instance.contactPhoneNumExtn);
  writeNotNull('contactMobileNum', instance.contactMobileNum);
  writeNotNull('receiveTextMessage', instance.receiveTextMessage);
  writeNotNull('contactFaxNum', instance.contactFaxNum);
  writeNotNull('contactEmail', instance.contactEmail);
  return val;
}

FirmChangeHistory _$FirmChangeHistoryFromJson(Map<String, dynamic> json) =>
    FirmChangeHistory(
      changeRecId: json['changeRecId'] as int?,
      firm: json['firm'] == null
          ? null
          : FirmInfo.fromJson(json['firm'] as Map<String, dynamic>),
      changeUserId: json['changeUserId'] as int?,
      changeDate: json['changeDate'] == null
          ? null
          : DateTime.parse(json['changeDate'] as String),
      changeDesc: json['changeDesc'] as String?,
      changeReason: json['changeReason'] as String?,
    );

Map<String, dynamic> _$FirmChangeHistoryToJson(FirmChangeHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('changeRecId', instance.changeRecId);
  writeNotNull('firm', instance.firm?.toJson());
  writeNotNull('changeUserId', instance.changeUserId);
  writeNotNull('changeDate', instance.changeDate?.toIso8601String());
  writeNotNull('changeDesc', instance.changeDesc);
  writeNotNull('changeReason', instance.changeReason);
  return val;
}

FirmComments _$FirmCommentsFromJson(Map<String, dynamic> json) => FirmComments(
      commentsId: json['commentsId'] as int?,
      firm: json['firm'] == null
          ? null
          : FirmInfo.fromJson(json['firm'] as Map<String, dynamic>),
      commentType: json['commentType'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$FirmCommentsToJson(FirmComments instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('commentsId', instance.commentsId);
  writeNotNull('firm', instance.firm?.toJson());
  writeNotNull('commentType', instance.commentType);
  writeNotNull('text', instance.text);
  return val;
}

FirmInfo _$FirmInfoFromJson(Map<String, dynamic> json) => FirmInfo(
      firmId: json['firmId'] as int?,
      name: json['name'] as String?,
      doingBusAs: json['doingBusAs'] as String?,
      alsoKnownAs: json['alsoKnownAs'] as String?,
      prevName: json['prevName'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      county: json['county'] as String?,
      isMailEqlFirm: json['isMailEqlFirm'] as String?,
      mailAddress1: json['mailAddress1'] as String?,
      mailAddress2: json['mailAddress2'] as String?,
      mailCity: json['mailCity'] as String?,
      mailState: json['mailState'] as String?,
      mailZipCode: json['mailZipCode'] as String?,
      mailCounty: json['mailCounty'] as String?,
      estNum: json['estNum'] as String?,
      risk: json['risk'] as String?,
      regionCode: json['regionCode'] as String?,
      subRegionCode: json['subRegionCode'] as String?,
      assignCode: json['assignCode'] as String?,
      numFloors: json['numFloors'] as String?,
      apxSqFoot: json['apxSqFoot'] as String?,
      apxNumEmployees: json['apxNumEmployees'] as String?,
      isFormAttached: json['isFormAttached'] as String?,
      primaryBusType: json['primaryBusType'] as String?,
      secondaryBusType: json['secondaryBusType'] as String?,
      tertiaryBusType: json['tertiaryBusType'] as String?,
      businessActivities: json['businessActivities'] as String?,
      monOpenTime: json['monOpenTime'] as String?,
      monCloseTime: json['monCloseTime'] as String?,
      isMonClosed: json['isMonClosed'] as String?,
      tueOpenTime: json['tueOpenTime'] as String?,
      tueCloseTime: json['tueCloseTime'] as String?,
      isTueClosed: json['isTueClosed'] as String?,
      wedOpenTime: json['wedOpenTime'] as String?,
      wedCloseTime: json['wedCloseTime'] as String?,
      isWedClosed: json['isWedClosed'] as String?,
      thuOpenTime: json['thuOpenTime'] as String?,
      thuCloseTime: json['thuCloseTime'] as String?,
      isThuClosed: json['isThuClosed'] as String?,
      friOpenTime: json['friOpenTime'] as String?,
      friCloseTime: json['friCloseTime'] as String?,
      isFriClosed: json['isFriClosed'] as String?,
      satOpenTime: json['satOpenTime'] as String?,
      satCloseTime: json['satCloseTime'] as String?,
      isSatClosed: json['isSatClosed'] as String?,
      sunOpenTime: json['sunOpenTime'] as String?,
      sunCloseTime: json['sunCloseTime'] as String?,
      isSunClosed: json['isSunClosed'] as String?,
      dateOwnerChanged: json['dateOwnerChanged'] == null
          ? null
          : DateTime.parse(json['dateOwnerChanged'] as String),
      countryOrigin: json['countryOrigin'] as String?,
      firstManSameAsOwner: json['firstManSameAsOwner'] as bool?,
      orgSameAsFirmName: json['orgSameAsFirmName'] as bool?,
      orgSameAsPhysicalAddress: json['orgSameAsPhysicalAddress'] as bool?,
      orgSameAsMailAddress: json['orgSameAsMailAddress'] as bool?,
      orgName: json['orgName'] as String?,
      orgType: json['orgType'] as String?,
      orgAddress1: json['orgAddress1'] as String?,
      orgAddress2: json['orgAddress2'] as String?,
      orgCity: json['orgCity'] as String?,
      orgState: json['orgState'] as String?,
      orgZipCode: json['orgZipCode'] as String?,
      orgCounty: json['orgCounty'] as String?,
      isMeatHandled: json['isMeatHandled'] as String?,
      isPoultryHandled: json['isPoultryHandled'] as String?,
      isEggsHandled: json['isEggsHandled'] as String?,
      isSiluriformesFishHandled: json['isSiluriformesFishHandled'] as String?,
      isOtherHandled: json['isOtherHandled'] as String?,
      otherProduct: json['otherProduct'] as String?,
      isDomestic: json['isDomestic'] as String?,
      isImported: json['isImported'] as String?,
      volumeProduct: json['volumeProduct'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      createdEmpId: json['createdEmpId'] as int?,
      lastModDate: json['lastModDate'] == null
          ? null
          : DateTime.parse(json['lastModDate'] as String),
      lastModEmpId: json['lastModEmpId'] as int?,
      contactRegionalOffice: json['contactRegionalOffice'] as String?,
      contactRegionalOfficeComment:
          json['contactRegionalOfficeComment'] as String?,
      workflowStateId: json['workflowStateId'] as int?,
      workflowRecordId: json['workflowRecordId'] as int?,
      isOrderPermanent: json['isOrderPermanent'] as String?,
      isDeleteFirmReq: json['isDeleteFirmReq'] as String?,
      isEnergySource: json['isEnergySource'] as String?,
      exprOrderDate: json['exprOrderDate'] == null
          ? null
          : DateTime.parse(json['exprOrderDate'] as String),
      lastSurvDate: json['lastSurvDate'] == null
          ? null
          : DateTime.parse(json['lastSurvDate'] as String),
      isOpenInv: json['isOpenInv'] as String?,
      hasChangeHistory: json['hasChangeHistory'] as String?,
      fileAttached: json['fileAttached'] as String?,
      complianceAttached: json['complianceAttached'] as String?,
      firmPrevOwnerships: (json['firmPrevOwnerships'] as List<dynamic>?)
              ?.map(
                  (e) => FirmPrevOwnership.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      firmComments: (json['firmComments'] as List<dynamic>?)
              ?.map((e) => FirmComments.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      firmChangeHistory: (json['firmChangeHistory'] as List<dynamic>?)
              ?.map(
                  (e) => FirmChangeHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      firmInfoCountries: (json['firmInfoCountries'] as List<dynamic>?)
              ?.map(
                  (e) => FirmInfoCountries.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pestControlHistory: (json['pestControlHistory'] as List<dynamic>?)
              ?.map((e) =>
                  FirmPestControlHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      firmRegistrationInfo: json['firmRegistrationInfo'] == null
          ? null
          : FirmRegistrationInfo.fromJson(
              json['firmRegistrationInfo'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : ContactInfo.fromJson(json['owner'] as Map<String, dynamic>),
      firstManager: json['firstManager'] == null
          ? null
          : ContactInfo.fromJson(json['firstManager'] as Map<String, dynamic>),
      secondManager: json['secondManager'] == null
          ? null
          : ContactInfo.fromJson(json['secondManager'] as Map<String, dynamic>),
      pestControl: json['pestControl'] == null
          ? null
          : PestControl.fromJson(json['pestControl'] as Map<String, dynamic>),
      associatedFirmLinks: (json['associatedFirmLinks'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$FirmInfoToJson(FirmInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firmId', instance.firmId);
  writeNotNull('name', instance.name);
  writeNotNull('doingBusAs', instance.doingBusAs);
  writeNotNull('alsoKnownAs', instance.alsoKnownAs);
  writeNotNull('prevName', instance.prevName);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('county', instance.county);
  writeNotNull('isMailEqlFirm', instance.isMailEqlFirm);
  writeNotNull('mailAddress1', instance.mailAddress1);
  writeNotNull('mailAddress2', instance.mailAddress2);
  writeNotNull('mailCity', instance.mailCity);
  writeNotNull('mailState', instance.mailState);
  writeNotNull('mailZipCode', instance.mailZipCode);
  writeNotNull('mailCounty', instance.mailCounty);
  writeNotNull('estNum', instance.estNum);
  writeNotNull('risk', instance.risk);
  writeNotNull('regionCode', instance.regionCode);
  writeNotNull('subRegionCode', instance.subRegionCode);
  writeNotNull('assignCode', instance.assignCode);
  writeNotNull('numFloors', instance.numFloors);
  writeNotNull('apxSqFoot', instance.apxSqFoot);
  writeNotNull('apxNumEmployees', instance.apxNumEmployees);
  writeNotNull('isFormAttached', instance.isFormAttached);
  writeNotNull('primaryBusType', instance.primaryBusType);
  writeNotNull('secondaryBusType', instance.secondaryBusType);
  writeNotNull('tertiaryBusType', instance.tertiaryBusType);
  writeNotNull('businessActivities', instance.businessActivities);
  writeNotNull('monOpenTime', instance.monOpenTime);
  writeNotNull('monCloseTime', instance.monCloseTime);
  writeNotNull('isMonClosed', instance.isMonClosed);
  writeNotNull('tueOpenTime', instance.tueOpenTime);
  writeNotNull('tueCloseTime', instance.tueCloseTime);
  writeNotNull('isTueClosed', instance.isTueClosed);
  writeNotNull('wedOpenTime', instance.wedOpenTime);
  writeNotNull('wedCloseTime', instance.wedCloseTime);
  writeNotNull('isWedClosed', instance.isWedClosed);
  writeNotNull('thuOpenTime', instance.thuOpenTime);
  writeNotNull('thuCloseTime', instance.thuCloseTime);
  writeNotNull('isThuClosed', instance.isThuClosed);
  writeNotNull('friOpenTime', instance.friOpenTime);
  writeNotNull('friCloseTime', instance.friCloseTime);
  writeNotNull('isFriClosed', instance.isFriClosed);
  writeNotNull('satOpenTime', instance.satOpenTime);
  writeNotNull('satCloseTime', instance.satCloseTime);
  writeNotNull('isSatClosed', instance.isSatClosed);
  writeNotNull('sunOpenTime', instance.sunOpenTime);
  writeNotNull('sunCloseTime', instance.sunCloseTime);
  writeNotNull('isSunClosed', instance.isSunClosed);
  writeNotNull(
      'dateOwnerChanged', instance.dateOwnerChanged?.toIso8601String());
  writeNotNull('countryOrigin', instance.countryOrigin);
  writeNotNull('firstManSameAsOwner', instance.firstManSameAsOwner);
  writeNotNull('orgSameAsFirmName', instance.orgSameAsFirmName);
  writeNotNull('orgSameAsPhysicalAddress', instance.orgSameAsPhysicalAddress);
  writeNotNull('orgSameAsMailAddress', instance.orgSameAsMailAddress);
  writeNotNull('orgName', instance.orgName);
  writeNotNull('orgType', instance.orgType);
  writeNotNull('orgAddress1', instance.orgAddress1);
  writeNotNull('orgAddress2', instance.orgAddress2);
  writeNotNull('orgCity', instance.orgCity);
  writeNotNull('orgState', instance.orgState);
  writeNotNull('orgZipCode', instance.orgZipCode);
  writeNotNull('orgCounty', instance.orgCounty);
  writeNotNull('isMeatHandled', instance.isMeatHandled);
  writeNotNull('isPoultryHandled', instance.isPoultryHandled);
  writeNotNull('isEggsHandled', instance.isEggsHandled);
  writeNotNull('isSiluriformesFishHandled', instance.isSiluriformesFishHandled);
  writeNotNull('isOtherHandled', instance.isOtherHandled);
  writeNotNull('otherProduct', instance.otherProduct);
  writeNotNull('isDomestic', instance.isDomestic);
  writeNotNull('isImported', instance.isImported);
  writeNotNull('volumeProduct', instance.volumeProduct);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('createdEmpId', instance.createdEmpId);
  writeNotNull('lastModDate', instance.lastModDate?.toIso8601String());
  writeNotNull('lastModEmpId', instance.lastModEmpId);
  writeNotNull('contactRegionalOffice', instance.contactRegionalOffice);
  writeNotNull(
      'contactRegionalOfficeComment', instance.contactRegionalOfficeComment);
  writeNotNull('workflowStateId', instance.workflowStateId);
  writeNotNull('workflowRecordId', instance.workflowRecordId);
  writeNotNull('isOrderPermanent', instance.isOrderPermanent);
  writeNotNull('isDeleteFirmReq', instance.isDeleteFirmReq);
  writeNotNull('isEnergySource', instance.isEnergySource);
  writeNotNull('exprOrderDate', instance.exprOrderDate?.toIso8601String());
  writeNotNull('lastSurvDate', instance.lastSurvDate?.toIso8601String());
  writeNotNull('isOpenInv', instance.isOpenInv);
  writeNotNull('hasChangeHistory', instance.hasChangeHistory);
  writeNotNull('fileAttached', instance.fileAttached);
  writeNotNull('complianceAttached', instance.complianceAttached);
  writeNotNull('firmPrevOwnerships',
      instance.firmPrevOwnerships?.map((e) => e.toJson()).toList());
  writeNotNull(
      'firmComments', instance.firmComments?.map((e) => e.toJson()).toList());
  writeNotNull('firmChangeHistory',
      instance.firmChangeHistory?.map((e) => e.toJson()).toList());
  writeNotNull('firmInfoCountries',
      instance.firmInfoCountries?.map((e) => e.toJson()).toList());
  writeNotNull('pestControlHistory',
      instance.pestControlHistory?.map((e) => e.toJson()).toList());
  writeNotNull('firmRegistrationInfo', instance.firmRegistrationInfo?.toJson());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('firstManager', instance.firstManager?.toJson());
  writeNotNull('secondManager', instance.secondManager?.toJson());
  writeNotNull('pestControl', instance.pestControl?.toJson());
  writeNotNull('associatedFirmLinks', instance.associatedFirmLinks);
  return val;
}

FirmInfoCountries _$FirmInfoCountriesFromJson(Map<String, dynamic> json) =>
    FirmInfoCountries(
      firmInfo: json['firmInfo'] == null
          ? null
          : FirmInfo.fromJson(json['firmInfo'] as Map<String, dynamic>),
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$FirmInfoCountriesToJson(FirmInfoCountries instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firmInfo', instance.firmInfo?.toJson());
  writeNotNull('countryCode', instance.countryCode);
  return val;
}

FirmPestControlHistory _$FirmPestControlHistoryFromJson(
        Map<String, dynamic> json) =>
    FirmPestControlHistory(
      firmPestControlHistoryId: json['firmPestControlHistoryId'] as int?,
      firm: json['firm'] == null
          ? null
          : FirmInfo.fromJson(json['firm'] as Map<String, dynamic>),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      createdBy: json['createdBy'] as int?,
      changeDate: json['changeDate'] == null
          ? null
          : DateTime.parse(json['changeDate'] as String),
      fieldName: json['fieldName'] as String?,
      newValue: json['newValue'] as String?,
      previousValue: json['previousValue'] as String?,
    );

Map<String, dynamic> _$FirmPestControlHistoryToJson(
    FirmPestControlHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firmPestControlHistoryId', instance.firmPestControlHistoryId);
  writeNotNull('firm', instance.firm?.toJson());
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('changeDate', instance.changeDate?.toIso8601String());
  writeNotNull('fieldName', instance.fieldName);
  writeNotNull('newValue', instance.newValue);
  writeNotNull('previousValue', instance.previousValue);
  return val;
}

FirmPrevOwnership _$FirmPrevOwnershipFromJson(Map<String, dynamic> json) =>
    FirmPrevOwnership(
      firmPrevOwnId: json['firmPrevOwnId'] as int?,
      firm: json['firm'] == null
          ? null
          : FirmInfo.fromJson(json['firm'] as Map<String, dynamic>),
      firmPrevOwnName: json['firmPrevOwnName'] as String?,
      prevOwnDate: json['prevOwnDate'] == null
          ? null
          : DateTime.parse(json['prevOwnDate'] as String),
    );

Map<String, dynamic> _$FirmPrevOwnershipToJson(FirmPrevOwnership instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firmPrevOwnId', instance.firmPrevOwnId);
  writeNotNull('firm', instance.firm?.toJson());
  writeNotNull('firmPrevOwnName', instance.firmPrevOwnName);
  writeNotNull('prevOwnDate', instance.prevOwnDate?.toIso8601String());
  return val;
}

FirmRegistrationInfo _$FirmRegistrationInfoFromJson(
        Map<String, dynamic> json) =>
    FirmRegistrationInfo(
      firmId: json['firmId'] as int?,
      firm: json['firm'] == null
          ? null
          : FirmInfo.fromJson(json['firm'] as Map<String, dynamic>),
      isOriginal: json['isOriginal'] as String?,
      regDate: json['regDate'] == null
          ? null
          : DateTime.parse(json['regDate'] as String),
      regName: json['regName'] as String?,
      regTradeNames: json['regTradeNames'] as String?,
      regMailAddress: json['regMailAddress'] as String?,
      regState: json['regState'] as String?,
      phoneEmail: json['phoneEmail'] as String?,
      regType: json['regType'] as String?,
      certifyOffical: json['certifyOffical'] as String?,
      formOfOrg: json['formOfOrg'] as String?,
      othFormOfOrg: json['othFormOfOrg'] as String?,
      natureOfBusiness: json['natureOfBusiness'] as String?,
      othNatOfBusiness: json['othNatOfBusiness'] as String?,
      regBusinessType: json['regBusinessType'] as String?,
      othRgtrBusType: json['othRgtrBusType'] as String?,
      regComment: json['regComment'] as String?,
      isRegistered: json['isRegistered'] as String?,
      regNumber: json['regNumber'] as String?,
      linkedDate: json['linkedDate'] == null
          ? null
          : DateTime.parse(json['linkedDate'] as String),
      parentFirmId: json['parentFirmId'] as String?,
      parentFirmName: json['parentFirmName'] as String?,
      associatedFirmLinks: (json['associatedFirmLinks'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$FirmRegistrationInfoToJson(
    FirmRegistrationInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firmId', instance.firmId);
  writeNotNull('firm', instance.firm?.toJson());
  writeNotNull('isOriginal', instance.isOriginal);
  writeNotNull('regDate', instance.regDate?.toIso8601String());
  writeNotNull('regName', instance.regName);
  writeNotNull('regTradeNames', instance.regTradeNames);
  writeNotNull('regMailAddress', instance.regMailAddress);
  writeNotNull('regState', instance.regState);
  writeNotNull('phoneEmail', instance.phoneEmail);
  writeNotNull('regType', instance.regType);
  writeNotNull('certifyOffical', instance.certifyOffical);
  writeNotNull('formOfOrg', instance.formOfOrg);
  writeNotNull('othFormOfOrg', instance.othFormOfOrg);
  writeNotNull('natureOfBusiness', instance.natureOfBusiness);
  writeNotNull('othNatOfBusiness', instance.othNatOfBusiness);
  writeNotNull('regBusinessType', instance.regBusinessType);
  writeNotNull('othRgtrBusType', instance.othRgtrBusType);
  writeNotNull('regComment', instance.regComment);
  writeNotNull('isRegistered', instance.isRegistered);
  writeNotNull('regNumber', instance.regNumber);
  writeNotNull('linkedDate', instance.linkedDate?.toIso8601String());
  writeNotNull('parentFirmId', instance.parentFirmId);
  writeNotNull('parentFirmName', instance.parentFirmName);
  writeNotNull('associatedFirmLinks', instance.associatedFirmLinks);
  return val;
}

PestControl _$PestControlFromJson(Map<String, dynamic> json) => PestControl(
      pestControlId: json['pestControlId'] as int?,
      firm: json['firm'] == null
          ? null
          : FirmInfo.fromJson(json['firm'] as Map<String, dynamic>),
      name: json['name'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      phoneNumberExtension: json['phoneNumberExtension'] as String?,
      mobilePhoneNumber: json['mobilePhoneNumber'] as String?,
      email: json['email'] as String?,
      selfAdministered: json['selfAdministered'] as bool?,
      frequencyOfVisits: json['frequencyOfVisits'] as String?,
    );

Map<String, dynamic> _$PestControlToJson(PestControl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pestControlId', instance.pestControlId);
  writeNotNull('firm', instance.firm?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('phoneNumberExtension', instance.phoneNumberExtension);
  writeNotNull('mobilePhoneNumber', instance.mobilePhoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('selfAdministered', instance.selfAdministered);
  writeNotNull('frequencyOfVisits', instance.frequencyOfVisits);
  return val;
}

ANRole _$ANRoleFromJson(Map<String, dynamic> json) => ANRole(
      roleID: json['roleID'] as int?,
      roleName: json['roleName'] as String?,
      roleType: json['roleType'] as String?,
    );

Map<String, dynamic> _$ANRoleToJson(ANRole instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('roleID', instance.roleID);
  writeNotNull('roleName', instance.roleName);
  writeNotNull('roleType', instance.roleType);
  return val;
}

ModelPageANRole _$ModelPageANRoleFromJson(Map<String, dynamic> json) =>
    ModelPageANRole(
      records: (json['records'] as List<dynamic>?)
              ?.map((e) => ANRole.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int?,
      count: json['count'] as int?,
      totalPages: json['totalPages'] as int?,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$ModelPageANRoleToJson(ModelPageANRole instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('records', instance.records?.map((e) => e.toJson()).toList());
  writeNotNull('page', instance.page);
  writeNotNull('count', instance.count);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('totalRecords', instance.totalRecords);
  return val;
}

ModelPageUser _$ModelPageUserFromJson(Map<String, dynamic> json) =>
    ModelPageUser(
      records: (json['records'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int?,
      count: json['count'] as int?,
      totalPages: json['totalPages'] as int?,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$ModelPageUserToJson(ModelPageUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('records', instance.records?.map((e) => e.toJson()).toList());
  writeNotNull('page', instance.page);
  writeNotNull('count', instance.count);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('totalRecords', instance.totalRecords);
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      eauthId: json['eauthId'] as String?,
      empId: json['empId'] as int?,
      userLevel: json['userLevel'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eauthId', instance.eauthId);
  writeNotNull('empId', instance.empId);
  writeNotNull('userLevel', instance.userLevel);
  return val;
}

ModelPageSurveillance _$ModelPageSurveillanceFromJson(
        Map<String, dynamic> json) =>
    ModelPageSurveillance(
      records: (json['records'] as List<dynamic>?)
              ?.map((e) => Surveillance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int?,
      count: json['count'] as int?,
      totalPages: json['totalPages'] as int?,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$ModelPageSurveillanceToJson(
    ModelPageSurveillance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('records', instance.records?.map((e) => e.toJson()).toList());
  writeNotNull('page', instance.page);
  writeNotNull('count', instance.count);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('totalRecords', instance.totalRecords);
  return val;
}

Reminder _$ReminderFromJson(Map<String, dynamic> json) => Reminder(
      remindersId: json['remindersId'] as int?,
      recordID: json['recordID'] as int?,
      type: json['type'] as String?,
      creator: json['creator'] as int?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      firmName: json['firmName'] as String?,
      empId: json['empId'] as int?,
      empName: json['empName'] as String?,
      followUp: json['followUp'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      variance: json['variance'] as String?,
    );

Map<String, dynamic> _$ReminderToJson(Reminder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('remindersId', instance.remindersId);
  writeNotNull('recordID', instance.recordID);
  writeNotNull('type', instance.type);
  writeNotNull('creator', instance.creator);
  writeNotNull('createdDate', instance.createdDate?.toIso8601String());
  writeNotNull('firmName', instance.firmName);
  writeNotNull('empId', instance.empId);
  writeNotNull('empName', instance.empName);
  writeNotNull('followUp', instance.followUp);
  writeNotNull('dueDate', instance.dueDate?.toIso8601String());
  writeNotNull('variance', instance.variance);
  return val;
}

ModelPageFirmInfo _$ModelPageFirmInfoFromJson(Map<String, dynamic> json) =>
    ModelPageFirmInfo(
      records: (json['records'] as List<dynamic>?)
              ?.map((e) => FirmInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int?,
      count: json['count'] as int?,
      totalPages: json['totalPages'] as int?,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$ModelPageFirmInfoToJson(ModelPageFirmInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('records', instance.records?.map((e) => e.toJson()).toList());
  writeNotNull('page', instance.page);
  writeNotNull('count', instance.count);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('totalRecords', instance.totalRecords);
  return val;
}

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      id: json['id'] as String?,
      employeeId: json['employeeId'] as int?,
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      loginName: json['loginName'] as String?,
      title: json['title'] as String?,
      districtCode: json['districtCode'] as String?,
      districtName: json['districtName'] as String?,
      circuitCode: json['circuitCode'] as String?,
      circuitName: json['circuitName'] as String?,
      establishmentId: json['establishmentId'] as int?,
      establishmentCode: json['establishmentCode'] as String?,
      establishmentName: json['establishmentName'] as String?,
      regionCode: json['regionCode'] as String?,
      regionName: json['regionName'] as String?,
      subRegionCode: json['subRegionCode'] as String?,
      assignmentCode: json['assignmentCode'] as String?,
      assignmentLocation: json['assignmentLocation'] as String?,
      programArea: json['programArea'] as String?,
      email: json['email'] as String?,
      active: json['active'] as String?,
      badgeNumber: json['badgeNumber'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('employeeId', instance.employeeId);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('loginName', instance.loginName);
  writeNotNull('title', instance.title);
  writeNotNull('districtCode', instance.districtCode);
  writeNotNull('districtName', instance.districtName);
  writeNotNull('circuitCode', instance.circuitCode);
  writeNotNull('circuitName', instance.circuitName);
  writeNotNull('establishmentId', instance.establishmentId);
  writeNotNull('establishmentCode', instance.establishmentCode);
  writeNotNull('establishmentName', instance.establishmentName);
  writeNotNull('regionCode', instance.regionCode);
  writeNotNull('regionName', instance.regionName);
  writeNotNull('subRegionCode', instance.subRegionCode);
  writeNotNull('assignmentCode', instance.assignmentCode);
  writeNotNull('assignmentLocation', instance.assignmentLocation);
  writeNotNull('programArea', instance.programArea);
  writeNotNull('email', instance.email);
  writeNotNull('active', instance.active);
  writeNotNull('badgeNumber', instance.badgeNumber);
  writeNotNull('phoneNumber', instance.phoneNumber);
  return val;
}

ModelPageEmployee _$ModelPageEmployeeFromJson(Map<String, dynamic> json) =>
    ModelPageEmployee(
      records: (json['records'] as List<dynamic>?)
              ?.map((e) => Employee.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int?,
      count: json['count'] as int?,
      totalPages: json['totalPages'] as int?,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$ModelPageEmployeeToJson(ModelPageEmployee instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('records', instance.records?.map((e) => e.toJson()).toList());
  writeNotNull('page', instance.page);
  writeNotNull('count', instance.count);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('totalRecords', instance.totalRecords);
  return val;
}

EmployeeRole _$EmployeeRoleFromJson(Map<String, dynamic> json) => EmployeeRole(
      empId: json['empId'] as int?,
      assuranceNetRoleId: json['assuranceNetRoleId'] as int?,
      workflowRoleId: (json['workflowRoleId'] as num?)?.toDouble(),
      isPrimary: json['isPrimary'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      districtCode: json['districtCode'] as String?,
      assignmentCode: json['assignmentCode'] as String?,
      employeeRoleId: json['employeeRoleId'] as int?,
      regionCode: json['regionCode'] as String?,
      subRegionCode: json['subRegionCode'] as String?,
    );

Map<String, dynamic> _$EmployeeRoleToJson(EmployeeRole instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('empId', instance.empId);
  writeNotNull('assuranceNetRoleId', instance.assuranceNetRoleId);
  writeNotNull('workflowRoleId', instance.workflowRoleId);
  writeNotNull('isPrimary', instance.isPrimary);
  writeNotNull('startDate', instance.startDate?.toIso8601String());
  writeNotNull('endDate', instance.endDate?.toIso8601String());
  writeNotNull('districtCode', instance.districtCode);
  writeNotNull('assignmentCode', instance.assignmentCode);
  writeNotNull('employeeRoleId', instance.employeeRoleId);
  writeNotNull('regionCode', instance.regionCode);
  writeNotNull('subRegionCode', instance.subRegionCode);
  return val;
}

ModelPageEmployeeRole _$ModelPageEmployeeRoleFromJson(
        Map<String, dynamic> json) =>
    ModelPageEmployeeRole(
      records: (json['records'] as List<dynamic>?)
              ?.map((e) => EmployeeRole.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: json['page'] as int?,
      count: json['count'] as int?,
      totalPages: json['totalPages'] as int?,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$ModelPageEmployeeRoleToJson(
    ModelPageEmployeeRole instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('records', instance.records?.map((e) => e.toJson()).toList());
  writeNotNull('page', instance.page);
  writeNotNull('count', instance.count);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('totalRecords', instance.totalRecords);
  return val;
}

State _$StateFromJson(Map<String, dynamic> json) => State(
      fullName: json['fullName'] as String?,
      shortName: json['shortName'] as String?,
    );

Map<String, dynamic> _$StateToJson(State instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fullName', instance.fullName);
  writeNotNull('shortName', instance.shortName);
  return val;
}

DropdownElement _$DropdownElementFromJson(Map<String, dynamic> json) =>
    DropdownElement(
      code: json['code'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      sequence: json['sequence'] as int?,
      elementDomain: json['elementDomain'] as String?,
      moduleName: json['moduleName'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$DropdownElementToJson(DropdownElement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('label', instance.label);
  writeNotNull('description', instance.description);
  writeNotNull('sequence', instance.sequence);
  writeNotNull('elementDomain', instance.elementDomain);
  writeNotNull('moduleName', instance.moduleName);
  writeNotNull('active', instance.active);
  return val;
}

RegionalGrouping _$RegionalGroupingFromJson(Map<String, dynamic> json) =>
    RegionalGrouping(
      id: json['id'] as int?,
      subRegionName: json['subRegionName'] as String?,
      subRegionCode: json['subRegionCode'] as String?,
      assignmentName: json['assignmentName'] as String?,
      assignmentCode: json['assignmentCode'] as String?,
      regionName: json['regionName'] as String?,
      regionCode: json['regionCode'] as String?,
    );

Map<String, dynamic> _$RegionalGroupingToJson(RegionalGrouping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('subRegionName', instance.subRegionName);
  writeNotNull('subRegionCode', instance.subRegionCode);
  writeNotNull('assignmentName', instance.assignmentName);
  writeNotNull('assignmentCode', instance.assignmentCode);
  writeNotNull('regionName', instance.regionName);
  writeNotNull('regionCode', instance.regionCode);
  return val;
}

FollowUpDateDTO _$FollowUpDateDTOFromJson(Map<String, dynamic> json) =>
    FollowUpDateDTO(
      label: json['label'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FollowUpDateDTOToJson(FollowUpDateDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('value', instance.value);
  return val;
}

StateCounty _$StateCountyFromJson(Map<String, dynamic> json) => StateCounty(
      state: json['state'] as String?,
      county: json['county'] as String?,
      assignCode: json['assignCode'] as String?,
      regionCode: json['regionCode'] as String?,
      fipsCode: json['fipsCode'] as int?,
    );

Map<String, dynamic> _$StateCountyToJson(StateCounty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('county', instance.county);
  writeNotNull('assignCode', instance.assignCode);
  writeNotNull('regionCode', instance.regionCode);
  writeNotNull('fipsCode', instance.fipsCode);
  return val;
}

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      shortName: json['shortName'] as String?,
      full: json['full'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shortName', instance.shortName);
  writeNotNull('full', instance.full);
  return val;
}
