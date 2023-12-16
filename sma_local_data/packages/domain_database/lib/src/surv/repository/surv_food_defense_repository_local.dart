import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_food_defense_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'surv_food_defense_repository_local.g.dart';

@riverpod
class SurvFoodDefenseRepositoryLocal extends _$SurvFoodDefenseRepositoryLocal
    with
        DomainMutateMixin<SurvFoodDefense, db.SurvFoodDefenseData>,
        DomainFetchIdMixin<SurvFoodDefense, db.SurvFoodDefenseData>,
        DomainDeleteMixin<SurvFoodDefense, db.SurvFoodDefenseData>
    implements
        LocalMutableRepository<db.SurvFoodDefenseData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvFoodDefense, db.SurvFoodDefenseData> get table =>
      database.survFoodDefense;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  @override
  bool isSparseData(db.SurvFoodDefenseData dataClass) {
    return false;
  }
}
