import 'package:domain_database/src/domain_database.dart' as db;
import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/surv/table/surv_imported_product_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;

part 'surv_imported_product_repository_local.g.dart';

@riverpod
class SurvImportedProductRepositoryLocal
    extends _$SurvImportedProductRepositoryLocal
    with
        DomainMutateMixin<SurvImportedProduct, db.SurvImportedProductData>,
        DomainFetchIdMixin<SurvImportedProduct, db.SurvImportedProductData>,
        DomainDeleteMixin<SurvImportedProduct, db.SurvImportedProductData>
    implements
        LocalMutableRepository<db.SurvImportedProductData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<SurvImportedProduct, db.SurvImportedProductData> get table =>
      database.survImportedProduct;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.SurvImportedProductData dataClass) {
    return dataClass.wasImportProductObserved == null &&
        dataClass.hasCheckForFederalImportInspection == null &&
        dataClass.wasCorrectDocumentsRequested == null &&
        dataClass.importedProductsMarks == null &&
        dataClass.hasPhisUsedVerifyProducts == null && 
        dataClass.wasOriginatedFromEligibleForeignCountries == null;
  }
}
