import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvImportedProductData', extending: DataClassBehavioral)
class SurvImportedProduct extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_imported_product';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get wasImportProductObserved => boolean().nullable()();
  BoolColumn get hasCheckForFederalImportInspection => boolean().nullable()();
  BoolColumn get wasCorrectDocumentsRequested => boolean().nullable()();
  BoolColumn get importedProductsMarks => boolean().nullable()();
  BoolColumn get hasPhisUsedVerifyProducts => boolean().nullable()();
  BoolColumn get wasOriginatedFromEligibleForeignCountries =>
      boolean().nullable()();
  BoolColumn get wasOriginatedFromEligibleForeignEstablishments =>
      boolean().nullable()();
  BoolColumn get wasProducedWhileForeignEstablishmentsEligible =>
      boolean().nullable()();
  BoolColumn get wasInspectedAndPassedByFSIS => boolean().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get importedProductsAdditionalComments => text().nullable()();
}
