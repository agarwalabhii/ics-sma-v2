import 'package:domain_database/src/domain_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef RecentSurvsViewDataList = List<RecentSurvsViewData>;

final recentSurvsRepositoryProvider = FutureProvider<RecentSurvsViewDataList>((ref) async {
    try {
      final db = ref.watch(DomainDatabase.provider);
      return await db.fetchRecentSurvs();
    } catch (e) {
      return [];
    }
});
