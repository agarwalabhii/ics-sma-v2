import 'package:domain_database/src/surv/table/surv_general_info_table.dart';
import 'package:domain_database/src/surv/table/surv_table.dart';
import 'package:drift/drift.dart';

import '../../firm/table/firm_general_info_table.dart';

abstract class SurvSnapshotView extends View {
  Surv get surv;
  FirmGeneralInfo get firmGeneralInfo;
  SurvGeneralInfo get survGeneralInfo;

  @override
  Query as() => select([
        surv.id,
        survGeneralInfo.datePerformed,
        surv.firmId,
        firmGeneralInfo.name,
        surv.creatorId,
        surv.recordStatus

      ]).from(surv).join([
        innerJoin(surv, surv.firmId.equalsExp(firmGeneralInfo.id))
      ]).join([innerJoin(surv, surv.id.equalsExp(survGeneralInfo.id))]);
}
