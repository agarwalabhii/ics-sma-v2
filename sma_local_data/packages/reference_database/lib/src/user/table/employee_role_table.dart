import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('EmployeeRoleData', extending: DataClassBehavioral)
class EmployeeRole extends Table implements IdentifiableEntity {
  @override
  String get tableName => 'employee_role';

  @override
  Set<Column> get primaryKey => {id, employeeId, roleId};
  
  @override
  IntColumn get id => integer()();

  IntColumn get employeeId => integer().nullable()();
  IntColumn get roleId => integer().nullable()();
  IntColumn get workflowRoleId => integer().nullable()();
  BoolColumn get isPrimary => boolean().nullable()();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
  TextColumn get districtCode => text().nullable()();
  TextColumn get assignmentCode => text().nullable()();
  TextColumn get regionCode => text().nullable()();
  TextColumn get subRegionCode => text().nullable()();
}
