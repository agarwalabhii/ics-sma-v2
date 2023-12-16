import 'package:anet/common/widgets/feature/feature_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

class PageArguments {
  final Feature feature;
  final FeatureMode featureMode;
  final int id;

  PageArguments(
      {required this.feature, required this.featureMode, this.id = 0});
}

class FeatureWidget extends ConsumerWidget {
  final Feature feature;
  final PageArguments args;
  const FeatureWidget({required this.feature, required this.args, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featureFactory = ref.watch(featureFactoryProvider(args));

    return featureFactory.when(
        data: (data) {
          return data;
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, __) => Text('$e'));
  }
}
