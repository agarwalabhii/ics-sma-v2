// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metric_data.freezed.dart';
part 'metric_data.g.dart';

/// {@template metric_data}
/// MetricData description
/// {@endtemplate}
@freezed
class MetricData with _$MetricData {
  /// {@macro metric_data}
  const factory MetricData({ 
    DateTime? startMeasurement,
    DateTime? endMeasurement,
    @Default(0) int lengthMeasurement,
    @Default(0) double lastBytesPerMillis,
  }) = _MetricData;
  
    /// Creates a MetricData from Json map
  factory MetricData.fromJson(Map<String, dynamic> data) => MetricData.fromJson(data);
}
