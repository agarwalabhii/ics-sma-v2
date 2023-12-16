import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_general_info_table.dart';
import 'package:domain_database/src/firm/table/firm_table.dart';
import 'package:domain_database/src/surv/table/surv_general_info_table.dart';
import 'package:drift/drift.dart';

part 'search_dao.g.dart';

@DriftAccessor(tables: [Firm, FirmGeneralInfo, SurvGeneralInfo])
class SearchDao extends DatabaseAccessor<DomainDatabase> with _$SearchDaoMixin {
  SearchDao(DomainDatabase db) : super(db);

  Future<FirmGeneralInfoData?> byFirmId(int id) {
    return (select(firmGeneralInfo)
          ..where((t) => t.id.equals(id))
          ..limit(1))
        .getSingleOrNull();
  }

  Future<List<FirmGeneralInfoData>> byFirmName(String input) {
    return (select(firmGeneralInfo)..where((t) => t.name.like('%$input%')))
        .get();
  }

  Future<SurvGeneralInfoData?> bySurvId(int id) {
    return (select(survGeneralInfo)
          ..where((t) => t.id.equals(id))
          ..limit(1))
        .getSingleOrNull();
  }
}
