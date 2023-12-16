
import 'package:local_common/database.dart';

abstract class SurvSnapshotModel {
  int? get id;
  int? get firmId;
  String? get firmName;
  DateTime? get datePerformed;
  int? get creatorId;
  RecordStatus? get recordStatus;
}
