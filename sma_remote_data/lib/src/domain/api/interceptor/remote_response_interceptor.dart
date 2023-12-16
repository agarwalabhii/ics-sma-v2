
import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:sma_remote_data/src/domain/api/state/metrics.dart';

class RemoteResponseInterceptor implements ResponseInterceptor {
  RemoteResponseInterceptor({required this.requestAuthenticationFunc});
  
  final Function() requestAuthenticationFunc;

  @override
  FutureOr<Response> onResponse(Response response) async {
    print("error: ${response.error}");

    // Unauthorized check
    final code = response.statusCode;
    if (code == 401) {
      print("Unauthorized");
      requestAuthenticationFunc();
    }

    print("code: $code");
    
    if (code >= 200 && code < 300) {
      final length = response.bodyBytes.length;
      final data = Metrics.instance.data;
      Metrics.setMetricData(data.copyWith(endMeasurement: DateTime.now(), lengthMeasurement: length));
    } else {
      Metrics.setMetricData(null);
    }
    return response;
  }
}