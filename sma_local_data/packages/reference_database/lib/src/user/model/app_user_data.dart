// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reference_database/reference_database.dart';

part 'app_user_data.freezed.dart';

/// {@template app_user}
/// AppUserData description
/// {@endtemplate}
@freezed
class AppUserData with _$AppUserData {
  /// {@macro app_user}
  const factory AppUserData({
    UserData? userData,
    EmployeeData? employeeData,
    @Default(38) int? selectedRoleId,
    @Default(400) int? selectedRegionCode,
    int? selectedSubregionCode,
  }) = _AppUserData;
}
