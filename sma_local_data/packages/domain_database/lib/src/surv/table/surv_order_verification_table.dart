import 'package:drift/drift.dart';
import 'package:local_common/database.dart';

@DataClassName('SurvOrderVerificationData', extending: DataClassBehavioral)
class SurvOrderVerification extends Table with RecordColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'surv_order_verification';

  @override
  Set<Column> get primaryKey => {id, recordType};
  
  @override
  IntColumn get id => integer()();

  BoolColumn get firmInCompliance => boolean().nullable()();
  BoolColumn get individualInCompliance => boolean().nullable()();
  TextColumn get additionalComments => text().nullable()();
}
