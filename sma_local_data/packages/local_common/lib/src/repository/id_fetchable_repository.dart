
abstract class IdFetchableRepository<D> {
  Future<D?> fetchById(int id);
}
