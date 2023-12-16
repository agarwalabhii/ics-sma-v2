import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvFoodSafetyData', extending: DataClassBehavioral)
class SurvFoodSafety extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_food_safety';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get hasMeatProducts => boolean().nullable()();
  BoolColumn get sanitaryConditionsGood => boolean().nullable()();
  BoolColumn get hasSiluriformesFishProducts => boolean().nullable()();
  BoolColumn get hasPoultryProducts => boolean().nullable()();
  BoolColumn get hasEggProductsProducts => boolean().nullable()();
  BoolColumn get hasShellEggProducts => boolean().nullable()();
  BoolColumn get recordsMaintained => boolean().nullable()();
  BoolColumn get productWholesome => boolean().nullable()();
  BoolColumn get hazardControlsAdequate => boolean().nullable()();
  BoolColumn get nonHumanFoodProperlyDenatured => boolean().nullable()();
  TextColumn get safetyAddtionalComments => text().nullable()();
}
