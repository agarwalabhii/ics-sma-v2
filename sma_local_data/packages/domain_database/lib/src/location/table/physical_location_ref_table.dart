import 'package:drift/drift.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

@DataClassName('PhysicalLocationRefData', extending: DataClassBehavioral)
class PhysicalLocationRef extends Table with RecordColumnMixin, CreationColumnMixin {

  @override
  String get tableName => 'physical_location_ref';

  @override
  Set<Column> get primaryKey => {locationId, refId, refType};

  IntColumn get locationId => integer()();
  IntColumn get refId => integer()();
  IntColumn get refType => intEnum<LocationRefType>()();
}
