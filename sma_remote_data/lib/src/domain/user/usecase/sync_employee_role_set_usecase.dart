import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/model/sync_data.dart';
import 'package:sma_remote_data/src/domain/user/decorator/employee_role_fetch_decorator.dart';
import 'package:sma_remote_data/src/domain/user/repository/employee_role_set_repository_remote.dart';

part 'sync_employee_role_set_usecase.g.dart';

@riverpod
class SyncEmployeeRoleSetUsecase extends _$SyncEmployeeRoleSetUsecase {

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  Future<int> syncAll({required Function(int count) updateFunc}) async {
    final remoteRepo = ref.read(employeeRoleSetRepositoryRemoteProvider.notifier);
    final localRepo = ref.read(employeeRoleRepositoryLocalProvider.notifier);
    final syncData = SyncData(timestamp: DateTime.now(), status: SyncStatus.synchronized);
    final decorator = EmployeeRoleFetchDecorator(updateFunc: updateFunc, syncData: syncData);
    final streamSet = remoteRepo.fetchAll(decorator);
    final count = await localRepo.createSet(stream: streamSet);
    return count;
  }
}
