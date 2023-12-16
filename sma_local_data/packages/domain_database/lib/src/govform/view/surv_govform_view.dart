import 'package:domain_database/src/surv/table/surv_food_defense_table.dart';
import 'package:domain_database/src/surv/table/surv_general_info_table.dart';
import 'package:domain_database/src/surv/table/surv_table.dart';
import 'package:drift/drift.dart';

abstract class SurvGovformView extends View {
  Surv get surv;
  SurvGeneralInfo get survGeneralInfo;
  SurvFoodDefense get survFoodDefense;

  @override
  Query as() => select([
        surv.id,
        survGeneralInfo.datePerformed,
        surv.firmId,
        survFoodDefense.eggCheck,
        survFoodDefense.isFreeFromTampering,
        survFoodDefense.hasProcedureForIncomingShippingDocuments,
        surv.creatorId,
        surv.recordStatus

      ]).from(surv).join([
        innerJoin(surv, surv.firmId.equalsExp(survFoodDefense.id))
      ]).join([innerJoin(surv, surv.id.equalsExp(survGeneralInfo.id))]);
}
