
import 'package:intl/intl.dart';
import 'package:local_common/src/repository/transport_state.dart';

extension TransportStateDebug on TransportState {
  void printDebug() {
    print("==== Transport State ====");
    print("Name      : $name");
    print("Start     : $startTimestamp}");
    print("End       : $endTimestamp}");
    var f = NumberFormat("##0.0##", "en_US");
    print("Duration  : ${f.format(durationInMillis / 1000)} seconds");
    print("Count     : $count");
    print("Items/sec : ${f.format((durationInMillis / count) / 1000)}");
     print("Messages  : $messages");
    print("=========================");
  }
}