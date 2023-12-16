import 'package:local_common/src/repository/transport_state.dart';
import 'package:local_common/src/usecase/usecase_state.dart';

extension UsecaseFlow on UsecaseState {
  UsecaseState start() {
    return copyWith(startTimestamp: DateTime.now());
  }

  UsecaseState end() {
    final newEndTimestamp = DateTime.now();
    if (startTimestamp != null) {
      final difference = newEndTimestamp.difference(startTimestamp!);
      return copyWith(endTimestamp: newEndTimestamp, durationInMillis: difference.inMilliseconds);
    }
    return copyWith(endTimestamp: newEndTimestamp, durationInMillis: 0);
  }

  UsecaseState addTransportState({
      required TransportState transportState, bool runningCount = false}) {
    List<TransportState> updatedTransports = List.from(transportStates); 
    updatedTransports.add(transportState);
    return copyWith(
        transportStates: updatedTransports,
        count: runningCount ? count + transportState.count : count);
  }

  UsecaseState updateCount({required  newCount}) {
    return copyWith(count: newCount);
  }

  UsecaseState addToCount({required int addition}) {
    return copyWith(count: count + addition);
  }
}
