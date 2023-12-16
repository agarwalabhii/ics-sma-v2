

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_remote_data/src/domain/api/interceptor/remote_response_interceptor.dart';
import 'package:sma_remote_data/src/domain/api/state/request_authentication.dart';

part 'remote_response.g.dart';

@Riverpod(keepAlive: true)
class RemoteResponse extends _$RemoteResponse {

  @override
  RemoteResponseInterceptor build() {
    return RemoteResponseInterceptor(requestAuthenticationFunc: requestAuthenticationFunc);
  }

  void requestAuthenticationFunc() {
    final requestAuthentication = ref.watch(requestAuthenticationProvider.notifier);
    // triggers the login prompt
    requestAuthentication.state = true;
    // resets to not request authentication
    requestAuthentication.state = false;
  }
}
