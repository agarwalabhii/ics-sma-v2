// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_county_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateCountyModel {
  int get id => throw _privateConstructorUsedError;
  String? get stateCode => throw _privateConstructorUsedError;
  String? get countyName => throw _privateConstructorUsedError;
  String? get countyCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateCountyModelCopyWith<StateCountyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCountyModelCopyWith<$Res> {
  factory $StateCountyModelCopyWith(
          StateCountyModel value, $Res Function(StateCountyModel) then) =
      _$StateCountyModelCopyWithImpl<$Res, StateCountyModel>;
  @useResult
  $Res call(
      {int id, String? stateCode, String? countyName, String? countyCode});
}

/// @nodoc
class _$StateCountyModelCopyWithImpl<$Res, $Val extends StateCountyModel>
    implements $StateCountyModelCopyWith<$Res> {
  _$StateCountyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stateCode = freezed,
    Object? countyName = freezed,
    Object? countyCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countyName: freezed == countyName
          ? _value.countyName
          : countyName // ignore: cast_nullable_to_non_nullable
              as String?,
      countyCode: freezed == countyCode
          ? _value.countyCode
          : countyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateCountyModelImplCopyWith<$Res>
    implements $StateCountyModelCopyWith<$Res> {
  factory _$$StateCountyModelImplCopyWith(_$StateCountyModelImpl value,
          $Res Function(_$StateCountyModelImpl) then) =
      __$$StateCountyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String? stateCode, String? countyName, String? countyCode});
}

/// @nodoc
class __$$StateCountyModelImplCopyWithImpl<$Res>
    extends _$StateCountyModelCopyWithImpl<$Res, _$StateCountyModelImpl>
    implements _$$StateCountyModelImplCopyWith<$Res> {
  __$$StateCountyModelImplCopyWithImpl(_$StateCountyModelImpl _value,
      $Res Function(_$StateCountyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stateCode = freezed,
    Object? countyName = freezed,
    Object? countyCode = freezed,
  }) {
    return _then(_$StateCountyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countyName: freezed == countyName
          ? _value.countyName
          : countyName // ignore: cast_nullable_to_non_nullable
              as String?,
      countyCode: freezed == countyCode
          ? _value.countyCode
          : countyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StateCountyModelImpl implements _StateCountyModel {
  _$StateCountyModelImpl(
      {this.id = 0,
      this.stateCode = null,
      this.countyName = null,
      this.countyCode = null});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String? stateCode;
  @override
  @JsonKey()
  final String? countyName;
  @override
  @JsonKey()
  final String? countyCode;

  @override
  String toString() {
    return 'StateCountyModel(id: $id, stateCode: $stateCode, countyName: $countyName, countyCode: $countyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateCountyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.countyName, countyName) ||
                other.countyName == countyName) &&
            (identical(other.countyCode, countyCode) ||
                other.countyCode == countyCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, stateCode, countyName, countyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateCountyModelImplCopyWith<_$StateCountyModelImpl> get copyWith =>
      __$$StateCountyModelImplCopyWithImpl<_$StateCountyModelImpl>(
          this, _$identity);
}

abstract class _StateCountyModel implements StateCountyModel {
  factory _StateCountyModel(
      {final int id,
      final String? stateCode,
      final String? countyName,
      final String? countyCode}) = _$StateCountyModelImpl;

  @override
  int get id;
  @override
  String? get stateCode;
  @override
  String? get countyName;
  @override
  String? get countyCode;
  @override
  @JsonKey(ignore: true)
  _$$StateCountyModelImplCopyWith<_$StateCountyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
