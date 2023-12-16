// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetricDataImpl _$$MetricDataImplFromJson(Map<String, dynamic> json) =>
    _$MetricDataImpl(
      startMeasurement: json['startMeasurement'] == null
          ? null
          : DateTime.parse(json['startMeasurement'] as String),
      endMeasurement: json['endMeasurement'] == null
          ? null
          : DateTime.parse(json['endMeasurement'] as String),
      lengthMeasurement: json['lengthMeasurement'] as int? ?? 0,
      lastBytesPerMillis: (json['lastBytesPerMillis'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$MetricDataImplToJson(_$MetricDataImpl instance) =>
    <String, dynamic>{
      'startMeasurement': instance.startMeasurement?.toIso8601String(),
      'endMeasurement': instance.endMeasurement?.toIso8601String(),
      'lengthMeasurement': instance.lengthMeasurement,
      'lastBytesPerMillis': instance.lastBytesPerMillis,
    };
