import 'package:drift/drift.dart';
import 'package:local_common/src/data_types/record.dart';

abstract mixin class RecordColumnMixin implements Table {
  IntColumn get recordType =>
      intEnum<RecordType>().withDefault(const Constant(0)).nullable()();
}
