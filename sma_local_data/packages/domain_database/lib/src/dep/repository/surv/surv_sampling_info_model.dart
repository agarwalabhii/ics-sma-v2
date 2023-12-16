import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/database.dart';

import '../model_base.dart';

abstract class SurvSamplingInfoModel extends ModelBase {
  bool? get samplingTaken;
  void setSamplingTaken(WidgetRef ref, bool? newValue);

  MultiString? get typeOfSamplesTaken;
  void setTypeOfSamplesTaken(WidgetRef ref, MultiString? newValue);
  MultiString? get reasonNoSamplesTaken;
  void setReasonNoSamplesTaken(WidgetRef ref, MultiString? newValue);
  MultiString? get sampleResult;
  void setSampleResult(WidgetRef ref, MultiString? newValue);

  String? get numSpecialProjectsInvestigations;
  void setNumSpecialProjectsInvestigations(WidgetRef ref, String? newValue);
  String? get numMT0506;
  void setNumMT0506(WidgetRef ref, String? newValue);
  String? get reasonForNotTaking;
  void setReasonForNotTaking(WidgetRef ref, String? newValue);
  bool? get adequateGrinding;
  void setAdequateGrinding(WidgetRef ref, bool? newValue);
}
