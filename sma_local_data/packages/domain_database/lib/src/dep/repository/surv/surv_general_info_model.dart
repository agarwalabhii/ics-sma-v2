import 'package:domain_database/src/dep/repository/model_base.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/database.dart';

abstract class SurvGeneralInfoModel extends ModelBase {
  DateTime? get datePerformed;
  void setDatePerformed(WidgetRef ref, DateTime? newValue);
  MultiString? get reason;
  void setReason(WidgetRef ref, MultiString? newValue);
  MultiString? get retailProject;
  void setRetailProject(WidgetRef ref, MultiString? newValue);
  MultiString? get retailProjectOther;
  void setRetailProjectOther(WidgetRef ref, MultiString? newValue);
  MultiString? get retailSpecialProject;
  void setRetailSpecialProject(WidgetRef ref, MultiString? newValue);
  MultiString? get specialProject;
  void setSpecialProject(WidgetRef ref, MultiString? newValue);
  String? get firmNameAtTimeOfAction;
  void setFirmNameAtTimeOfAction(WidgetRef ref, String? newValue);
  bool get isVisibleRetailProject;
}
