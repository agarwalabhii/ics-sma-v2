

import 'package:sma_remote_data/src/domain/api/model/metric_data.dart';

class Metrics {
  const Metrics._({required this.data});

  static var instance = Metrics._(data: MetricData());

  final MetricData data;

  static void setMetricData(MetricData? data) {
    instance = Metrics._(data: data ?? MetricData());
  }

  double? get computeBytesPerMillis {
    if (data.startMeasurement != null && data.endMeasurement != null && data.lengthMeasurement > 0) {
      if (data.endMeasurement!.isAfter(data.startMeasurement!)) {
        final difference = data.endMeasurement!.difference(data.startMeasurement!);
        final millis = difference.inMilliseconds;
        return data.lengthMeasurement / millis; 
      }
    }
    return null;
  }
}