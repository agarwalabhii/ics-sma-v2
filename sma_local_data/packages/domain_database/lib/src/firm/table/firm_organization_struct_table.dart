import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('FirmOrganizationStructData', extending: DataClassBehavioral)
class FirmOrganizationStruct extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'firm_organization_struct';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  TextColumn get organizationName => text().nullable()();
  TextColumn get organizationType => text().nullable()();
  TextColumn get organizationAddress1 => text().nullable()();
  TextColumn get organizationAddress2 => text().nullable()();
  TextColumn get organizationCity => text().nullable()();
  TextColumn get organizationState => text().nullable()();
  TextColumn get organizationZipCode => text().nullable()();
  TextColumn get organizationCounty => text().nullable()();
  BoolColumn get sameAsFirmName => boolean().nullable()();
  BoolColumn get sameAsPhysicalAddress => boolean().nullable()();
  BoolColumn get sameAsMailingAddress => boolean().nullable()();
}
