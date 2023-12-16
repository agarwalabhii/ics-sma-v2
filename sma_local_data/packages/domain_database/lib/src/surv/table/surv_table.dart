import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvData', extending: DataClassBehavioral)
@TableIndex(name: 'surv_firm_id', columns: {#firmId})
class Surv extends Table
    with RecordColumnMixin, SyncColumnMixin, CreationColumnMixin
    implements IdentifiableEntity {
  @override
  String get tableName => 'surv';

  @override
  Set<Column> get primaryKey => {id, recordType};

  IntColumn get recordStatus =>
      intEnum<RecordStatus>().withDefault(const Constant(0)).nullable()();

  @override
  IntColumn get id => integer()();
  IntColumn get localId => integer().nullable()();

  IntColumn get firmId => integer().nullable()();
}
