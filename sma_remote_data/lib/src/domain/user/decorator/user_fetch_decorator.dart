
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/domain/api/model/sync_data.dart';
import 'package:sma_remote_data/src/domain/user/model/user_remote.dart';

class UserFetchDecorator implements FetchDecorator<UserData, UserRemote> {

  UserFetchDecorator({required this.updateFunc, this.syncData});

  @override
  final Function(int count) updateFunc;
  final SyncData? syncData;

  @override
  UserData apply(UserRemote remote) {
    return UserData(
      id: remote.empId!,
      eauthId: remote.eauthId ?? "",
      level: remote.userLevel ?? 0,
    );
  }
}