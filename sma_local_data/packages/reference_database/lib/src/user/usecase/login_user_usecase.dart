
import 'package:local_common/common.dart';
import 'package:reference_database/reference_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_user_usecase.g.dart';

@Riverpod(keepAlive: true)
class LoginUserUsecase extends _$LoginUserUsecase {
  late final _userRepository = ref.read(userRepositoryLocalProvider.notifier);
  late final _employeeRepository = ref.read(employeeRepositoryLocalProvider.notifier);
  late final _appUserNotifier = ref.read(appUserProvider.notifier);

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  Future<bool> initWithEAuthId(String eauthId) async {
    print("initWithEAuthId");

    // fetch user data
    final userData = await _userRepository.fetchByEAuthId(eauthId);
    print("userData: $userData");
    _appUserNotifier.setUserData(userData);
    if (userData == null) {
      return false;
    }

    // fetch employee data
    final employeeData = await _employeeRepository.fetchById(userData.id);
    print("employeeData: $employeeData");
    _appUserNotifier.setEmployeeData(employeeData);
    if (employeeData == null) {
      return false;
    }

    return true;
  }
}