import 'package:anet/features/firm/state/firm_product_info_state.dart';
import 'package:anet/features/firm/tabs/providers/firm_product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class FirmProductInfoTab extends ConsumerWidget {
  final FirmProductInfoState state;

  const FirmProductInfoTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final provider = ref.watch(productInfoTabStateProvider);
    final notifier = ref.watch(productInfoTabStateProvider.notifier);
    return SingleChildScrollView(
      child: Column(
      children: [
        ExpandedRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: FormElementMultiSelectWidget(
                  moduleFirmInfoProductTypeHandled,
                    initialValue: state.productsHandled ?? provider.productType,
                  readOnly: state.featureMode.viewMode,
                  maxSelect: 6,
                    title: "Type of Product Handled", setValue: (value) {
                state.setProductsHandled(ref, value);
                  notifier.setProductType(value);
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: FormElementMultiSelectWidget(
                  moduleFirmInfoOriginatingProductsList,
                    initialValue: state.productOrigin ?? provider.productOrigin,
                  readOnly: state.featureMode.viewMode,
                    title: "Product Origin", setValue: (value) {
                  state.setProductOrigin(ref, value);
                  notifier.setProductOrigin(value);
                  if (!provider.importedOrigin) {
                    state.setCountryOfOrigin(ref, null);
                    notifier.setCountryOfOrigin("");
                  }
              }),
            ),
          ],
        ),
        ExpandedRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
                child: FormElementMultiSelectWidget(
                  moduleFirmInfoProductVolumes,
                  initialValue: state.amenableProducts ?? provider.volume,
                  readOnly: state.featureMode.viewMode,
                  title: "Volume of Amenable Products",
                  setValue: (value) {
                    state.setAmenableProducts(ref, value);
                    notifier.setVolume(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: MultiSelectorWidget(
                  mainList: Strings.countryList,
                  label: "Country of Origin",
                  max: 20,
                  readOnly:
                      provider.importedOrigin || state.featureMode.viewMode,
                  initialValue:
                      state.countryOfOrigin ?? provider.countryOfOrigin,
                  setValue: (value, list) {
                    state.setCountryOfOrigin(ref, value);
                    notifier.setCountryOfOrigin(value);
                  },
                ),
              ),
            ],
          ),
      ],
      ),
    );
  }

}
