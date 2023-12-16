import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('UserData', extending: DataClassBehavioral)
class User extends Table implements IdentifiableEntity {
  @override
  String get tableName => 'user';

  @override
  Set<Column> get primaryKey => {id, eauthId};
  
  @override
  IntColumn get id => integer()();

  TextColumn get eauthId => text()();
  IntColumn get level => integer()();
}
