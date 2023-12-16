import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';

extension SurvImportedProductRemote on Surveillance {
  SurvImportedProductData toSurvImportedProduct() {
    return SurvImportedProductData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      wasImportProductObserved: importProdObserve,
      hasCheckForFederalImportInspection: ChoiceValue.fromRemoteModel(checkForFederalImportInspection).value,
      wasCorrectDocumentsRequested: ChoiceValue.fromRemoteModel(correctDocumentsRequested).value,
      importedProductsMarks: ChoiceValue.fromRemoteModel(handlesImportedProducts).value,
      hasPhisUsedVerifyProducts: ChoiceValue.fromRemoteModel(phisUsedVerifyProducts).value,
      wasOriginatedFromEligibleForeignEstablishments: ChoiceValue.fromRemoteModel(phisVerifyForeignEstablishments).value,
      wasOriginatedFromEligibleForeignCountries: ChoiceValue.fromRemoteModel(phisVerifyForeignCountries).value,
      wasProducedWhileForeignEstablishmentsEligible: ChoiceValue.fromRemoteModel(phisVerifyForeignEstablishmentsEligible).value,
      wasInspectedAndPassedByFSIS: ChoiceValue.fromRemoteModel(phisVerifyFSISInspection).value,
    );
  }

  Surveillance copyWithSurvImportedProduct(SurvImportedProductData dataClass) {
   return copyWith(
    );
  }
}
