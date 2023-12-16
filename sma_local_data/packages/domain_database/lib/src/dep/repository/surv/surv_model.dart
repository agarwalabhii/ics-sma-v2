import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

mixin SurvModel implements ModelBase {
  void setId(WidgetRef ref, int newValue);
  int? get firmId;
  void setFirmId(WidgetRef ref, int? newValue);
}
