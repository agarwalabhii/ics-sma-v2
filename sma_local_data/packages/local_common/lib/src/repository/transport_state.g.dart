// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransportStateImpl _$$TransportStateImplFromJson(Map<String, dynamic> json) =>
    _$TransportStateImpl(
      name: json['name'] as String?,
      startTimestamp: json['startTimestamp'] == null
          ? null
          : DateTime.parse(json['startTimestamp'] as String),
      endTimestamp: json['endTimestamp'] == null
          ? null
          : DateTime.parse(json['endTimestamp'] as String),
      durationInMillis: json['durationInMillis'] as int? ?? 0,
      count: json['count'] as int? ?? 0,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransportStateImplToJson(
        _$TransportStateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startTimestamp': instance.startTimestamp?.toIso8601String(),
      'endTimestamp': instance.endTimestamp?.toIso8601String(),
      'durationInMillis': instance.durationInMillis,
      'count': instance.count,
      'messages': instance.messages,
    };
