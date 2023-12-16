import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

class SyncStatusNotifier extends StateNotifier<SyncStatus> {
  StreamController<ConnectivityResult> controller =
      StreamController<ConnectivityResult>();

  SyncStatus lastState = SyncStatus.synchronized;
  SyncStatus newState = SyncStatus.synchronized;

  SyncStatusNotifier() : super(SyncStatus.synchronized) {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      switch (result) {
        case ConnectivityResult.mobile:
        case ConnectivityResult.wifi:
        case ConnectivityResult.vpn:
        case ConnectivityResult.ethernet:
          newState = SyncStatus.synchronized;
          break;
        case ConnectivityResult.none:
          newState = SyncStatus.offline;
          break;
        default:
          break;
      }
      if (newState != lastState) {
        state = newState;
        lastState = newState;
      }
    });
  }
}

final syncStatusProvider =
    StateNotifierProvider<SyncStatusNotifier, SyncStatus>((ref) {
  return SyncStatusNotifier();
});
