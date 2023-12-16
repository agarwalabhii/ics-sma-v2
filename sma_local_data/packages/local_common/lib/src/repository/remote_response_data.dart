
class RemoteResponseData<R> {
  const RemoteResponseData({
    required this.records,
    required this.page,
    required this.count,
    required this.totalPages,
    required this.totalRecords,
    this.error,
  });

  final List<R> records;
  final int page;
  final int count;
  final int totalPages;
  final int totalRecords;
  final Object? error;

  bool get isSuccessful {
    return error == null;
  }
}
