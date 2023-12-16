import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/diagnostic/diagnostic_list_title_widget.dart';
import 'package:sma_remote_data/sma_remote_data.dart';

class DiagnosticSyncFirmDataGridTile extends ConsumerStatefulWidget {
  const DiagnosticSyncFirmDataGridTile({super.key});

  @override
  ConsumerState<DiagnosticSyncFirmDataGridTile> createState() =>
      _DiagnosticSyncFirmDataGridTileState();
}

class _DiagnosticSyncFirmDataGridTileState
    extends ConsumerState<DiagnosticSyncFirmDataGridTile> {
  var countFirm = 0;
  TextStyle? styleFirm;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: GridTile(
        footer: const GridTileBar(
          backgroundColor: Colors.greenAccent,
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.developer_board),
          ),
          title: Text(
            'Firm Data Sync',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          subtitle: Text("Firm data from remote server",
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
                      ref.watch(storeRemoteFirmUsecaseProvider.notifier);
                  return await notifier.storeAll(countFunc);
                }),
            DiagnosticListTileWidget(
                title: "Local to Remote",
                command: (Function(int) countFunc) async {
                  final notifier =
                      ref.watch(syncLocalFirmUsecaseProvider.notifier);
                  return await notifier.syncAll();
                }),
          ],
        ),
      ),
    );
  }
}
