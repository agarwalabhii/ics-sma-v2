
import 'package:local_common/database.dart';

abstract class FirmSnapshotModel {
  int? get firmId;
  String? get name;
  String? get primaryBusinessType;
  int? get creatorId;
  RecordStatus? get recordStatus;
  DateTime? get lastSurveillancePerformed;
}
