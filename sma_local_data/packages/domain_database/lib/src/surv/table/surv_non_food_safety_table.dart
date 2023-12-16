import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvNonFoodSafetyData', extending: DataClassBehavioral)
class SurvNonFoodSafety extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_non_food_safety';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get labelingVerified => boolean().nullable()();
  BoolColumn get productsNotMisbranded => boolean().nullable()();
  BoolColumn get properlyIdentifyActs => boolean().nullable()();
  TextColumn get additionalComments => text().nullable()();
}
