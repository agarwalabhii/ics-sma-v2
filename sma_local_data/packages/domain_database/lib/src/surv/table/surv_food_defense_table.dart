import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvFoodDefenseData', extending: DataClassBehavioral)
class SurvFoodDefense extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_food_defense';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get wasFoodDefenseConducted => boolean().nullable()();
  BoolColumn get meatCheck => boolean().nullable()();
  BoolColumn get eggCheck => boolean().nullable()();
  BoolColumn get shellEggCheck => boolean().nullable()();
  BoolColumn get poultryCheck => boolean().nullable()();
  BoolColumn get nonAmenableCheck => boolean().nullable()();
  BoolColumn get siluriformesFishCheck => boolean().nullable()();
  BoolColumn get hasWrittenFoodDefensePlan => boolean().nullable()();
  BoolColumn get hasEmergencyContactInfo => boolean().nullable()();
  BoolColumn get hasOutsideSurveillanceSystem => boolean().nullable()();
  BoolColumn get hasInsideSurveillanceSystem => boolean().nullable()();
  BoolColumn get hasProceduresForAuthorizedPersons => boolean().nullable()();
  BoolColumn get hasStoreProceduresForHazardousMaterials =>
      boolean().nullable()();
  BoolColumn get hasLogToIdentifyEmployeesAndVisitors => boolean().nullable()();
  BoolColumn get hasShippingRecordAccessRestricted => boolean().nullable()();
  BoolColumn get wasSecurityVulnerabilitiesDiscussed => boolean().nullable()();
  BoolColumn get recordsMaintained => boolean().nullable()();
  BoolColumn get hasProdedureForFoodAndFoodIngredients =>
      boolean().nullable()();
  BoolColumn get hasProcedureForIncomingShippingDocuments =>
      boolean().nullable()();
  BoolColumn get isFreeFromTampering => boolean().nullable()();
  BoolColumn get wasDriverIdentificationVerified => boolean().nullable()();
  BoolColumn get didDetentionOccur => boolean().nullable()();
  BoolColumn get wasForm5420Provided => boolean().nullable()();
  BoolColumn get wasMaintenenceSecurityDuringShip => boolean().nullable()();
  BoolColumn get productsFreeFromTampering => boolean().nullable()();
  TextColumn get foodDefenseExitNotes => text().nullable()();
  TextColumn get investigatorNotes => text().nullable()();
}
