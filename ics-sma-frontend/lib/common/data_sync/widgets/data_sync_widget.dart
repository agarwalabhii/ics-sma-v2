import 'package:anet/common/data_sync/sync_status_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:anet/common/data_sync/controllers/connection_status_notifier.dart';
import 'package:anet/common/data_sync/controllers/sync_status_notifier.dart';
import 'package:sma_local_data/sma_local_data.dart';

class DataSyncWidget extends ConsumerWidget {
  const DataSyncWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ConnectivityStatus connectivityStatus =
        ref.watch(connectivityStatusProvider);
    SyncStatus syncStatus = ref.watch(syncStatusProvider);

    return Column(
      children: [
        IconButton(
          tooltip: AppLocalizations.of(context)!.nav_rail_connectivity_label,
          icon: Icon(
            connectivityStatus.icon(),
            size: 24,
            color: connectivityStatus.connected ? Colors.green : Colors.red,
            semanticLabel:
                AppLocalizations.of(context)!.nav_rail_connectivity_label,
          ),
          onPressed: () {},
        ),
        IconButton(
          tooltip: AppLocalizations.of(context)!.nav_rail_sync_label,
          icon: Icon(
            syncStatus.icon,
            size: 24,
            color: Colors.white,
            semanticLabel: AppLocalizations.of(context)!.nav_rail_sync_label,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
