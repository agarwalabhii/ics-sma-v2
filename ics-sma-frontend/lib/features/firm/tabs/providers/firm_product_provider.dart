import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

final productInfoTabStateProvider =
    StateNotifierProvider<
        ProductInfoTabNotifier, ProductInfoTabState>(
    (ref) => ProductInfoTabNotifier(ProductInfoTabState(
          MultiString(),
          MultiString(),
          MultiString(),
          "",
              true,
        )));

class ProductInfoTabNotifier extends StateNotifier<ProductInfoTabState> {
  ProductInfoTabNotifier(super.state);

  void setProductType(MultiString input) {
    state = state.copyWith(productType: input);
  }

  void setProductOrigin(MultiString input) {
    final bool imported =
        input.listValues.contains("DI") || input.listValues.contains("IM");
    if (imported) {
      state = state.copyWith(productOrigin: input, importedOrigin: false);
      return;
    }
    state = state.copyWith(
      productOrigin: input,
      importedOrigin: true,
    );
  }

  void setVolume(MultiString input) {
    state = state.copyWith(volume: input);
  }

  void setCountryOfOrigin(String input) {
    state = state.copyWith(countryOfOrigin: input);
  }
}

class ProductInfoTabState {
  final MultiString productType;
  final MultiString productOrigin;
  final bool importedOrigin;
  final MultiString volume;
  final String countryOfOrigin;

  ProductInfoTabState(
      this.productType, this.productOrigin, this.volume,
      this.countryOfOrigin, this.importedOrigin);

  ProductInfoTabState copyWith({
    productType,
    productOrigin,
    volume,
    countryOfOrigin,
    importedOrigin,
  }) {
    return ProductInfoTabState(
        productType ?? this.productType,
        productOrigin ?? this.productOrigin,
        volume ?? this.volume,
        countryOfOrigin ?? this.countryOfOrigin,
        importedOrigin ?? this.importedOrigin);
  }
}
