import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/state/remote_config.dart';
import 'package:sma_remote_data/src/domain/user/decorator/user_fetch_decorator.dart';
import 'package:sma_remote_data/src/domain/user/model/user_remote.dart';
import 'package:sma_remote_data/src/domain/user/repository/fetch_remote_mixin.dart';

part 'user_set_repository_remote.g.dart';

@riverpod
class UserSetRepositoryRemote extends _$UserSetRepositoryRemote
    with
        FetchRemoteMixin<UserData, UserRemote, UserFetchDecorator>
    implements
        RemoteImmutableSetRepository<UserData, UserRemote,
            UserFetchDecorator>,
        TransportStateAware {
  late final _remoteConfig = ref.read(remoteConfigProvider.notifier);

  @override
  FutureOr<TransportState> build() {
    return TransportState();
  }

  @override
  Future<RemoteResponseData<UserRemote>> fetchPage(int pageNumber) async {
    final response = await _remoteConfig.anetSchema.userAllGet(
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
  Future<RemoteResponseData<UserRemote>> fetchSingle(int id) async {
    throw UnimplementedError();
  }
}
