import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/firm/table/firm_Product_info_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'firm_product_info_repository_local.g.dart';

@riverpod
class FirmProductInfoRepositoryLocal extends _$FirmProductInfoRepositoryLocal
    with
        DomainMutateMixin<FirmProductInfo, db.FirmProductInfoData>,
        DomainFetchIdMixin<FirmProductInfo, db.FirmProductInfoData>,
        DomainDeleteMixin<FirmProductInfo, db.FirmProductInfoData>
    implements
        LocalMutableRepository<db.FirmProductInfoData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<FirmProductInfo, db.FirmProductInfoData> get table =>
      database.firmProductInfo
          as drift.TableInfo<FirmProductInfo, db.FirmProductInfoData>;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.FirmProductInfoData dataClass) {
    return dataClass.productsHandled == null &&
        dataClass.amenableProducts == null &&
        dataClass.productOrigin == null &&
        dataClass.countryOfOrigin == null;
  }
}
