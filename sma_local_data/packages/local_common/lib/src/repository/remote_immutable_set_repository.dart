import 'package:local_common/database.dart';

abstract class RemoteImmutableSetRepository<D, R, DEC extends FetchDecorator<D, R>> {
  Future<D?> fetchById(int id, DEC decorator);
  Stream<D> fetchAll(DEC decorator);
  Future<RemoteResponseData<R>> fetchPage(int pageNumber);
}
