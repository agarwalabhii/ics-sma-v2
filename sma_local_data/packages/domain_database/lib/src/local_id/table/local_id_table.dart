import 'package:drift/drift.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

@DataClassName('LocalIdData', extending: DataClassBehavioral)
class LocalId extends Table {
  @override
  String get tableName => 'localid';

  IntColumn get id => integer().autoIncrement()();

  IntColumn get feature => intEnum<Feature>()();
}
