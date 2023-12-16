
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/model/sync_data.dart';
import 'package:sma_remote_data/src/domain/user/model/role_remote.dart';

class RoleFetchDecorator implements FetchDecorator<RoleData, RoleRemote> {

  RoleFetchDecorator({required this.updateFunc, this.syncData});

  @override
  final Function(int count) updateFunc;
  final SyncData? syncData;

  @override
  RoleData apply(RoleRemote remote) {
    return RoleData(
      id: remote.roleID!,
      name: remote.roleName,
      type: remote.roleType,
    );
  }
}