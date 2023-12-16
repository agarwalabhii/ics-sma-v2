import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_local_data/sma_local_data.dart';

extension FeatureModeExtension on FeatureMode {
  String prefixLabel(BuildContext context, Feature feature) {
    switch (this) {
      case FeatureMode.create:
        return AppLocalizations.of(context)!
            .create_feature_label(feature.name());
      case FeatureMode.edit:
        return AppLocalizations.of(context)!.edit_feature_label(feature.name());
      case FeatureMode.view:
        return AppLocalizations.of(context)!.view_feature_label(feature.name());
    }
  }
}
