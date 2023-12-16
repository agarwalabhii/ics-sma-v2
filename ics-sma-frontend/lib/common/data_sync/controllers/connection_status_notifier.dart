import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConnectivityType {
  none(icon: Icons.signal_wifi_bad),
  cellular(icon: Icons.network_cell),
  wifi(icon: Icons.network_wifi),
  vpn(icon: Icons.vpn_lock),
  wired(icon: Icons.cable);

  const ConnectivityType({
    required this.icon,
  });

  final IconData icon;
}

// ignore: empty_constructor_bodies
class ConnectivityStatus {
  final ConnectivityType type;
  final bool connected;

  const ConnectivityStatus(this.type, this.connected);

  // Named constructor
  ConnectivityStatus.initial()
      : type = ConnectivityType.wifi,
        connected = true;

  IconData icon() {
    switch (type) {
      case ConnectivityType.cellular:
        return connected
            ? Icons.network_cell
            : Icons.signal_cellular_connected_no_internet_0_bar;
      case ConnectivityType.wifi:
        return connected ? Icons.network_wifi : Icons.signal_wifi_bad;
      case ConnectivityType.vpn:
        return connected ? Icons.vpn_key : Icons.vpn_key_off;
      case ConnectivityType.wired:
        return connected ? Icons.cable : Icons.cable_sharp;
      default:
        return Icons.signal_wifi_bad;
    }
  }
}

class ConnectivityStatusNotifier extends StateNotifier<ConnectivityStatus> {
  StreamController<ConnectivityResult> controller =
      StreamController<ConnectivityResult>();

  ConnectivityStatus lastState = ConnectivityStatus.initial();
  ConnectivityStatus newState = ConnectivityStatus.initial();

  ConnectivityStatusNotifier() : super(ConnectivityStatus.initial()) {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      switch (result) {
        case ConnectivityResult.mobile:
          newState = const ConnectivityStatus(ConnectivityType.cellular, true);
          break;
        case ConnectivityResult.wifi:
          newState = const ConnectivityStatus(ConnectivityType.wifi, true);
          break;
        case ConnectivityResult.vpn:
          newState = const ConnectivityStatus(ConnectivityType.vpn, true);
          break;
        case ConnectivityResult.ethernet:
          newState = const ConnectivityStatus(ConnectivityType.wired, true);
          break;
        case ConnectivityResult.none:
          newState = ConnectivityStatus(lastState.type, false);
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

final connectivityStatusProvider =
    StateNotifierProvider<ConnectivityStatusNotifier, ConnectivityStatus>(
        (ref) {
  return ConnectivityStatusNotifier();
});
