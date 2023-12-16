import 'package:anet/features/surv/state/surv_general_info_state.dart';
import 'package:anet/features/surv/state/surv_state.dart';
import 'package:anet/features/surv/widgets/surv_firm_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class FirmLookupRowWidget extends HookConsumerWidget {
  final SurvGeneralInfoState infoState;
  final SurvFirmModel model;

  const FirmLookupRowWidget(
      {required this.infoState, required this.model, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final atTimeOfActionController = useTextEditingController(
        text: infoState.firmNameAtTimeOfAction ?? "");

    return Column(
      children: [
        ExpandedRow(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: infoState.featureMode.viewMode
                        ? () {}
                        : () async {
                            final modelContext = ModelContext(
                                id: infoState.id,
                                featureMode: infoState.featureMode,
                                feature: Feature.surv);
                            final survState =
                                ref.watch(survProvider(modelContext));
                            ref.watch(firmSearchProvider.notifier).state =
                                survState.firmId;
                            final firmId = await showDialog(
                              context: context,
                              builder: (context) =>
                                  SurveillanceFirmSearchDialog(
                                      ref, infoState.id, infoState.featureMode),
                            );
                            if (firmId != null) {
                              survState.setFirmId(ref, firmId);
                              final saveFormAction = SaveFormAction.saveExisting();
                              survState.performAction(ref, saveFormAction);
                              infoState.performAction(ref, saveFormAction);
                              final survFirmProviderNotifier = ref.watch(
                                  asyncFirmDataProvider(infoState.id).notifier);
                              await survFirmProviderNotifier.load(
                                  ref, infoState.id);
                            }
                          },
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      style:
                          const TextStyle(color: Colors.black, fontSize: 16.0),
                      readOnly: true,
                      enabled: false,
                      enableInteractiveSelection: false,
                      decoration: labelInputDecorator(
                          "${AppLocalizations.of(context)!.surv_gen_info_firm_name_label} *",
                          true),
                      controller: TextEditingController(text: model.name ?? ""),
                      onChanged: null,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                decoration: labelInputDecorator(
                    "${AppLocalizations.of(context)!.surv_gen_info_firm_name_at_action_label} *",
                    false),
                controller: atTimeOfActionController,
                maxLength: 75,
                onChanged: (value) =>
                    infoState.setFirmNameAtTimeOfAction(ref, value),
              ),
            ),
          ],
        )
      ],
    );
  }
}
