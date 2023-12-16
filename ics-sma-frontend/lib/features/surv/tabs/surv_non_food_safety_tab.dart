import 'package:anet/features/surv/state/surv_non_food_safety_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class SurvNonFoodSafetyTab extends ConsumerWidget {
  final SurvNonFoodSafetyState state;
  const SurvNonFoodSafetyTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final textFieldBuilder = TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    return Form(
      child: SingleChildScrollView(
        child: Column(
        children: [
          ExpandedRow(children: [
            SelectionRowWidget(
              label: AppLocalizations.of(context)!
                  .surv_nonfood_labeling_verified_label,
              readOnly: state.featureMode.viewMode,
              initialValue: state.labelingVerified,
              setValue: (value) => state.setLabelingVerified(ref, value),
            )
          ]),
          ExpandedRow(children: [
            SelectionRowWidget(
              label: AppLocalizations.of(context)!
                  .surv_nonfood_properly_marked_label,
              readOnly: state.featureMode.viewMode,
              initialValue: (state.productsNotMisbranded != null) ? !state.productsNotMisbranded! : null,
              setValue: (value) => state.setProductsNotMisbranded(ref, (value != null) ? !value : null),
            )
          ]),
          ExpandedRow(children: [
            SelectionRowWidget(
              label: AppLocalizations.of(context)!
                  .surv_nonfood_identify_acts_label,
              readOnly: state.featureMode.viewMode,
              initialValue: state.properlyIdentifyActs,
              setValue: (value) => state.setProperlyIdentifyActs(ref, value),
            )
          ]),
          ExpandedRow(children: [
            textFieldBuilder.build(
              label: AppLocalizations.of(context)!.additional_comments_label,
              maxLength: 512,
              maxLinesOverride: 3,
              readOnlyOverride: state.featureMode.viewMode,
              initialValue: state.additionalComments,
              onChanged: (value) => state.setAdditionalComments(ref, value),
            ),
          ]),
        ],
      ),
      ),
    );
  }
}
