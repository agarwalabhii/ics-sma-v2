import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class SurvFoodSafetyModel extends ModelBase {
  bool? get productWholesome;
  void setProductWholesome(WidgetRef ref, bool? newValue);
  bool? get sanitaryConditionsGood;
  void setSanitaryConditionsGood(WidgetRef ref, bool? newValue);
  bool? get hazardControlsAdequate;
  void setHazardControlsAdequate(WidgetRef ref, bool? newValue);
  bool? get nonHumanFoodProperlyDenatured;
  void setNonHumanFoodProperlyDenatured(WidgetRef ref, bool? newValue);
  bool? get recordsMaintained;
  void setRecordsMaintained(WidgetRef ref, bool? newValue);
  String? get safetyAddtionalComments;
  void setSafetyAdditionalComments(WidgetRef ref, String? newValue);
}
