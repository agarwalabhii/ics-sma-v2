import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('EmployeeData', extending: DataClassBehavioral)
class Employee extends Table implements IdentifiableEntity {
  @override
  String get tableName => 'employee';

  @override
  Set<Column> get primaryKey => {id, establishmentId};
  
  @override
  IntColumn get id => integer()();
  IntColumn get establishmentId => integer()();

  TextColumn get lastName => text().nullable()();
  TextColumn get firstName => text().nullable()();
  TextColumn get loginName => text().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get districtCode => text().nullable()();
  TextColumn get districtName => text().nullable()();
  TextColumn get circuitCode => text().nullable()();
  TextColumn get circuitName => text().nullable()();
  TextColumn get establishmentCode => text().nullable()();
  TextColumn get establishmentName => text().nullable()();
  TextColumn get regionCode => text().nullable()();
  TextColumn get regionName => text().nullable()();
  TextColumn get subRegionCode => text().nullable()();
  TextColumn get assignmentCode => text().nullable()();
  TextColumn get assignmentLocation => text().nullable()();
  TextColumn get programArea => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get active => text().nullable()();
  TextColumn get badgeNumber => text().nullable()();
  TextColumn get phoneNumber => text().nullable()();
}
