// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_location_ref_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhysicalLocationRefModel {
  int? get locationId => throw _privateConstructorUsedError;
  int? get refId => throw _privateConstructorUsedError;
  LocationRefType? get refType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhysicalLocationRefModelCopyWith<PhysicalLocationRefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalLocationRefModelCopyWith<$Res> {
  factory $PhysicalLocationRefModelCopyWith(PhysicalLocationRefModel value,
          $Res Function(PhysicalLocationRefModel) then) =
      _$PhysicalLocationRefModelCopyWithImpl<$Res, PhysicalLocationRefModel>;
  @useResult
  $Res call({int? locationId, int? refId, LocationRefType? refType});
}

/// @nodoc
class _$PhysicalLocationRefModelCopyWithImpl<$Res,
        $Val extends PhysicalLocationRefModel>
    implements $PhysicalLocationRefModelCopyWith<$Res> {
  _$PhysicalLocationRefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = freezed,
    Object? refId = freezed,
    Object? refType = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      refType: freezed == refType
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as LocationRefType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhysicalLocationRefModelImplCopyWith<$Res>
    implements $PhysicalLocationRefModelCopyWith<$Res> {
  factory _$$PhysicalLocationRefModelImplCopyWith(
          _$PhysicalLocationRefModelImpl value,
          $Res Function(_$PhysicalLocationRefModelImpl) then) =
      __$$PhysicalLocationRefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? locationId, int? refId, LocationRefType? refType});
}

/// @nodoc
class __$$PhysicalLocationRefModelImplCopyWithImpl<$Res>
    extends _$PhysicalLocationRefModelCopyWithImpl<$Res,
        _$PhysicalLocationRefModelImpl>
    implements _$$PhysicalLocationRefModelImplCopyWith<$Res> {
  __$$PhysicalLocationRefModelImplCopyWithImpl(
      _$PhysicalLocationRefModelImpl _value,
      $Res Function(_$PhysicalLocationRefModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = freezed,
    Object? refId = freezed,
    Object? refType = freezed,
  }) {
    return _then(_$PhysicalLocationRefModelImpl(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      refType: freezed == refType
          ? _value.refType
          : refType // ignore: cast_nullable_to_non_nullable
              as LocationRefType?,
    ));
  }
}

/// @nodoc

class _$PhysicalLocationRefModelImpl implements _PhysicalLocationRefModel {
  _$PhysicalLocationRefModelImpl(
      {this.locationId = null, this.refId = null, this.refType = null});

  @override
  @JsonKey()
  final int? locationId;
  @override
  @JsonKey()
  final int? refId;
  @override
  @JsonKey()
  final LocationRefType? refType;

  @override
  String toString() {
    return 'PhysicalLocationRefModel(locationId: $locationId, refId: $refId, refType: $refType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalLocationRefModelImpl &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.refType, refType) || other.refType == refType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationId, refId, refType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalLocationRefModelImplCopyWith<_$PhysicalLocationRefModelImpl>
      get copyWith => __$$PhysicalLocationRefModelImplCopyWithImpl<
          _$PhysicalLocationRefModelImpl>(this, _$identity);
}

abstract class _PhysicalLocationRefModel implements PhysicalLocationRefModel {
  factory _PhysicalLocationRefModel(
      {final int? locationId,
      final int? refId,
      final LocationRefType? refType}) = _$PhysicalLocationRefModelImpl;

  @override
  int? get locationId;
  @override
  int? get refId;
  @override
  LocationRefType? get refType;
  @override
  @JsonKey(ignore: true)
  _$$PhysicalLocationRefModelImplCopyWith<_$PhysicalLocationRefModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
