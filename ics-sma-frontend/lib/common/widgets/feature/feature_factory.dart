import 'package:anet/common/widgets/feature/feature_widget.dart';
import 'package:anet/features/firm/pages/firm_page.dart';
import 'package:anet/features/firm/state/firm_state.dart';
import 'package:anet/features/surv/pages/surv_page.dart';
import 'package:anet/features/surv/state/surv_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

final featureFactoryProvider =
    FutureProvider.autoDispose.family<Widget, PageArguments>((ref, args) async {
  int id = args.id;
  if (id == 0 && args.featureMode == FeatureMode.create) {
    final db = ref.watch(DomainDatabase.provider);
    final newId = await db.generateNewId(Feature.surv);
    id = newId;
  }

  final modelContext = ModelContext(
      id: id, featureMode: args.featureMode, feature: args.feature);
  switch (args.feature) {
    case Feature.firm:
      final state = ref.watch(firmProvider(modelContext));
      state.loadIf(ref);
      return FirmPage(state: state);
    case Feature.surv:
      final state = ref.watch(survProvider(modelContext));
      state.loadIf(ref);
      return SurvPage(state: state);
    default:
  }
  return const Placeholder();
});
