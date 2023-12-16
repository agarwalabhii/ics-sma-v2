import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class SurvNonFoodSafetyModel extends ModelBase {
  bool? get labelingVerified;
  void setLabelingVerified(WidgetRef ref, bool? newValue);
  bool? get productsNotMisbranded;
  void setProductsNotMisbranded(WidgetRef ref, bool? newValue);
  bool? get properlyIdentifyActs;
  void setProperlyIdentifyActs(WidgetRef ref, bool? newValue);
  String? get additionalComments;
  void setAdditionalComments(WidgetRef ref, String? newValue);
}
