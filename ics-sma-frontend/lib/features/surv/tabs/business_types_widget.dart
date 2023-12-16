import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class BusinessTypesWidget extends StatelessWidget {
  final SurvFirmModel state;

  const BusinessTypesWidget({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExpandedRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.black, fontSize: 16.0),
              readOnly: true,
              enabled: false,
              enableInteractiveSelection: false,
              decoration: labelInputDecorator(
                  AppLocalizations.of(context)!
                      .surv_gen_info_pri_busi_type_label,
                  true),
              controller:
                  TextEditingController(text: state.primaryBusinessType ?? ""),
              onChanged: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.black, fontSize: 16.0),
              readOnly: true,
              enabled: false,
              enableInteractiveSelection: false,
              decoration: labelInputDecorator(
                  AppLocalizations.of(context)!
                      .surv_gen_info_sec_busi_type_label,
                  true),
              controller: TextEditingController(
                  text: state.secondaryBusinessType ?? ""),
              onChanged: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.black, fontSize: 16.0),
              readOnly: true,
              enabled: false,
              enableInteractiveSelection: false,
              decoration: labelInputDecorator(
                  AppLocalizations.of(context)!
                      .surv_gen_info_tri_busi_type_label,
                  true),
              controller:
                  TextEditingController(text: state.tertiaryBusinessType ?? ""),
              onChanged: null,
            ),
          ),
        ],
      ),
    ]);
  }
}
