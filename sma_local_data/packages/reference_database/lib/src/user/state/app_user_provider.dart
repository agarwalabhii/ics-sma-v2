

import 'package:reference_database/reference_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_provider.g.dart';

@Riverpod(keepAlive: true)
class AppUser extends _$AppUser {

  @override
  AppUserData build() {
    return AppUserData();
  }

  void setUserData(UserData? data) {
    state = AppUserData(userData: data);
  }

  void setEmployeeData(EmployeeData? data) {
    state = state.copyWith(employeeData: data);
  }
}
