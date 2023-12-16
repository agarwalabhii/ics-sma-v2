import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/diagnostic/diagnostic_list_title_widget.dart';
import 'package:sma_remote_data/sma_remote_data.dart';

class DiagnosticSyncSurvDataGridTile extends ConsumerStatefulWidget {
  const DiagnosticSyncSurvDataGridTile({super.key});

  @override
  ConsumerState<DiagnosticSyncSurvDataGridTile> createState() =>
      _DiagnosticSyncSurvDataGridTileState();
}

class _DiagnosticSyncSurvDataGridTileState
    extends ConsumerState<DiagnosticSyncSurvDataGridTile> {
  var countSurv = 0;
  TextStyle? styleSurv;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan,
      child: GridTile(
        footer: const GridTileBar(
          backgroundColor: Colors.cyanAccent,
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.developer_board),
          ),
          title: Text(
            'Surv Data Sync',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          subtitle: Text("Surv data from remote server",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        child: ListView(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          children: <Widget>[
              DiagnosticListTileWidget(
                title: "Remote to Local",
                command: (Function(int) countFunc) async {
                  final notifier =
                      ref.watch(storeRemoteSurvUsecaseProvider.notifier);
                  return await notifier.storeAll(countFunc);
                }),
            DiagnosticListTileWidget(
                title: "Local to Remote",
                command: (Function(int) countFunc) async {
                  final notifier =
                      ref.watch(syncLocalSurvUsecaseProvider.notifier);
                  return await notifier.syncAll();
                }),
          ],
        ),
      ),
    );
  }
}
