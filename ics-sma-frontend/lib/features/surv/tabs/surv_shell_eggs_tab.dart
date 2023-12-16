import 'package:anet/features/surv/state/surv_shell_eggs_state.dart';
import 'package:anet/features/surv/widgets/shell_egg_cooler_trans_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class SurvShellEggsTab extends ConsumerWidget {
  final SurvShellEggState state;

  const SurvShellEggsTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    final bool isVisible = state.wereShellEggsObserved ?? false;

    return Form(
      child: FocusTraversalGroup(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpandedRow(
                children: [
                  SelectionRowWidget(
                    label: AppLocalizations.of(context)!
                        .surv_shell_eggs_temps_verified_label,
                    initialValue: state.wereShellEggsObserved,
                    readOnly: state.featureMode.viewMode,
                    setValue: (value) {
                      state.setWereShellEggsObserved(ref, value);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                isVisible: isVisible,
                children: [
                  FormElementMultiSelectWidget(
                      moduleSurveillanceShellEggTemperatures,
                      initialValue:
                          state.shellEggTemperatureList ?? MultiString(),
                      title: AppLocalizations.of(context)!
                          .surv_shell_eggs_temps_label,
                      readOnly: state.featureMode.viewMode, setValue: (value) {
                    state.setShellEggTemperatureList(ref, value);
                  }),
                ],
              ),
              ExpandedRow(
                isVisible: isVisible,
                children: [
                  SelectionRowWidget(
                    label: AppLocalizations.of(context)!
                        .surv_shell_eggs_properly_labeled_label,
                    initialValue: state.areShellEggPropertyMaintained,
                    readOnly: state.featureMode.viewMode,
                    setValue: (value) {
                      state.setAreShellEggPropertyMaintained(ref, value);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                  isVisible: isVisible,
                  children: [CoolerTransportWidget(state: state)]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textFieldBuilder.build(
                  label:
                      AppLocalizations.of(context)!.additional_comments_label,
                  maxLength: 512,
                  maxLinesOverride: 3,
                  readOnlyOverride: state.featureMode.viewMode,
                  initialValue: state.comments,
                  onChanged: (value) {
                    state.setComments(ref, value);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
