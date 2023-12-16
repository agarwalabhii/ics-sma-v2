// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppUserData {
  UserData? get userData => throw _privateConstructorUsedError;
  EmployeeData? get employeeData => throw _privateConstructorUsedError;
  int? get selectedRoleId => throw _privateConstructorUsedError;
  int? get selectedRegionCode => throw _privateConstructorUsedError;
  int? get selectedSubregionCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserDataCopyWith<AppUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserDataCopyWith<$Res> {
  factory $AppUserDataCopyWith(
          AppUserData value, $Res Function(AppUserData) then) =
      _$AppUserDataCopyWithImpl<$Res, AppUserData>;
  @useResult
  $Res call(
      {UserData? userData,
      EmployeeData? employeeData,
      int? selectedRoleId,
      int? selectedRegionCode,
      int? selectedSubregionCode});
}

/// @nodoc
class _$AppUserDataCopyWithImpl<$Res, $Val extends AppUserData>
    implements $AppUserDataCopyWith<$Res> {
  _$AppUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? employeeData = freezed,
    Object? selectedRoleId = freezed,
    Object? selectedRegionCode = freezed,
    Object? selectedSubregionCode = freezed,
  }) {
    return _then(_value.copyWith(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      employeeData: freezed == employeeData
          ? _value.employeeData
          : employeeData // ignore: cast_nullable_to_non_nullable
              as EmployeeData?,
      selectedRoleId: freezed == selectedRoleId
          ? _value.selectedRoleId
          : selectedRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedRegionCode: freezed == selectedRegionCode
          ? _value.selectedRegionCode
          : selectedRegionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedSubregionCode: freezed == selectedSubregionCode
          ? _value.selectedSubregionCode
          : selectedSubregionCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserDataImplCopyWith<$Res>
    implements $AppUserDataCopyWith<$Res> {
  factory _$$AppUserDataImplCopyWith(
          _$AppUserDataImpl value, $Res Function(_$AppUserDataImpl) then) =
      __$$AppUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserData? userData,
      EmployeeData? employeeData,
      int? selectedRoleId,
      int? selectedRegionCode,
      int? selectedSubregionCode});
}

/// @nodoc
class __$$AppUserDataImplCopyWithImpl<$Res>
    extends _$AppUserDataCopyWithImpl<$Res, _$AppUserDataImpl>
    implements _$$AppUserDataImplCopyWith<$Res> {
  __$$AppUserDataImplCopyWithImpl(
      _$AppUserDataImpl _value, $Res Function(_$AppUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? employeeData = freezed,
    Object? selectedRoleId = freezed,
    Object? selectedRegionCode = freezed,
    Object? selectedSubregionCode = freezed,
  }) {
    return _then(_$AppUserDataImpl(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData?,
      employeeData: freezed == employeeData
          ? _value.employeeData
          : employeeData // ignore: cast_nullable_to_non_nullable
              as EmployeeData?,
      selectedRoleId: freezed == selectedRoleId
          ? _value.selectedRoleId
          : selectedRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedRegionCode: freezed == selectedRegionCode
          ? _value.selectedRegionCode
          : selectedRegionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedSubregionCode: freezed == selectedSubregionCode
          ? _value.selectedSubregionCode
          : selectedSubregionCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AppUserDataImpl implements _AppUserData {
  const _$AppUserDataImpl(
      {this.userData,
      this.employeeData,
      this.selectedRoleId = 38,
      this.selectedRegionCode = 400,
      this.selectedSubregionCode});

  @override
  final UserData? userData;
  @override
  final EmployeeData? employeeData;
  @override
  @JsonKey()
  final int? selectedRoleId;
  @override
  @JsonKey()
  final int? selectedRegionCode;
  @override
  final int? selectedSubregionCode;

  @override
  String toString() {
    return 'AppUserData(userData: $userData, employeeData: $employeeData, selectedRoleId: $selectedRoleId, selectedRegionCode: $selectedRegionCode, selectedSubregionCode: $selectedSubregionCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserDataImpl &&
            const DeepCollectionEquality().equals(other.userData, userData) &&
            const DeepCollectionEquality()
                .equals(other.employeeData, employeeData) &&
            (identical(other.selectedRoleId, selectedRoleId) ||
                other.selectedRoleId == selectedRoleId) &&
            (identical(other.selectedRegionCode, selectedRegionCode) ||
                other.selectedRegionCode == selectedRegionCode) &&
            (identical(other.selectedSubregionCode, selectedSubregionCode) ||
                other.selectedSubregionCode == selectedSubregionCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userData),
      const DeepCollectionEquality().hash(employeeData),
      selectedRoleId,
      selectedRegionCode,
      selectedSubregionCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserDataImplCopyWith<_$AppUserDataImpl> get copyWith =>
      __$$AppUserDataImplCopyWithImpl<_$AppUserDataImpl>(this, _$identity);
}

abstract class _AppUserData implements AppUserData {
  const factory _AppUserData(
      {final UserData? userData,
      final EmployeeData? employeeData,
      final int? selectedRoleId,
      final int? selectedRegionCode,
      final int? selectedSubregionCode}) = _$AppUserDataImpl;

  @override
  UserData? get userData;
  @override
  EmployeeData? get employeeData;
  @override
  int? get selectedRoleId;
  @override
  int? get selectedRegionCode;
  @override
  int? get selectedSubregionCode;
  @override
  @JsonKey(ignore: true)
  _$$AppUserDataImplCopyWith<_$AppUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
