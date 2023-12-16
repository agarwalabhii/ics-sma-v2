import 'package:drift/drift.dart';
import 'package:local_common/src/data_types/sync_status.dart';

abstract mixin class SyncColumnMixin implements Table {
  IntColumn get syncStatus => intEnum<SyncStatus>().nullable()();
  DateTimeColumn get syncTimestamp => dateTime().nullable()();
}
