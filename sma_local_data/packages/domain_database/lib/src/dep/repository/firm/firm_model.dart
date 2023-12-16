import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model_base.dart';

abstract class FirmModel extends ModelBase {
  int? get lastSurvId;
  void setLastSurvId(WidgetRef ref, int? newValue);
}
