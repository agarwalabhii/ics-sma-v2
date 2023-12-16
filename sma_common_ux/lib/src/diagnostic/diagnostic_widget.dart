import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/diagnostic/diagnostic_feature_flags_widget.dart';
import 'package:sma_common_ux/src/diagnostic/diagnostic_sync_firm_data_widget.dart';
import 'package:sma_common_ux/src/diagnostic/diagnostic_sync_surv_data_widget.dart';
import 'package:sma_common_ux/src/diagnostic/diagnostic_sync_user_data_widget.dart';

import 'diagnostic_paths_widget.dart';
import 'diagnostic_token_widget.dart';

Future<void> showDebugDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext ctx) {
      return const AlertDialog(
        title: Text(
          "Diagnostics",
          textAlign: TextAlign.center,
        ),
        content: DiagnosticWidget(),
      );
    },
  );
}

class DiagnosticWidget extends ConsumerWidget {
  const DiagnosticWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          shrinkWrap: true,
          children: <Widget>[
            const DiagnosticTokenGridTile(),
            const DiagnosticPathsGridTile(),
            const DiagnosticFeatureFlagsGridTile(),
            const DiagnosticSyncUserDataGridTile(),
            const DiagnosticSyncSurvDataGridTile(),
            const DiagnosticSyncFirmDataGridTile(),
          ].toList()),
    );
  }
}
