import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_table.dart';
import 'package:drift/drift.dart';

part 'firm_dao.g.dart';

@DriftAccessor(tables: [Firm])
class FirmDao extends DatabaseAccessor<DomainDatabase> with _$FirmDaoMixin {
  FirmDao(DomainDatabase db) : super(db);

  Future<int> updateLastSurvId(int firmId, int? lastSurvId) {
    return (update(firm)..where((t) => t.id.equals(firmId))).write(
      FirmCompanion(
        lastSurvId: Value(lastSurvId),
      ),
    );
  }
}
