import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('FirmProductInfoData', extending: DataClassBehavioral)
class FirmProductInfo extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'firm_product_info';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  TextColumn get productsHandled =>
      text().map(const MultiStringConverter()).nullable()();

  TextColumn get amenableProducts =>
      text().map(const MultiStringConverter()).nullable()();
  TextColumn get productOrigin =>
      text().map(const MultiStringConverter()).nullable()();
  TextColumn get countryOfOrigin => text().nullable()();
}
