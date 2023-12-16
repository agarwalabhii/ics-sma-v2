import 'package:local_common/database.dart';

abstract class LocalMutableRepository<D extends DataClassBehavioral> {
  Future<LocalResponseData<D?>> createSingle({required D dataClass, required UpdateStateFunc updateStateFunc});
  Future<LocalResponseData<D?>> createSet({required Stream<D> stream, required UpdateStateFunc updateStateFunc});
  Future<LocalResponseData<D?>> updateSingle({required D dataClass, required UpdateStateFunc updateStateFunc});
  Future<int> deleteSingle({required int id, required UpdateStateFunc updateStateFunc});
  bool isSparseData(D dataClass) => false;
}
