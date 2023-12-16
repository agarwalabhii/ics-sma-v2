import 'dart:async';

import 'package:local_common/src/repository/transport_state.dart';

abstract class TransportStateAware {
  FutureOr<TransportState> build();
}