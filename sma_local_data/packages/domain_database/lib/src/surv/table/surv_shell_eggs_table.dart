import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvShellEggData', extending: DataClassBehavioral)
class SurvShellEgg extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_shell_egg';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get wereShellEggsObserved => boolean().nullable()();
  TextColumn get shellEggTemperatureList => text()
      .map(const MultiStringConverter())
      .withLength(min: 0, max: 20)
      .nullable()();
  BoolColumn get areShellEggPropertyMaintained => boolean().nullable()();
  TextColumn get shellEggTemperature => text().nullable()();
  TextColumn get comments => text().nullable()();
}
