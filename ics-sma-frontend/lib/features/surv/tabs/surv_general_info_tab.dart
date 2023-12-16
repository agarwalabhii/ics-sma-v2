import 'package:anet/features/surv/state/surv_general_info_state.dart';
import 'package:anet/features/surv/tabs/providers/surv_general_info_tab_provider.dart';
import 'package:anet/features/surv/tabs/surv_firm_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class SurvGeneralInfoTab extends ConsumerWidget {
  final SurvGeneralInfoState state;

  const SurvGeneralInfoTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final tabStateProvider = ref.watch(survGeneralInfoTabProvider);
    final tabStateNotifier = ref.watch(survGeneralInfoTabProvider.notifier);
    final bool showProject = state.retailProject?.listValues.contains("SP") ??
        tabStateProvider.specialProjectVisible;

    return Form(
      child: FocusTraversalGroup(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 5, bottom: 10, right: 5),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpandedRow(
                    children: [
                      DatePickerWidget(
                          readOnly: state.featureMode.viewMode,
                          initialValue: state.datePerformed,
                          label:
                              "${AppLocalizations.of(context)!.date_performed_label} *",
                          setValue: (value) {
                            state.setDatePerformed(ref, value);
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IntrinsicHeight(
                    child: ExpandedRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: FormElementMultiSelectWidget(
                            readOnly: state.featureMode.viewMode,
                            moduleSurveillanceReason,
                            setValue: (value) {
                              state.setReason(ref, value);
                            },
                            title:
                                "${AppLocalizations.of(context)!.surv_gen_info_reason_label} *",
                            maxSelect: 10,
                            initialValue: state.reason ?? MultiString(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: FormElementMultiSelectWidget(
                            moduleSurveillanceRetailProject,
                            readOnly: state.featureMode.viewMode,
                            setValue: (value) {
                              if (!value.listValues.contains("SP")) {
                                state.setSpecialProject(ref, null);
                              }
                              state.setRetailProject(ref, value);
                              tabStateNotifier.checkSpecialProject(value);
                            },
                            title: AppLocalizations.of(context)!
                                .surv_gen_info_retail_label,
                            maxSelect: 10,
                            initialValue: state.retailProject ?? MultiString(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ExpandedRow(
                    isVisible: showProject,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FormElementMultiSelectWidget(
                          moduleSurveillanceSpecialProject,
                          readOnly: state.featureMode.viewMode,
                          setValue: (value) {
                            state.setSpecialProject(ref, value);
                          },
                          title: "Project Name *",
                          maxSelect: 10,
                          initialValue: state.specialProject ?? MultiString(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                  child: Divider(thickness: 2, color: Colors.grey[400]),
                ),
                SurvFirmWidget(state: state),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
