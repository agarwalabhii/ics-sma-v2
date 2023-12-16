import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/model/sync_data.dart';
import 'package:sma_remote_data/src/domain/user/decorator/user_fetch_decorator.dart';
import 'package:sma_remote_data/src/domain/user/repository/user_set_repository_remote.dart';

part 'sync_user_set_usecase.g.dart';

@riverpod
class SyncUserSetUsecase extends _$SyncUserSetUsecase {

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  Future<int> syncAll({required Function(int count) updateFunc}) async {
    final remoteRepo = ref.read(userSetRepositoryRemoteProvider.notifier);
    final localRepo = ref.read(userRepositoryLocalProvider.notifier);
    final syncData = SyncData(timestamp: DateTime.now(), status: SyncStatus.synchronized);
    final decorator = UserFetchDecorator(updateFunc: updateFunc, syncData: syncData);
    final streamSet = remoteRepo.fetchAll(decorator);
    final count = await localRepo.createSet(stream: streamSet);
    return count;
  }
}
