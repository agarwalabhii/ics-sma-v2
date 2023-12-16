import 'package:anet/features/surv/state/surv_general_info_state.dart';
import 'package:anet/features/surv/tabs/business_types_widget.dart';
import 'package:anet/features/surv/tabs/firm_lookup_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_common_ux/ux.dart';

class SurvFirmWidget extends ConsumerStatefulWidget {
  final SurvGeneralInfoState state;

  const SurvFirmWidget({required this.state, super.key});

@override
  ConsumerState<SurvFirmWidget> createState() => _SurvFirmWidgetState();
}

class _SurvFirmWidgetState extends ConsumerState<SurvFirmWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    widget.state.bootstrap(ref);
    final survFirmProvider = ref.watch(asyncFirmDataProvider(widget.state.id));
    return survFirmProvider.when(
        error: (err, stack) => logAsyncError("SurvFirmWidget", err, stack),
        loading: () => const SizedBox(
            width: 40, height: 40, child: CircularProgressIndicator()),
        data: (survFirmData) {
          return Column(children: [
            FirmLookupRowWidget(infoState: widget.state, model: survFirmData),
            BusinessTypesWidget(state: survFirmData),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
              child: Divider(thickness: 2, color: Colors.grey[400]),
            ),
            PhysicalLocationWidget(
                refId: survFirmData.firmId ?? 0,
                refType: LocationRefType.firmMain,
                readOnly: true),
          ]);
        });
  }
  
  @override
  bool get wantKeepAlive => true;
}
