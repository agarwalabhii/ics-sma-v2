// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'govform_surv_record_v1_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GovformSurvRecordV1Model {
  int? get version => throw _privateConstructorUsedError;
  int? get survId => throw _privateConstructorUsedError;
  int? get firmId => throw _privateConstructorUsedError;
  String? get firmName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GovformSurvRecordV1ModelCopyWith<GovformSurvRecordV1Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GovformSurvRecordV1ModelCopyWith<$Res> {
  factory $GovformSurvRecordV1ModelCopyWith(GovformSurvRecordV1Model value,
          $Res Function(GovformSurvRecordV1Model) then) =
      _$GovformSurvRecordV1ModelCopyWithImpl<$Res, GovformSurvRecordV1Model>;
  @useResult
  $Res call({int? version, int? survId, int? firmId, String? firmName});
}

/// @nodoc
class _$GovformSurvRecordV1ModelCopyWithImpl<$Res,
        $Val extends GovformSurvRecordV1Model>
    implements $GovformSurvRecordV1ModelCopyWith<$Res> {
  _$GovformSurvRecordV1ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? survId = freezed,
    Object? firmId = freezed,
    Object? firmName = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      survId: freezed == survId
          ? _value.survId
          : survId // ignore: cast_nullable_to_non_nullable
              as int?,
      firmId: freezed == firmId
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int?,
      firmName: freezed == firmName
          ? _value.firmName
          : firmName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GovformSurvRecordV1ModelImplCopyWith<$Res>
    implements $GovformSurvRecordV1ModelCopyWith<$Res> {
  factory _$$GovformSurvRecordV1ModelImplCopyWith(
          _$GovformSurvRecordV1ModelImpl value,
          $Res Function(_$GovformSurvRecordV1ModelImpl) then) =
      __$$GovformSurvRecordV1ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? version, int? survId, int? firmId, String? firmName});
}

/// @nodoc
class __$$GovformSurvRecordV1ModelImplCopyWithImpl<$Res>
    extends _$GovformSurvRecordV1ModelCopyWithImpl<$Res,
        _$GovformSurvRecordV1ModelImpl>
    implements _$$GovformSurvRecordV1ModelImplCopyWith<$Res> {
  __$$GovformSurvRecordV1ModelImplCopyWithImpl(
      _$GovformSurvRecordV1ModelImpl _value,
      $Res Function(_$GovformSurvRecordV1ModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? survId = freezed,
    Object? firmId = freezed,
    Object? firmName = freezed,
  }) {
    return _then(_$GovformSurvRecordV1ModelImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      survId: freezed == survId
          ? _value.survId
          : survId // ignore: cast_nullable_to_non_nullable
              as int?,
      firmId: freezed == firmId
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int?,
      firmName: freezed == firmName
          ? _value.firmName
          : firmName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GovformSurvRecordV1ModelImpl implements _GovformSurvRecordV1Model {
  _$GovformSurvRecordV1ModelImpl(
      {this.version = 3, this.survId, this.firmId, this.firmName});

  @override
  @JsonKey()
  final int? version;
  @override
  final int? survId;
  @override
  final int? firmId;
  @override
  final String? firmName;

  @override
  String toString() {
    return 'GovformSurvRecordV1Model(version: $version, survId: $survId, firmId: $firmId, firmName: $firmName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovformSurvRecordV1ModelImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.survId, survId) || other.survId == survId) &&
            (identical(other.firmId, firmId) || other.firmId == firmId) &&
            (identical(other.firmName, firmName) ||
                other.firmName == firmName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, version, survId, firmId, firmName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GovformSurvRecordV1ModelImplCopyWith<_$GovformSurvRecordV1ModelImpl>
      get copyWith => __$$GovformSurvRecordV1ModelImplCopyWithImpl<
          _$GovformSurvRecordV1ModelImpl>(this, _$identity);
}

abstract class _GovformSurvRecordV1Model implements GovformSurvRecordV1Model {
  factory _GovformSurvRecordV1Model(
      {final int? version,
      final int? survId,
      final int? firmId,
      final String? firmName}) = _$GovformSurvRecordV1ModelImpl;

  @override
  int? get version;
  @override
  int? get survId;
  @override
  int? get firmId;
  @override
  String? get firmName;
  @override
  @JsonKey(ignore: true)
  _$$GovformSurvRecordV1ModelImplCopyWith<_$GovformSurvRecordV1ModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
