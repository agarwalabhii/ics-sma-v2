import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/common.dart';

abstract class ModelBase {
  int get id;
  FeatureMode get featureMode;

  void bootstrap(WidgetRef ref);

  void performAction(WidgetRef ref, FormAction action);

  void loadIf(AutoDisposeFutureProviderRef<Widget> ref);
}
