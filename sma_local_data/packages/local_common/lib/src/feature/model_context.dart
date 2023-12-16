

import 'package:local_common/src/feature/feature.dart';

class ModelContext {
  final int id;
  final Feature feature;
  final FeatureMode featureMode;

  ModelContext(
      {required this.id, required this.feature, required this.featureMode});

  @override
  bool operator ==(Object other) {
    return other is ModelContext &&
        other.id == id &&
        other.feature == feature &&
        other.featureMode.index == featureMode.index;
  }

  @override
  int get hashCode {
    return Object.hash(id, feature, featureMode);
  }
}
