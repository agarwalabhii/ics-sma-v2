import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/state/remote_config.dart';
import 'package:sma_remote_data/src/domain/user/decorator/role_fetch_decorator.dart';
import 'package:sma_remote_data/src/domain/user/model/role_remote.dart';
import 'package:sma_remote_data/src/domain/user/repository/fetch_remote_mixin.dart';

part 'role_set_repository_remote.g.dart';

@riverpod
class RoleSetRepositoryRemote extends _$RoleSetRepositoryRemote
    with
        FetchRemoteMixin<RoleData, RoleRemote, RoleFetchDecorator>
    implements
        RemoteImmutableSetRepository<RoleData, RoleRemote,
            RoleFetchDecorator>,
        TransportStateAware {
  late final _remoteConfig = ref.read(remoteConfigProvider.notifier);

  @override
  FutureOr<TransportState> build() {
    return TransportState();
  }

  @override
  Future<RemoteResponseData<RoleRemote>> fetchPage(int pageNumber) async {
    final response = await _remoteConfig.anetSchema.userRolesAllGet(
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
  Future<RemoteResponseData<RoleRemote>> fetchSingle(int id) async {
    throw UnimplementedError();
  }
}