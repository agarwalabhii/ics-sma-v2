// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsecaseStateImpl _$$UsecaseStateImplFromJson(Map<String, dynamic> json) =>
    _$UsecaseStateImpl(
      startTimestamp: json['startTimestamp'] == null
          ? null
          : DateTime.parse(json['startTimestamp'] as String),
      endTimestamp: json['endTimestamp'] == null
          ? null
          : DateTime.parse(json['endTimestamp'] as String),
      durationInMillis: json['durationInMillis'] as int? ?? 0,
      count: json['count'] as int? ?? 0,
      transportStates: (json['transportStates'] as List<dynamic>?)
              ?.map((e) => TransportState.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastError: json['lastError'],
    );

Map<String, dynamic> _$$UsecaseStateImplToJson(_$UsecaseStateImpl instance) =>
    <String, dynamic>{
      'startTimestamp': instance.startTimestamp?.toIso8601String(),
      'endTimestamp': instance.endTimestamp?.toIso8601String(),
      'durationInMillis': instance.durationInMillis,
      'count': instance.count,
      'transportStates': instance.transportStates,
      'lastError': instance.lastError,
    };
