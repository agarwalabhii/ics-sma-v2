import 'package:anet/features/surv/state/surv_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_common_ux/ux.dart';

final firmSearchProvider = StateProvider<int?>((ref) {
  return null;
});

class SurveillanceFirmSearchDialog extends StatelessWidget {
  final WidgetRef ref;
  final int survId;
  final FeatureMode featureMode;

  const SurveillanceFirmSearchDialog(this.ref, this.survId, this.featureMode,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var key = GlobalKey<FormState>();
    final provider = ref.watch(firmSearchProvider);
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.firm_lookup_label),
      content: SizedBox(
        width: 370,
        height: 400,
        child: Form(
          key: key,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: labelInputDecorator(
                      AppLocalizations.of(context)!.firm_id_lookup_label,
                      false),
                  initialValue: "${provider ?? ''}",
                  onChanged: (value) => ref
                      .watch(firmSearchProvider.notifier)
                      .state = int.parse(value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: labelInputDecorator(
                      AppLocalizations.of(context)!.firm_name_label, true),
                  initialValue: "",
                  readOnly: true,
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  readOnly: true,
                  decoration: labelInputDecorator(
                      AppLocalizations.of(context)!.address_label, true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  readOnly: true,
                  decoration: labelInputDecorator(
                      AppLocalizations.of(context)!.city_label, true),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.blue,
          ),
          child: Text(
            AppLocalizations.of(context)!.cancel,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.blue,
          ),
          child: Text(
            AppLocalizations.of(context)!.submit,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () async {
            final firmId = ref.watch(firmSearchProvider);
            if (firmId != null) {
              final repo = FirmSearchRepository();
              final result = await repo.search(ref, firmId);
              if (!result) {
                const snackBar = SnackBar(
                  content: Text('Firm id not found'),
                );
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                final modelContext = ModelContext(
                    id: survId,
                    featureMode: featureMode,
                    feature: Feature.surv);
                final survState = ref.watch(survProvider(modelContext));
                survState.setFirmId(ref, firmId);
                survState.performAction(ref, SaveFormAction.saveExisting());
                final survFirmProviderNotifier =
                    ref.watch(asyncFirmDataProvider(survId).notifier);
                await survFirmProviderNotifier.load(ref, survId);
                // ignore: use_build_context_synchronously
                Navigator.pop(context, firmId);
              }
            }
          },
        ),
      ],
    );
  }
}
