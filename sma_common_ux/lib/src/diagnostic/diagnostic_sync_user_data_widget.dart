import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/diagnostic/diagnostic_list_title_widget.dart';
import 'package:sma_remote_data/sma_remote_data.dart';

class DiagnosticSyncUserDataGridTile extends ConsumerStatefulWidget {
  const DiagnosticSyncUserDataGridTile({super.key});

  @override
  ConsumerState<DiagnosticSyncUserDataGridTile> createState() =>
      _DiagnosticSyncUserDataGridTileState();
}

class _DiagnosticSyncUserDataGridTileState
    extends ConsumerState<DiagnosticSyncUserDataGridTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: GridTile(
        footer: const GridTileBar(
          backgroundColor: Colors.orangeAccent,
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.developer_board),
          ),
          title: Text(
            'User Data Sync',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          subtitle: Text("User data from remote server",
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
                title: "Employees",
                command: (Function(int) countFunc) async {
                  final notifier =
                      ref.watch(syncEmployeeSetUsecaseProvider.notifier);
                  return await notifier.syncAll(updateFunc: countFunc);
                }),
            DiagnosticListTileWidget(
                title: "Employee Roles",
                command: (Function(int) countFunc) async {
                  final notifier =
                      ref.watch(syncEmployeeRoleSetUsecaseProvider.notifier);
                  return await notifier.syncAll(updateFunc: countFunc);
                }),
            DiagnosticListTileWidget(
                title: "Roles",
                command: (Function(int) countFunc) async {
                  final notifier =
                      ref.watch(syncRoleSetUsecaseProvider.notifier);
                  return await notifier.syncAll(updateFunc: countFunc);
                }),
            DiagnosticListTileWidget(
                title: "Users",
                command: (Function(int) countFunc) async {
                  final notifier =
                      ref.watch(syncUserSetUsecaseProvider.notifier);
                  return await notifier.syncAll(updateFunc: countFunc);
                }),
          ],
        ),
      ),
    );
  }
}
