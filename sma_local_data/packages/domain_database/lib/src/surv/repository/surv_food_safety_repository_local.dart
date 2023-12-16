import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_food_safety_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'surv_food_safety_repository_local.g.dart';

@riverpod
class SurvFoodSafetyRepositoryLocal extends _$SurvFoodSafetyRepositoryLocal
    with
        DomainMutateMixin<SurvFoodSafety, db.SurvFoodSafetyData>,
        DomainFetchIdMixin<SurvFoodSafety, db.SurvFoodSafetyData>,
        DomainDeleteMixin<SurvFoodSafety, db.SurvFoodSafetyData>
    implements
        LocalMutableRepository<db.SurvFoodSafetyData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvFoodSafety, db.SurvFoodSafetyData> get table =>
      database.survFoodSafety;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.SurvFoodSafetyData dataClass) {
    return dataClass.hasMeatProducts == null &&
        dataClass.sanitaryConditionsGood == null &&
        dataClass.hasSiluriformesFishProducts == null &&
        dataClass.hasPoultryProducts == null &&
        dataClass.hasEggProductsProducts == null && 
        dataClass.hasShellEggProducts == null  &&
        dataClass.recordsMaintained == null && 
        dataClass.productWholesome == null && 
        dataClass.hazardControlsAdequate == null && 
        dataClass.safetyAddtionalComments == null; 
  }
}
