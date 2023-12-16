import 'package:domain_database/src/dep/repository/model_base.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/database.dart';

abstract class SurvShellEggsModel extends ModelBase {
  bool? get wereShellEggsObserved;
  void setWereShellEggsObserved(WidgetRef ref, bool? newValue);
  bool? get areShellEggPropertyMaintained;
  void setAreShellEggPropertyMaintained(WidgetRef ref, bool? newValue);
  MultiString? get shellEggTemperatureList;
  void setShellEggTemperatureList(WidgetRef ref, MultiString? newValue);
  String? get comments;
  void setComments(WidgetRef ref, String? newValue);
}
