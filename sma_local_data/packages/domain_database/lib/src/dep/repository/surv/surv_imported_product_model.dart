import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class SurvImportedProductModel extends ModelBase {
  bool? get wasImportProductObserved;
  void setWasImportProductObserved(WidgetRef ref, bool? newValue);
  bool? get hasCheckForFederalImportInspection;
  void setHasCheckForFederalImportInspection(WidgetRef ref, bool? newValue);
  bool? get wasCorrectDocumentsRequested;
  void setWasCorrectDocumentsRequested(WidgetRef ref, bool? newValue);
  bool? get importedProductsMarks;
  void setImportedProductsMarks(WidgetRef ref, bool? newValue);
  bool? get hasPhisUsedVerifyProducts;
  void setAsPhisUsedVerifyProducts(WidgetRef ref, bool? newValue);
  bool? get wasOriginatedFromEligibleForeignEstablishments;
  void setWasOriginatedFromEligibleForeignEstablishments(
      WidgetRef ref, bool? newValue);
  bool? get wasOriginatedFromEligibleForeignCountries;
  void setWasOriginatedFromEligibleForeignCountries(
      WidgetRef ref, bool? newValue);
  bool? get wasProducedWhileForeignEstablishmentsEligible;
  void setWasProducedWhileForeignEstablishmentsEligible(
      WidgetRef ref, bool? newValue);
  bool? get wasInspectedAndPassedByFSIS;
  void setWasInspectedAndPassedByFSIS(WidgetRef ref, bool? newValue);
  String? get country;
  void setCountry(WidgetRef ref, String? newValue);
  String? get importedProductsAdditionalComments;
  void setImportedProductsAdditionalComments(WidgetRef ref, String? newValue);
}
