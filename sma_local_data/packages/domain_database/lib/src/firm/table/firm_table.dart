import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('FirmData', extending: DataClassBehavioral)
class Firm extends Table
    with RecordColumnMixin, SyncColumnMixin, CreationColumnMixin
    implements IdentifiableEntity {
  @override
  String get tableName => 'firm';

  @override
  Set<Column> get primaryKey => {id, recordType};

  IntColumn get recordStatus =>
      intEnum<RecordStatus>().withDefault(const Constant(0)).nullable()();

  @override
  IntColumn get id => integer()();
  IntColumn get localId => integer().nullable()();

  IntColumn get lastSurvId => integer().nullable()();
}
