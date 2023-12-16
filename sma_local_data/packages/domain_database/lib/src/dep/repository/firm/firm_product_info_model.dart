import 'package:domain_database/src/dep/repository/model_base.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_common/database.dart';

abstract class FirmProductInfoModel extends ModelBase {
  MultiString? get productsHandled;
  void setProductsHandled(WidgetRef ref, MultiString? newValue);
  MultiString? get amenableProducts;
  void setAmenableProducts(WidgetRef ref, MultiString? newValue);
  MultiString? get productOrigin;
  void setProductOrigin(WidgetRef ref, MultiString? newValue);
  String? get countryOfOrigin;
  void setCountryOfOrigin(WidgetRef ref, String? newValue);
}
