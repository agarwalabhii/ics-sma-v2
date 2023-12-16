import 'package:anet/features/surv/state/surv_food_safety_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';

class SurvFoodSafetyTab extends ConsumerWidget {
  final SurvFoodSafetyState state;

  const SurvFoodSafetyTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5, bottom: 10, right: 5),
      child: Form(
        child: FocusTraversalGroup(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!.products_wholesome_label,
                  initialValue: state.productWholesome,
                  readOnly: state.featureMode.viewMode,
                  setValue: (value) {
                    state.setProductWholesome(ref, value);
                  },
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .sanitary_conditions_good_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.sanitaryConditionsGood,
                  setValue: (value) {
                    state.setSanitaryConditionsGood(ref, value);
                  },
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .hazard_controls_adequate_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.hazardControlsAdequate,
                  setValue: (value) {
                    state.setHazardControlsAdequate(ref, value);
                  },
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!
                      .non_human_food_properly_denatured,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.nonHumanFoodProperlyDenatured,
                  setValue: (value) {
                    state.setNonHumanFoodProperlyDenatured(ref, value);
                  },
                ),
                SelectionRowWidget(
                  label: AppLocalizations.of(context)!.records_maintained_label,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.recordsMaintained,
                  setValue: (value) {
                    state.setRecordsMaintained(ref, value);
                  },
                ),
                textFieldBuilder.build(
                    label:
                        AppLocalizations.of(context)!.additional_comments_label,
                    readOnlyOverride: state.featureMode.viewMode,
                    initialValue: state.safetyAddtionalComments,
                    onChanged: (value) =>
                        state.setSafetyAdditionalComments(ref, value),
                    maxLength: 512,
                    maxLinesOverride: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
