import 'package:chopper/chopper.dart';
import 'package:sma_remote_data/src/domain/api/model/metric_data.dart';
import 'package:sma_remote_data/src/domain/api/state/metrics.dart';

class RemoteRequestInterceptor extends CurlInterceptor {
  RemoteRequestInterceptor({this.accessToken}) : super();

  final String? accessToken;

  @override
  Future<Request> onRequest(Request request) async {
    final curlRequest = await super.onRequest(request);
    final updatedRequest = applyHeader(
      curlRequest,
      "Authorization",
      "Bearer $accessToken",
      override: false,
    );

    print(
      '[AuthInterceptor] accessToken: ${updatedRequest.headers["Authorization"]}',
    );

    // start metrics
    Metrics.setMetricData(MetricData(startMeasurement: DateTime.now()));

    return updatedRequest;
  }
}