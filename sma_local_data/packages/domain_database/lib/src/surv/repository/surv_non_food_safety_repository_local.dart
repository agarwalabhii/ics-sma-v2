import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_non_food_safety_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'surv_non_food_safety_repository_local.g.dart';

@riverpod
class SurvNonFoodSafetyRepositoryLocal
    extends _$SurvNonFoodSafetyRepositoryLocal
    with
        DomainMutateMixin<SurvNonFoodSafety, db.SurvNonFoodSafetyData>,
        DomainFetchIdMixin<SurvNonFoodSafety, db.SurvNonFoodSafetyData>,
        DomainDeleteMixin<SurvNonFoodSafety, db.SurvNonFoodSafetyData>
    implements
        LocalMutableRepository<db.SurvNonFoodSafetyData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvNonFoodSafety, db.SurvNonFoodSafetyData> get table =>
      database.survNonFoodSafety;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  @override
  bool isSparseData(db.SurvNonFoodSafetyData dataClass) {
    return dataClass.labelingVerified == null &&
        dataClass.productsNotMisbranded == null &&
        dataClass.properlyIdentifyActs == null &&
        dataClass.additionalComments == null;
  }
}
