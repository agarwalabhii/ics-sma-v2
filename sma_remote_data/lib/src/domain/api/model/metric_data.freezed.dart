// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metric_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetricData _$MetricDataFromJson(Map<String, dynamic> json) {
  return _MetricData.fromJson(json);
}

/// @nodoc
mixin _$MetricData {
  DateTime? get startMeasurement => throw _privateConstructorUsedError;
  DateTime? get endMeasurement => throw _privateConstructorUsedError;
  int get lengthMeasurement => throw _privateConstructorUsedError;
  double get lastBytesPerMillis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetricDataCopyWith<MetricData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricDataCopyWith<$Res> {
  factory $MetricDataCopyWith(
          MetricData value, $Res Function(MetricData) then) =
      _$MetricDataCopyWithImpl<$Res, MetricData>;
  @useResult
  $Res call(
      {DateTime? startMeasurement,
      DateTime? endMeasurement,
      int lengthMeasurement,
      double lastBytesPerMillis});
}

/// @nodoc
class _$MetricDataCopyWithImpl<$Res, $Val extends MetricData>
    implements $MetricDataCopyWith<$Res> {
  _$MetricDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startMeasurement = freezed,
    Object? endMeasurement = freezed,
    Object? lengthMeasurement = null,
    Object? lastBytesPerMillis = null,
  }) {
    return _then(_value.copyWith(
      startMeasurement: freezed == startMeasurement
          ? _value.startMeasurement
          : startMeasurement // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endMeasurement: freezed == endMeasurement
          ? _value.endMeasurement
          : endMeasurement // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lengthMeasurement: null == lengthMeasurement
          ? _value.lengthMeasurement
          : lengthMeasurement // ignore: cast_nullable_to_non_nullable
              as int,
      lastBytesPerMillis: null == lastBytesPerMillis
          ? _value.lastBytesPerMillis
          : lastBytesPerMillis // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetricDataImplCopyWith<$Res>
    implements $MetricDataCopyWith<$Res> {
  factory _$$MetricDataImplCopyWith(
          _$MetricDataImpl value, $Res Function(_$MetricDataImpl) then) =
      __$$MetricDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startMeasurement,
      DateTime? endMeasurement,
      int lengthMeasurement,
      double lastBytesPerMillis});
}

/// @nodoc
class __$$MetricDataImplCopyWithImpl<$Res>
    extends _$MetricDataCopyWithImpl<$Res, _$MetricDataImpl>
    implements _$$MetricDataImplCopyWith<$Res> {
  __$$MetricDataImplCopyWithImpl(
      _$MetricDataImpl _value, $Res Function(_$MetricDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startMeasurement = freezed,
    Object? endMeasurement = freezed,
    Object? lengthMeasurement = null,
    Object? lastBytesPerMillis = null,
  }) {
    return _then(_$MetricDataImpl(
      startMeasurement: freezed == startMeasurement
          ? _value.startMeasurement
          : startMeasurement // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endMeasurement: freezed == endMeasurement
          ? _value.endMeasurement
          : endMeasurement // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lengthMeasurement: null == lengthMeasurement
          ? _value.lengthMeasurement
          : lengthMeasurement // ignore: cast_nullable_to_non_nullable
              as int,
      lastBytesPerMillis: null == lastBytesPerMillis
          ? _value.lastBytesPerMillis
          : lastBytesPerMillis // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetricDataImpl implements _MetricData {
  const _$MetricDataImpl(
      {this.startMeasurement,
      this.endMeasurement,
      this.lengthMeasurement = 0,
      this.lastBytesPerMillis = 0});

  factory _$MetricDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetricDataImplFromJson(json);

  @override
  final DateTime? startMeasurement;
  @override
  final DateTime? endMeasurement;
  @override
  @JsonKey()
  final int lengthMeasurement;
  @override
  @JsonKey()
  final double lastBytesPerMillis;

  @override
  String toString() {
    return 'MetricData(startMeasurement: $startMeasurement, endMeasurement: $endMeasurement, lengthMeasurement: $lengthMeasurement, lastBytesPerMillis: $lastBytesPerMillis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetricDataImpl &&
            (identical(other.startMeasurement, startMeasurement) ||
                other.startMeasurement == startMeasurement) &&
            (identical(other.endMeasurement, endMeasurement) ||
                other.endMeasurement == endMeasurement) &&
            (identical(other.lengthMeasurement, lengthMeasurement) ||
                other.lengthMeasurement == lengthMeasurement) &&
            (identical(other.lastBytesPerMillis, lastBytesPerMillis) ||
                other.lastBytesPerMillis == lastBytesPerMillis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startMeasurement, endMeasurement,
      lengthMeasurement, lastBytesPerMillis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetricDataImplCopyWith<_$MetricDataImpl> get copyWith =>
      __$$MetricDataImplCopyWithImpl<_$MetricDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetricDataImplToJson(
      this,
    );
  }
}

abstract class _MetricData implements MetricData {
  const factory _MetricData(
      {final DateTime? startMeasurement,
      final DateTime? endMeasurement,
      final int lengthMeasurement,
      final double lastBytesPerMillis}) = _$MetricDataImpl;

  factory _MetricData.fromJson(Map<String, dynamic> json) =
      _$MetricDataImpl.fromJson;

  @override
  DateTime? get startMeasurement;
  @override
  DateTime? get endMeasurement;
  @override
  int get lengthMeasurement;
  @override
  double get lastBytesPerMillis;
  @override
  @JsonKey(ignore: true)
  _$$MetricDataImplCopyWith<_$MetricDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
