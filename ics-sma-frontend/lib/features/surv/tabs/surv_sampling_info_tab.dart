import 'package:anet/features/surv/state/surv_sampling_info_state.dart';
import 'package:anet/features/surv/tabs/providers/surv_sampling_info_tab_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class SurvSamplingInfoTab extends ConsumerWidget {
  final SurvSamplingInfoState state;

  const SurvSamplingInfoTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final tabStateProvider = ref.watch(survSamplingInfoTabProvider);
    final tabStateNotifier = ref.watch(survSamplingInfoTabProvider.notifier);
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    final bool mtSamplesTaken =
        ((state.typeOfSamplesTaken?.oneString.contains("MT05") ?? false) ||
            (state.typeOfSamplesTaken?.oneString.contains("MT06") ?? false));
            
    final bool spInvestigativeSamplesTaken = ((state
                .typeOfSamplesTaken?.oneString
                .contains("Special Project") ??
            false) ||
        (state.typeOfSamplesTaken?.oneString.contains("Investigative Sample") ??
            false));

    return Form(
      child: FocusTraversalGroup(
        child: SingleChildScrollView(
          child: Column(
          children: [
            SelectionRowWidget(
                label: AppLocalizations.of(context)!
                    .surv_sampling_taken_during_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                    state.setSamplingTaken(ref, value);
                  tabStateNotifier.checkVisibility(value);
                },
                initialValue: state.samplingTaken),
            ExpandedRow(
              isVisible: state.samplingTaken ?? false,
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              children: [
                FormElementMultiSelectWidget(
                  moduleSurveillanceSampleTakenTypes,
                  readOnly: state.featureMode.viewMode,
                  initialValue: state.typeOfSamplesTaken ?? MultiString(),
                  setValue: (value) {
                    state.setTypeOfSamplesTaken(ref, value);
                    tabStateNotifier.checkMt(value.oneString);
                    tabStateNotifier.checkSPInvestigations(value.oneString);
                  },
                  title: AppLocalizations.of(context)!
                      .surv_sampling_sample_taken_label,
                  maxSelect: 4,
                ),
              ],
            ),
            ExpandedRow(
                isVisible:
                    !(state.samplingTaken ?? !tabStateProvider.showNoReason),
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              children: [
                FormElementMultiSelectWidget(
                  readOnly: state.featureMode.viewMode,
                  moduleSurveillanceNoSampleTakenReason,
                  initialValue: state.reasonNoSamplesTaken ?? MultiString(),
                  setValue: (value) {
                    state.setReasonNoSamplesTaken(ref, value);
                  },
                  title: AppLocalizations.of(context)!
                      .surv_sampling_not_taking_label,
                ),
              ],
            ),
            ExpandedRow(
                isVisible: ((tabStateProvider.isVisibleQuestions ?? false) &&
                        tabStateProvider.mt0506) ||
                    mtSamplesTaken,
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              children: [
                textFieldBuilder.build(
                  readOnlyOverride: state.featureMode.viewMode,
                  label: AppLocalizations.of(context)!
                      .surv_sampling_number_samples_label,
                  initialValue: state.numMT0506,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(4)
                    ],
                  onChanged: (value) {
                    state.setNumMT0506(ref, value);
                  },
                ),
              ],
            ),
            ExpandedRow(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              isVisible: (tabStateProvider.isVisibleQuestions ?? false) &&
                        tabStateProvider.spInvest ||
                    spInvestigativeSamplesTaken,
              children: [
                textFieldBuilder.build(
                  readOnlyOverride: state.featureMode.viewMode,
                  label: AppLocalizations.of(context)!
                      .surv_sampling_special_projects_label,
                  initialValue: state.numSpecialProjectsInvestigations,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      LengthLimitingTextInputFormatter(4)
                    ],
                  onChanged: (value) {
                    state.setNumSpecialProjectsInvestigations(ref, value);
                  },
                ),
              ],
            ),
            ExpandedRow(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              isVisible: tabStateProvider.isVisibleQuestions ?? false,
              children: [
                FormElementMultiSelectWidget(
                  readOnly: state.featureMode.viewMode,
                  //TODO: Needs a default of Results Pending
                  moduleSurveillanceSampleResult,
                  initialValue: state.sampleResult ?? MultiString(),
                  setValue: (value) {
                    state.setSampleResult(ref, value);
                  },
                  title: AppLocalizations.of(context)!
                      .surv_sampling_sample_result_label,
                ),
              ],
            ),
            SelectionRowWidget(
                label: AppLocalizations.of(context)!
                    .surv_sampling_adequate_grinding_label,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setAdequateGrinding(ref, value);
                },
                initialValue: state.adequateGrinding),
          ],
        ),
        ),
      ),
    );
  }
}
