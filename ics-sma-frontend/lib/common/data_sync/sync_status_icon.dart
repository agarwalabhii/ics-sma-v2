import 'package:flutter/material.dart';
import 'package:sma_local_data/sma_local_data.dart';

extension SyncStatusIcon on SyncStatus {
  IconData get icon {
    switch (this) {
      case SyncStatus.synchronized:
        return Icons.cloud_done;
      case SyncStatus.offline:
        return Icons.cloud_off;
      case SyncStatus.strays:
        return Icons.cloud_upload;
      case SyncStatus.synching:
        return Icons.cloud_sync;
    }
  }
}
