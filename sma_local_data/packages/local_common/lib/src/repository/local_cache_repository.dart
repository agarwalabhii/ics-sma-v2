
abstract class LocalCacheRepository<D> {
  Future<D> createSingle({required D dataClass});
  Future<int> createSet({required Stream<D> stream});
}
