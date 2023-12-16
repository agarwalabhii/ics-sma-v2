import 'dart:async';

import 'package:drift/drift.dart' as drift;
import 'package:local_common/database.dart';

typedef CommandFunc<D> = Future<D> Function();

class LocalResponseExecutor<D extends drift.DataClass> {
  Future<LocalResponseData<D?>> call(
      {required String name,
      required CommandFunc command,
      required UpdateStateFunc updateStateFunc}) async {
    var state = start(name);
    try {
      final D local = await command();
      state =
          state.copyWith(endTimestamp: DateTime.now(), count: state.count + 1);
      updateStateFunc(state);
      return LocalResponseData(body: local, transportState: state);
    } catch (e) {
      state = state.copyWith(endTimestamp: DateTime.now());
      updateStateFunc(state);
      return LocalResponseData(error: e, transportState: state);
    }
  }

  TransportState start(String name) {
    return TransportState(name: name, startTimestamp: DateTime.now());
  }

 void emptyUpdateFunc(TransportState transportState) {}
}
