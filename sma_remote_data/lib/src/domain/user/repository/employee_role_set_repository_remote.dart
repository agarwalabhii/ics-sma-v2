import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/state/remote_config.dart';
import 'package:sma_remote_data/src/domain/user/decorator/employee_role_fetch_decorator.dart';
import 'package:sma_remote_data/src/domain/user/model/employee_role_remote.dart';
import 'package:sma_remote_data/src/domain/user/repository/fetch_remote_mixin.dart';

part 'employee_role_set_repository_remote.g.dart';

@riverpod
class EmployeeRoleSetRepositoryRemote extends _$EmployeeRoleSetRepositoryRemote
    with
        FetchRemoteMixin<EmployeeRoleData, EmployeeRoleRemote,
            EmployeeRoleFetchDecorator>
    implements
        RemoteImmutableSetRepository<EmployeeRoleData, EmployeeRoleRemote,
            EmployeeRoleFetchDecorator>,
        TransportStateAware {
  late final _remoteConfig = ref.read(remoteConfigProvider.notifier);

  @override
  FutureOr<TransportState> build() {
    return TransportState();
  }

  @override
  Future<RemoteResponseData<EmployeeRoleRemote>> fetchPage(int pageNumber) async {
    final response = await _remoteConfig.anetSchema.employeeRolesAllGet(
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
  Future<RemoteResponseData<EmployeeRoleRemote>> fetchSingle(int id) async {
    final response = await _remoteConfig.anetSchema
        .employeeRolesActiveEmployeeIdGet(employeeId: id, page: 0, size: 1);
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
