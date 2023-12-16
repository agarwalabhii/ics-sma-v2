import 'package:domain_database/src/contact/table/contact_table.dart';
import 'package:domain_database/src/dep/repository/surv/recent_survs_repository.dart';
import 'package:domain_database/src/local_id/table/local_id_table.dart';
import 'package:domain_database/src/location/table/physical_location_ref_table.dart';
import 'package:domain_database/src/location/table/physical_location_table.dart';
import 'package:domain_database/src/pest_control/table/pest_control_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';
import 'daos/firm_dao.dart';
import 'daos/location_dao.dart';
import 'daos/search_dao.dart';
import 'firm/table/firm_additional_info_table.dart';
import 'firm/table/firm_general_info_table.dart';
import 'firm/table/firm_managing_official_table.dart';
import 'firm/table/firm_organization_struct_table.dart';
import 'firm/table/firm_owner_info_table.dart';
import 'firm/table/firm_product_info_table.dart';
import 'firm/table/firm_table.dart';
import 'firm/view/firm_snapshot_view.dart';
import 'surv/table/recent_survs_view.dart';
import 'surv/table/surv_additional_info_table.dart';
import 'surv/table/surv_custom_exempt_review_table.dart';
import 'surv/table/surv_food_defense_table.dart';
import 'surv/table/surv_food_safety_table.dart';
import 'surv/table/surv_general_info_table.dart';
import 'surv/table/surv_imported_product_table.dart';
import 'surv/table/surv_non_food_safety_table.dart';
import 'surv/table/surv_order_verification_table.dart';
import 'surv/table/surv_sampling_info_table.dart';
import 'surv/table/surv_shell_eggs_table.dart';
import 'surv/view/surv_snapshot_view.dart';
import 'surv/table/surv_table.dart';

import 'package:local_common/connection.dart' as impl;

part 'domain_database.g.dart';

@DriftDatabase(tables: [
  Contact,
  Firm,
  FirmAdditionalInfo,
  FirmGeneralInfo,
  FirmManagingOfficial,
  FirmOrganizationStruct,
  FirmOwnerInfo,
  FirmProductInfo,
  LocalId,
  PestControl,
  PhysicalLocationRef,
  PhysicalLocation,
  Surv,
  SurvAdditionalInfo,
  SurvGeneralInfo,
  SurvFoodDefense,
  SurvFoodSafety,
  SurvImportedProduct,
  SurvSamplingInfo,
  SurvOrderVerification,
  SurvCustomExemptReview,
  SurvShellEgg,
  SurvNonFoodSafety,
], daos: [
  FirmDao,
  SearchDao,
  LocationDao
], views: [
  FirmSnapshotView,
  RecentSurvsView,
  SurvSnapshotView
])
class DomainDatabase extends _$DomainDatabase {
  DomainDatabase() : super(impl.connect("domain"));

  static const localIdStartingOfset = 1000000;

  DomainDatabase.forTesting(DatabaseConnection connection) : super(connection);

  @override
  int get schemaVersion => 1;

  static final StateProvider<DomainDatabase> provider = StateProvider((ref) {
    final database = DomainDatabase();
    ref.onDispose(database.close);

    return database;
  });

  Future<int> generateNewId(Feature feature) {
    final companion = LocalIdCompanion.insert(feature: feature);
    return into(localId)
        .insert(companion)
        .then((value) => value + localIdStartingOfset);
  }

  Future<int> createOrUpdate<T extends IdentifiableEntity, D extends DataClass,
      C extends UpdateCompanion<D>>(C companion, TableInfo<T, D> table) {
    return into(table).insertOnConflictUpdate(companion);
  }

  Future<D?> byId<T extends IdentifiableEntity, D extends DataClass,
      C extends UpdateCompanion<D>>(int id, TableInfo<T, D> table) {
    return (select(table)
          ..where((t) => t.id.equals(id))
          ..limit(1))
        .getSingleOrNull();
  }

  Future<RecentSurvsViewDataList> fetchRecentSurvs() async {
    try {
      return select(recentSurvsView).get();
    } catch (e) {
      _logError("fetchRecentSurvs", e);
    }
    return [];
  }

  Future<FirmSnapshotViewData?> fetchFirmSnapshotView(int firmId) {
    return (select(firmSnapshotView)..where((t) => t.firmId.equals(firmId)))
        .getSingleOrNull();
  }

  Future<SurvSnapshotViewData?> fetchSurvSnapshotView(int survId) {
    return (select(survSnapshotView)..where((t) => t.id.equals(survId)))
        .getSingleOrNull();
  }

  Future<List<int>> fetchLocalFirmIds() async {
    final query = select(firm)..where((t) => t.recordType.equals(RecordType.local.index));
    return query.map((p0) => p0.id).get();
  }

  Future<List<int>> fetchLocalSurvIds() async {
    final query = select(surv)..where((t) => t.recordType.equals(RecordType.local.index));
    return query.map((p0) => p0.id).get();
  }
}

void _logError(String name, Object err) {
  final message = 'Name: $name, Error: $err';

  // print to stdout
  if (kDebugMode) {
    print(message);
  }
}
