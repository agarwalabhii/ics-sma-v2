import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/state/remote_config.dart';
import 'package:sma_remote_data/src/domain/user/decorator/employee_fetch_decorator.dart';
import 'package:sma_remote_data/src/domain/user/model/employee_remote.dart';
import 'package:sma_remote_data/src/domain/user/repository/fetch_remote_mixin.dart';

part 'employee_set_repository_remote.g.dart';

@riverpod
class EmployeeSetRepositoryRemote extends _$EmployeeSetRepositoryRemote
    with
        FetchRemoteMixin<EmployeeData, EmployeeRemote, EmployeeFetchDecorator>
    implements
        RemoteImmutableSetRepository<EmployeeData, EmployeeRemote,
            EmployeeFetchDecorator>,
        TransportStateAware {
  late final _remoteConfig = ref.read(remoteConfigProvider.notifier);

  @override
  FutureOr<TransportState> build() {
    return TransportState();
  }

  @override
  Future<RemoteResponseData<EmployeeRemote>> fetchPage(int pageNumber) async {
    final response = await _remoteConfig.anetSchema.employeeAllGet(
      page: pageNumber,
      size: _remoteConfig.fetchPageSize,
    );
    final data = response.body;
    return RemoteResponseData(
        records: data?.records ?? [],
        page: data?.page ?? 0,
        count: data?.count ?? 0,
        totalPages: data?.totalPages ?? 0,
        totalRecords: data?.totalRecords ?? 0);
  }

  @override
  Future<RemoteResponseData<EmployeeRemote>> fetchSingle(int id) async {
    final response = await _remoteConfig.anetSchema
        .employeeEmployeeIdGet(employeeId: id, page: 0, size: 1);
    final data = response.body;
    return RemoteResponseData(
        records: data?.records ?? [],
        page: data?.page ?? 0,
        count: data?.count ?? 0,
        totalPages: data?.totalPages ?? 0,
        totalRecords: data?.totalRecords ?? 0,
        error: response.error);
  }
}
