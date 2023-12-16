import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('FirmOwnerInfoData', extending: DataClassBehavioral)
class FirmOwnerInfo extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'firm_owner_info';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get updateInfo => boolean().nullable()();
  DateTimeColumn get dateOfOwnershipUpdate => dateTime().nullable()();

  IntColumn get ownerContactId => integer().nullable()();
  
  TextColumn get ownerName => text().nullable()();
  TextColumn get ownerTitle => text().nullable()();
  TextColumn get ownerPhone => text().nullable()();
  TextColumn get ownerExt => text().nullable()();
  TextColumn get ownerFax => text().nullable()();
  TextColumn get ownerEmail => text().nullable()();
  TextColumn get ownerMobile => text().nullable()();
  BoolColumn get receiveMobileMessages => boolean().nullable()();
}
