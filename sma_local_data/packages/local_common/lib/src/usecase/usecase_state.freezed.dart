// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usecase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsecaseState _$UsecaseStateFromJson(Map<String, dynamic> json) {
  return _UsecaseState.fromJson(json);
}

/// @nodoc
mixin _$UsecaseState {
  DateTime? get startTimestamp => throw _privateConstructorUsedError;
  DateTime? get endTimestamp => throw _privateConstructorUsedError;
  int get durationInMillis => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<TransportState> get transportStates =>
      throw _privateConstructorUsedError;
  Object? get lastError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsecaseStateCopyWith<UsecaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsecaseStateCopyWith<$Res> {
  factory $UsecaseStateCopyWith(
          UsecaseState value, $Res Function(UsecaseState) then) =
      _$UsecaseStateCopyWithImpl<$Res, UsecaseState>;
  @useResult
  $Res call(
      {DateTime? startTimestamp,
      DateTime? endTimestamp,
      int durationInMillis,
      int count,
      List<TransportState> transportStates,
      Object? lastError});
}

/// @nodoc
class _$UsecaseStateCopyWithImpl<$Res, $Val extends UsecaseState>
    implements $UsecaseStateCopyWith<$Res> {
  _$UsecaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? durationInMillis = null,
    Object? count = null,
    Object? transportStates = null,
    Object? lastError = freezed,
  }) {
    return _then(_value.copyWith(
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      durationInMillis: null == durationInMillis
          ? _value.durationInMillis
          : durationInMillis // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      transportStates: null == transportStates
          ? _value.transportStates
          : transportStates // ignore: cast_nullable_to_non_nullable
              as List<TransportState>,
      lastError: freezed == lastError ? _value.lastError : lastError,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsecaseStateImplCopyWith<$Res>
    implements $UsecaseStateCopyWith<$Res> {
  factory _$$UsecaseStateImplCopyWith(
          _$UsecaseStateImpl value, $Res Function(_$UsecaseStateImpl) then) =
      __$$UsecaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startTimestamp,
      DateTime? endTimestamp,
      int durationInMillis,
      int count,
      List<TransportState> transportStates,
      Object? lastError});
}

/// @nodoc
class __$$UsecaseStateImplCopyWithImpl<$Res>
    extends _$UsecaseStateCopyWithImpl<$Res, _$UsecaseStateImpl>
    implements _$$UsecaseStateImplCopyWith<$Res> {
  __$$UsecaseStateImplCopyWithImpl(
      _$UsecaseStateImpl _value, $Res Function(_$UsecaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? durationInMillis = null,
    Object? count = null,
    Object? transportStates = null,
    Object? lastError = freezed,
  }) {
    return _then(_$UsecaseStateImpl(
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      durationInMillis: null == durationInMillis
          ? _value.durationInMillis
          : durationInMillis // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      transportStates: null == transportStates
          ? _value._transportStates
          : transportStates // ignore: cast_nullable_to_non_nullable
              as List<TransportState>,
      lastError: freezed == lastError ? _value.lastError : lastError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsecaseStateImpl implements _UsecaseState {
  const _$UsecaseStateImpl(
      {this.startTimestamp,
      this.endTimestamp,
      this.durationInMillis = 0,
      this.count = 0,
      final List<TransportState> transportStates = const [],
      this.lastError})
      : _transportStates = transportStates;

  factory _$UsecaseStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsecaseStateImplFromJson(json);

  @override
  final DateTime? startTimestamp;
  @override
  final DateTime? endTimestamp;
  @override
  @JsonKey()
  final int durationInMillis;
  @override
  @JsonKey()
  final int count;
  final List<TransportState> _transportStates;
  @override
  @JsonKey()
  List<TransportState> get transportStates {
    if (_transportStates is EqualUnmodifiableListView) return _transportStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportStates);
  }

  @override
  final Object? lastError;

  @override
  String toString() {
    return 'UsecaseState(startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, durationInMillis: $durationInMillis, count: $count, transportStates: $transportStates, lastError: $lastError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsecaseStateImpl &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.durationInMillis, durationInMillis) ||
                other.durationInMillis == durationInMillis) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._transportStates, _transportStates) &&
            const DeepCollectionEquality().equals(other.lastError, lastError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      startTimestamp,
      endTimestamp,
      durationInMillis,
      count,
      const DeepCollectionEquality().hash(_transportStates),
      const DeepCollectionEquality().hash(lastError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsecaseStateImplCopyWith<_$UsecaseStateImpl> get copyWith =>
      __$$UsecaseStateImplCopyWithImpl<_$UsecaseStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsecaseStateImplToJson(
      this,
    );
  }
}

abstract class _UsecaseState implements UsecaseState {
  const factory _UsecaseState(
      {final DateTime? startTimestamp,
      final DateTime? endTimestamp,
      final int durationInMillis,
      final int count,
      final List<TransportState> transportStates,
      final Object? lastError}) = _$UsecaseStateImpl;

  factory _UsecaseState.fromJson(Map<String, dynamic> json) =
      _$UsecaseStateImpl.fromJson;

  @override
  DateTime? get startTimestamp;
  @override
  DateTime? get endTimestamp;
  @override
  int get durationInMillis;
  @override
  int get count;
  @override
  List<TransportState> get transportStates;
  @override
  Object? get lastError;
  @override
  @JsonKey(ignore: true)
  _$$UsecaseStateImplCopyWith<_$UsecaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
