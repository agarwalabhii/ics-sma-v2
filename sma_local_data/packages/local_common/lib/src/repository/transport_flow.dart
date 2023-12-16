
import 'package:local_common/src/repository/transport_state.dart';

extension TransportFlow on TransportState {
  TransportState start() {
    return copyWith(startTimestamp: DateTime.now());
  }
 
  TransportState end() {
    final newEndTimestamp = DateTime.now();
    if (startTimestamp != null) {
      final difference = newEndTimestamp.difference(startTimestamp!);
      return copyWith(endTimestamp: newEndTimestamp, durationInMillis: difference.inMilliseconds);
    }
    return copyWith(endTimestamp: newEndTimestamp, durationInMillis: 0);
  }

  TransportState addMessage({required String newMessage}) {
    final updatedMessages = messages;
    updatedMessages.add(newMessage);
    return copyWith(messages: updatedMessages);
  }

  TransportState updateCount({required int newCount}) {
    return copyWith(count: newCount);
  }

  TransportState addToCount({required int addition}) {
    return copyWith(count: count + addition);
  }
}