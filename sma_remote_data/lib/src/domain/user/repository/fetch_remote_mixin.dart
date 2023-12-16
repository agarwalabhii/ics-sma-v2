
import 'package:sma_local_data/sma_local_data.dart';

abstract mixin class FetchRemoteMixin<L, R, D extends FetchDecorator<L, R>> {

  Stream<L> fetchAll(D decorator) async* {
    int currentPage = 0;
    int count = 0;

    while (true) {
      final response = await fetchPage(currentPage);

      for (R remote in response.records) {
        yield decorator.apply(remote);
        count++;
      }

      decorator.updateFunc(count);

      if (currentPage == response.totalPages) {
        break;
      }
      currentPage++;
    }
  }

  Future<RemoteResponseData<R>> fetchPage(int pageNumber);

  Future<RemoteResponseData<R>> fetchSingle(int id);

  Future<L?> fetchById(int id, D decorator) async {
    final response = await fetchSingle(id);
    final data = response.records;
    if (data.isNotEmpty) {
      return decorator.apply(data.first);
    }
    return null;
  }
}
