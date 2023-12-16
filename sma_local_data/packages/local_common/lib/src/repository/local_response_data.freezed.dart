// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalResponseData<D> {
  TransportState? get transportState => throw _privateConstructorUsedError;
  D? get body => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalResponseDataCopyWith<D, LocalResponseData<D>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalResponseDataCopyWith<D, $Res> {
  factory $LocalResponseDataCopyWith(LocalResponseData<D> value,
          $Res Function(LocalResponseData<D>) then) =
      _$LocalResponseDataCopyWithImpl<D, $Res, LocalResponseData<D>>;
  @useResult
  $Res call({TransportState? transportState, D? body, Object? error});

  $TransportStateCopyWith<$Res>? get transportState;
}

/// @nodoc
class _$LocalResponseDataCopyWithImpl<D, $Res,
        $Val extends LocalResponseData<D>>
    implements $LocalResponseDataCopyWith<D, $Res> {
  _$LocalResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportState = freezed,
    Object? body = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      transportState: freezed == transportState
          ? _value.transportState
          : transportState // ignore: cast_nullable_to_non_nullable
              as TransportState?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as D?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportStateCopyWith<$Res>? get transportState {
    if (_value.transportState == null) {
      return null;
    }

    return $TransportStateCopyWith<$Res>(_value.transportState!, (value) {
      return _then(_value.copyWith(transportState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalResponseDataImplCopyWith<D, $Res>
    implements $LocalResponseDataCopyWith<D, $Res> {
  factory _$$LocalResponseDataImplCopyWith(_$LocalResponseDataImpl<D> value,
          $Res Function(_$LocalResponseDataImpl<D>) then) =
      __$$LocalResponseDataImplCopyWithImpl<D, $Res>;
  @override
  @useResult
  $Res call({TransportState? transportState, D? body, Object? error});

  @override
  $TransportStateCopyWith<$Res>? get transportState;
}

/// @nodoc
class __$$LocalResponseDataImplCopyWithImpl<D, $Res>
    extends _$LocalResponseDataCopyWithImpl<D, $Res, _$LocalResponseDataImpl<D>>
    implements _$$LocalResponseDataImplCopyWith<D, $Res> {
  __$$LocalResponseDataImplCopyWithImpl(_$LocalResponseDataImpl<D> _value,
      $Res Function(_$LocalResponseDataImpl<D>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportState = freezed,
    Object? body = freezed,
    Object? error = freezed,
  }) {
    return _then(_$LocalResponseDataImpl<D>(
      transportState: freezed == transportState
          ? _value.transportState
          : transportState // ignore: cast_nullable_to_non_nullable
              as TransportState?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as D?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$LocalResponseDataImpl<D> implements _LocalResponseData<D> {
  const _$LocalResponseDataImpl({this.transportState, this.body, this.error});

  @override
  final TransportState? transportState;
  @override
  final D? body;
  @override
  final Object? error;

  @override
  String toString() {
    return 'LocalResponseData<$D>(transportState: $transportState, body: $body, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalResponseDataImpl<D> &&
            (identical(other.transportState, transportState) ||
                other.transportState == transportState) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      transportState,
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalResponseDataImplCopyWith<D, _$LocalResponseDataImpl<D>>
      get copyWith =>
          __$$LocalResponseDataImplCopyWithImpl<D, _$LocalResponseDataImpl<D>>(
              this, _$identity);
}

abstract class _LocalResponseData<D> implements LocalResponseData<D> {
  const factory _LocalResponseData(
      {final TransportState? transportState,
      final D? body,
      final Object? error}) = _$LocalResponseDataImpl<D>;

  @override
  TransportState? get transportState;
  @override
  D? get body;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$LocalResponseDataImplCopyWith<D, _$LocalResponseDataImpl<D>>
      get copyWith => throw _privateConstructorUsedError;
}
