// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormAction {
  FormActionType get type => throw _privateConstructorUsedError;
  ActionLifeCycle get lifecyle => throw _privateConstructorUsedError;
  SaveSubActionType? get saveSubActionType =>
      throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  int? get creatorId => throw _privateConstructorUsedError;
  String? get creatorName => throw _privateConstructorUsedError;
  NavigationAction? get navigationAction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormActionCopyWith<FormAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormActionCopyWith<$Res> {
  factory $FormActionCopyWith(
          FormAction value, $Res Function(FormAction) then) =
      _$FormActionCopyWithImpl<$Res, FormAction>;
  @useResult
  $Res call(
      {FormActionType type,
      ActionLifeCycle lifecyle,
      SaveSubActionType? saveSubActionType,
      DateTime? timestamp,
      int? creatorId,
      String? creatorName,
      NavigationAction? navigationAction});
}

/// @nodoc
class _$FormActionCopyWithImpl<$Res, $Val extends FormAction>
    implements $FormActionCopyWith<$Res> {
  _$FormActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? lifecyle = null,
    Object? saveSubActionType = freezed,
    Object? timestamp = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? navigationAction = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FormActionType,
      lifecyle: null == lifecyle
          ? _value.lifecyle
          : lifecyle // ignore: cast_nullable_to_non_nullable
              as ActionLifeCycle,
      saveSubActionType: freezed == saveSubActionType
          ? _value.saveSubActionType
          : saveSubActionType // ignore: cast_nullable_to_non_nullable
              as SaveSubActionType?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationAction: freezed == navigationAction
          ? _value.navigationAction
          : navigationAction // ignore: cast_nullable_to_non_nullable
              as NavigationAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormActionImplCopyWith<$Res>
    implements $FormActionCopyWith<$Res> {
  factory _$$FormActionImplCopyWith(
          _$FormActionImpl value, $Res Function(_$FormActionImpl) then) =
      __$$FormActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormActionType type,
      ActionLifeCycle lifecyle,
      SaveSubActionType? saveSubActionType,
      DateTime? timestamp,
      int? creatorId,
      String? creatorName,
      NavigationAction? navigationAction});
}

/// @nodoc
class __$$FormActionImplCopyWithImpl<$Res>
    extends _$FormActionCopyWithImpl<$Res, _$FormActionImpl>
    implements _$$FormActionImplCopyWith<$Res> {
  __$$FormActionImplCopyWithImpl(
      _$FormActionImpl _value, $Res Function(_$FormActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? lifecyle = null,
    Object? saveSubActionType = freezed,
    Object? timestamp = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? navigationAction = freezed,
  }) {
    return _then(_$FormActionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FormActionType,
      lifecyle: null == lifecyle
          ? _value.lifecyle
          : lifecyle // ignore: cast_nullable_to_non_nullable
              as ActionLifeCycle,
      saveSubActionType: freezed == saveSubActionType
          ? _value.saveSubActionType
          : saveSubActionType // ignore: cast_nullable_to_non_nullable
              as SaveSubActionType?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      navigationAction: freezed == navigationAction
          ? _value.navigationAction
          : navigationAction // ignore: cast_nullable_to_non_nullable
              as NavigationAction?,
    ));
  }
}

/// @nodoc

class _$FormActionImpl implements _FormAction {
  const _$FormActionImpl(
      {this.type = FormActionType.initial,
      this.lifecyle = ActionLifeCycle.initiated,
      this.saveSubActionType,
      this.timestamp,
      this.creatorId,
      this.creatorName,
      this.navigationAction});

  @override
  @JsonKey()
  final FormActionType type;
  @override
  @JsonKey()
  final ActionLifeCycle lifecyle;
  @override
  final SaveSubActionType? saveSubActionType;
  @override
  final DateTime? timestamp;
  @override
  final int? creatorId;
  @override
  final String? creatorName;
  @override
  final NavigationAction? navigationAction;

  @override
  String toString() {
    return 'FormAction(type: $type, lifecyle: $lifecyle, saveSubActionType: $saveSubActionType, timestamp: $timestamp, creatorId: $creatorId, creatorName: $creatorName, navigationAction: $navigationAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormActionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lifecyle, lifecyle) ||
                other.lifecyle == lifecyle) &&
            (identical(other.saveSubActionType, saveSubActionType) ||
                other.saveSubActionType == saveSubActionType) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.navigationAction, navigationAction) ||
                other.navigationAction == navigationAction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, lifecyle,
      saveSubActionType, timestamp, creatorId, creatorName, navigationAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormActionImplCopyWith<_$FormActionImpl> get copyWith =>
      __$$FormActionImplCopyWithImpl<_$FormActionImpl>(this, _$identity);
}

abstract class _FormAction implements FormAction {
  const factory _FormAction(
      {final FormActionType type,
      final ActionLifeCycle lifecyle,
      final SaveSubActionType? saveSubActionType,
      final DateTime? timestamp,
      final int? creatorId,
      final String? creatorName,
      final NavigationAction? navigationAction}) = _$FormActionImpl;

  @override
  FormActionType get type;
  @override
  ActionLifeCycle get lifecyle;
  @override
  SaveSubActionType? get saveSubActionType;
  @override
  DateTime? get timestamp;
  @override
  int? get creatorId;
  @override
  String? get creatorName;
  @override
  NavigationAction? get navigationAction;
  @override
  @JsonKey(ignore: true)
  _$$FormActionImplCopyWith<_$FormActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
