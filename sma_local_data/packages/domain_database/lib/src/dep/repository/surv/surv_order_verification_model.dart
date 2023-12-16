import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class SurvOrderVerificationModel extends ModelBase {
  bool? get firmInCompliance;
  void setFirmInCompliance(WidgetRef ref, bool? newValue);
  bool? get individualInCompliance;
  void setIndividualInCompliance(WidgetRef ref, bool? newValue);
  String? get additionalComments;
  void setAdditionalComments(WidgetRef ref, String? newValue);
}
