import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/domain_fetch_id_mixin.dart';
import 'package:domain_database/src/domain_mutate_mixin.dart';
import 'package:domain_database/src/local_response_executor.dart';
import 'package:domain_database/src/location/table/physical_location_table.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;

part 'physical_location_repository_local.g.dart';

@riverpod
class PhysicalLocationRepositoryLocal extends _$PhysicalLocationRepositoryLocal
  with DomainMutateMixin<PhysicalLocation, PhysicalLocationData>,
  DomainFetchIdMixin<PhysicalLocation, PhysicalLocationData>
  implements LocalMutableRepository<PhysicalLocationData>, TransportStateAware {
  final _executor = LocalResponseExecutor<PhysicalLocationRefData>();

  @override
  late final DomainDatabase database  = ref.read(DomainDatabase.provider);

  @override
  drift.TableInfo<PhysicalLocation, PhysicalLocationData> get table => database.physicalLocation;

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<LocalResponseData<PhysicalLocationRefData?>> fetchRef(int refId, LocationRefType refType) async {
    return await _executor.call(name: "fetchRef", command: () async {
      return database.locationDao.refsBy(refId, refType);
    }, updateStateFunc: _executor.emptyUpdateFunc);
  }
  
  @override
  Future<int> deleteSingle({required int id, required UpdateStateFunc updateStateFunc}) {
    throw UnimplementedError();
  }
  
  @override
  bool isSparseData(PhysicalLocationData dataClass) => false;
}
