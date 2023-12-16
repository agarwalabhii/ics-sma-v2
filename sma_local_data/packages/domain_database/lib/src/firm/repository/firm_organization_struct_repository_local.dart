import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/firm/table/firm_organization_struct_table.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import 'package:domain_database/src/domain_database.dart' as db;

part 'firm_organization_struct_repository_local.g.dart';

@riverpod
class FirmOrganizationStructRepositoryLocal extends _$FirmOrganizationStructRepositoryLocal
    with
        DomainMutateMixin<FirmOrganizationStruct, db.FirmOrganizationStructData>,
        DomainFetchIdMixin<FirmOrganizationStruct, db.FirmOrganizationStructData>,
        DomainDeleteMixin<FirmOrganizationStruct, db.FirmOrganizationStructData>
    implements
        LocalMutableRepository<db.FirmOrganizationStructData>,
        TransportStateAware {
  @override
  late final db.DomainDatabase database = ref.read(db.DomainDatabase.provider);

  @override
  drift.TableInfo<FirmOrganizationStruct, db.FirmOrganizationStructData> get table =>
      database.firmOrganizationStruct;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }
  
  @override
  bool isSparseData(db.FirmOrganizationStructData dataClass) => false;
}
