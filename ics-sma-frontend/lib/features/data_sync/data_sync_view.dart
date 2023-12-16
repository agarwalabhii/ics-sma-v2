import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'connection_status_notifier.dart';

class DataSyncView extends ConsumerWidget {
  const DataSyncView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var connectivityStatusProvider = ref.watch(connectivityStatusProviders);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            connectivityStatusProvider == ConnectivityStatus.isConnected
                ? 'Is Connected to Internet'
                : 'Is Disconnected from Internet',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          backgroundColor:
              connectivityStatusProvider == ConnectivityStatus.isConnected
                  ? Colors.green
                  : Colors.red,
        ),
      );
    });
    return Container();
  }
}
