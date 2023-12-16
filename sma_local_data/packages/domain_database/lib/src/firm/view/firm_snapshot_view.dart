import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_general_info_table.dart';
import 'package:domain_database/src/firm/table/firm_table.dart';
import 'package:domain_database/src/surv/table/surv_general_info_table.dart';
import 'package:drift/drift.dart';

abstract class FirmSnapshotView extends View {
  Firm get firm;
  Surv get surv;
  FirmGeneralInfo get firmGeneralInfo;
  SurvGeneralInfo get survGeneralInfo;

  Expression<int> get firmId => firm.id;
  Expression<String> get name => firmGeneralInfo.name;
  Expression<String> get primaryBusinessType => firmGeneralInfo.primaryBusinessType;
  Expression<int> get creatorId => firm.creatorId;
  Expression<int> get recordStatus => firm.recordStatus;
  Expression<DateTime> get datePerformed => survGeneralInfo.datePerformed;

  @override
  Query as() => select([
        firmId,
        name,
        primaryBusinessType,
        creatorId,
        recordStatus,
        datePerformed
      ]).from(firm).join([
        innerJoin(firm, firm.id.equalsExp(firmGeneralInfo.id))
      ]).join([innerJoin(surv, surv.id.equalsExp(survGeneralInfo.id))]).join(
          [innerJoin(surv, surv.firmId.equalsExp(firm.id))]);
}
