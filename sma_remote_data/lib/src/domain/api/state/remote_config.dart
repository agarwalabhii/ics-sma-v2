import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/api/state/remote_request.dart';
import 'package:sma_remote_data/src/domain/api/state/remote_response.dart';

part 'remote_config.g.dart';

const maxFetchSize = 2000;
const initialFetchSize = 100;

@Riverpod(keepAlive: true)
class RemoteConfig extends _$RemoteConfig {

  @override
  bool build() {
    return true;
  }

  Uri get baseUri {
    return Uri(
      scheme: 'https',
      host: 'icssmaapi.fsis.usda.gov',
      path: 'dev-api',
    );
  }

  int get fetchPageSize {
    return maxFetchSize;
  }

  AnetSchema get anetSchema {
    final remoteRequest = ref.watch(remoteRequestProvider);
    final remoteResponse = ref.watch(remoteResponseProvider);
    return AnetSchema.create(
      baseUrl: baseUri,
      interceptors: [
        remoteRequest,
        remoteResponse,
      ]);
  }
}
