import 'package:anet/features/surv/state/surv_order_verification_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';

class SurvOrderVerificationTab extends ConsumerWidget {
  final SurvOrderVerificationState state;

  const SurvOrderVerificationTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    return SingleChildScrollView(
      child: Column(
      children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectionRowWidget(
              label:
                  "Was the firm in compliance with the requirements of the Order? if No, explain in additional comments",
              initialValue: state.firmInCompliance,
              readOnly: state.featureMode.viewMode,
              setValue: (value) {
                state.setFirmInCompliance(ref, value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectionRowWidget(
              label:
                  "Was the responsible individual(s) in compliance with the requirements of the Order? If No, explain in the additional comments.",
              initialValue: state.individualInCompliance,
              readOnly: state.featureMode.viewMode,
              setValue: (value) {
                state.setIndividualInCompliance(ref, value);
              },
            ),
        ),
        ExpandedRow(
          children: [
            textFieldBuilder.build(
                label: AppLocalizations.of(context)!.additional_comments_label,
                initialValue: state.additionalComments,
                readOnlyOverride: state.featureMode.viewMode,
                onChanged: (value) {
                  state.setAdditionalComments(ref, value);
                },
                maxLinesOverride: 3),
          ],
        )
      ],
      ),
    );
  }
}
