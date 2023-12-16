

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_remote_data/src/domain/api/interceptor/remote_request_interceptor.dart';

part 'remote_request.g.dart';

@Riverpod(keepAlive: true)
class RemoteRequest extends _$RemoteRequest {

  @override
  RemoteRequestInterceptor build() {
    return RemoteRequestInterceptor();
  }

  void setAccessToken(String? accessToken) {
    state = RemoteRequestInterceptor(accessToken: accessToken);
  }
}
