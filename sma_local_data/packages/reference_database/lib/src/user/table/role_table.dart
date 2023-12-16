import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('RoleData', extending: DataClassBehavioral)
class Role extends Table implements IdentifiableEntity {
  @override
  String get tableName => 'role';

  @override
  Set<Column> get primaryKey => {id};
  
  @override
  IntColumn get id => integer()();

  TextColumn get name => text().nullable()();
  TextColumn get type => text().nullable()();
}
