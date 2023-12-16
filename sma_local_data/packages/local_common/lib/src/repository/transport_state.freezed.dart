// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportState _$TransportStateFromJson(Map<String, dynamic> json) {
  return _TransportState.fromJson(json);
}

/// @nodoc
mixin _$TransportState {
  String? get name => throw _privateConstructorUsedError;
  DateTime? get startTimestamp => throw _privateConstructorUsedError;
  DateTime? get endTimestamp => throw _privateConstructorUsedError;
  int get durationInMillis => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<String> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportStateCopyWith<TransportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportStateCopyWith<$Res> {
  factory $TransportStateCopyWith(
          TransportState value, $Res Function(TransportState) then) =
      _$TransportStateCopyWithImpl<$Res, TransportState>;
  @useResult
  $Res call(
      {String? name,
      DateTime? startTimestamp,
      DateTime? endTimestamp,
      int durationInMillis,
      int count,
      List<String> messages});
}

/// @nodoc
class _$TransportStateCopyWithImpl<$Res, $Val extends TransportState>
    implements $TransportStateCopyWith<$Res> {
  _$TransportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? durationInMillis = null,
    Object? count = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportStateImplCopyWith<$Res>
    implements $TransportStateCopyWith<$Res> {
  factory _$$TransportStateImplCopyWith(_$TransportStateImpl value,
          $Res Function(_$TransportStateImpl) then) =
      __$$TransportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      DateTime? startTimestamp,
      DateTime? endTimestamp,
      int durationInMillis,
      int count,
      List<String> messages});
}

/// @nodoc
class __$$TransportStateImplCopyWithImpl<$Res>
    extends _$TransportStateCopyWithImpl<$Res, _$TransportStateImpl>
    implements _$$TransportStateImplCopyWith<$Res> {
  __$$TransportStateImplCopyWithImpl(
      _$TransportStateImpl _value, $Res Function(_$TransportStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? durationInMillis = null,
    Object? count = null,
    Object? messages = null,
  }) {
    return _then(_$TransportStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportStateImpl implements _TransportState {
  const _$TransportStateImpl(
      {this.name,
      this.startTimestamp,
      this.endTimestamp,
      this.durationInMillis = 0,
      this.count = 0,
      final List<String> messages = const []})
      : _messages = messages;

  factory _$TransportStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportStateImplFromJson(json);

  @override
  final String? name;
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
  final List<String> _messages;
  @override
  @JsonKey()
  List<String> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'TransportState(name: $name, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, durationInMillis: $durationInMillis, count: $count, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.durationInMillis, durationInMillis) ||
                other.durationInMillis == durationInMillis) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      startTimestamp,
      endTimestamp,
      durationInMillis,
      count,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportStateImplCopyWith<_$TransportStateImpl> get copyWith =>
      __$$TransportStateImplCopyWithImpl<_$TransportStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportStateImplToJson(
      this,
    );
  }
}

abstract class _TransportState implements TransportState {
  const factory _TransportState(
      {final String? name,
      final DateTime? startTimestamp,
      final DateTime? endTimestamp,
      final int durationInMillis,
      final int count,
      final List<String> messages}) = _$TransportStateImpl;

  factory _TransportState.fromJson(Map<String, dynamic> json) =
      _$TransportStateImpl.fromJson;

  @override
  String? get name;
  @override
  DateTime? get startTimestamp;
  @override
  DateTime? get endTimestamp;
  @override
  int get durationInMillis;
  @override
  int get count;
  @override
  List<String> get messages;
  @override
  @JsonKey(ignore: true)
  _$$TransportStateImplCopyWith<_$TransportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
