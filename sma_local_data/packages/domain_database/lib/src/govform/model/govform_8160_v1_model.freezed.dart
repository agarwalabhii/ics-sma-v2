// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'govform_8160_v1_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Govform8160V1Model {
  int? get version => throw _privateConstructorUsedError;
  int? get survId => throw _privateConstructorUsedError;
  int? get firmId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Govform8160V1ModelCopyWith<Govform8160V1Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Govform8160V1ModelCopyWith<$Res> {
  factory $Govform8160V1ModelCopyWith(
          Govform8160V1Model value, $Res Function(Govform8160V1Model) then) =
      _$Govform8160V1ModelCopyWithImpl<$Res, Govform8160V1Model>;
  @useResult
  $Res call({int? version, int? survId, int? firmId});
}

/// @nodoc
class _$Govform8160V1ModelCopyWithImpl<$Res, $Val extends Govform8160V1Model>
    implements $Govform8160V1ModelCopyWith<$Res> {
  _$Govform8160V1ModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Govform8160V1ModelImplCopyWith<$Res>
    implements $Govform8160V1ModelCopyWith<$Res> {
  factory _$$Govform8160V1ModelImplCopyWith(_$Govform8160V1ModelImpl value,
          $Res Function(_$Govform8160V1ModelImpl) then) =
      __$$Govform8160V1ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? version, int? survId, int? firmId});
}

/// @nodoc
class __$$Govform8160V1ModelImplCopyWithImpl<$Res>
    extends _$Govform8160V1ModelCopyWithImpl<$Res, _$Govform8160V1ModelImpl>
    implements _$$Govform8160V1ModelImplCopyWith<$Res> {
  __$$Govform8160V1ModelImplCopyWithImpl(_$Govform8160V1ModelImpl _value,
      $Res Function(_$Govform8160V1ModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? survId = freezed,
    Object? firmId = freezed,
  }) {
    return _then(_$Govform8160V1ModelImpl(
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
    ));
  }
}

/// @nodoc

class _$Govform8160V1ModelImpl implements _Govform8160V1Model {
  _$Govform8160V1ModelImpl({this.version = 1, this.survId, this.firmId});

  @override
  @JsonKey()
  final int? version;
  @override
  final int? survId;
  @override
  final int? firmId;

  @override
  String toString() {
    return 'Govform8160V1Model(version: $version, survId: $survId, firmId: $firmId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Govform8160V1ModelImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.survId, survId) || other.survId == survId) &&
            (identical(other.firmId, firmId) || other.firmId == firmId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, survId, firmId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Govform8160V1ModelImplCopyWith<_$Govform8160V1ModelImpl> get copyWith =>
      __$$Govform8160V1ModelImplCopyWithImpl<_$Govform8160V1ModelImpl>(
          this, _$identity);
}

abstract class _Govform8160V1Model implements Govform8160V1Model {
  factory _Govform8160V1Model(
      {final int? version,
      final int? survId,
      final int? firmId}) = _$Govform8160V1ModelImpl;

  @override
  int? get version;
  @override
  int? get survId;
  @override
  int? get firmId;
  @override
  @JsonKey(ignore: true)
  _$$Govform8160V1ModelImplCopyWith<_$Govform8160V1ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
