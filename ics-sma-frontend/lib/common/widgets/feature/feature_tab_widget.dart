import 'package:anet/common/widgets/feature/feature_tab_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

class FeatureTabWidget extends ConsumerWidget {
  final ModelContext modelContext;

  const FeatureTabWidget({required this.modelContext, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featureTabFactory =
        ref.watch(featureFactoryTabProvider(modelContext));

    return featureTabFactory.when(
        data: (data) {
          return data;
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, __) => Text('$e'));
  }
}
