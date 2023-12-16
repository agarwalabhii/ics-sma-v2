import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('FirmAdditionalInfoData', extending: DataClassBehavioral)
class FirmAdditionalInfo extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'firm_additional_info';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  TextColumn get otherRegulatoryInfo => text().nullable()();
  TextColumn get additionalComments => text().nullable()();
  BoolColumn get updatePestInfo => boolean().nullable()();
  IntColumn get pestControlId => integer().nullable()();
  DateTimeColumn get datePestControl => dateTime().nullable()();
  BoolColumn get pestSelfAdmin => boolean().nullable()();
  TextColumn get pestControlName => text().nullable()();
  TextColumn get frequency => text().nullable()();
  TextColumn get comments => text().nullable()();
  TextColumn get address1 => text().nullable()();
  TextColumn get address2 => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get stateCode => text().nullable()();
  TextColumn get zipCode => text().nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get ext => text().nullable()();
  TextColumn get mobile => text().nullable()();
  TextColumn get email => text().nullable()();
}
