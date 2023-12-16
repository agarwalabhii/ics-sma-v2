import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_product_info_table.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/dep/repository/firm/firm_product_info_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef RepoTable = FirmProductInfo;
typedef RepoDataClass = FirmProductInfoData;
typedef RepoCompanion = FirmProductInfoCompanion;

abstract class FirmProductInfoRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements FirmProductInfoModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  FirmProductInfoRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  MultiString? get productsHandled => companion?.productsHandled.value;

  @override
  void setProductsHandled(WidgetRef ref, MultiString? newValue) => setValue(
      ref, companion!.copyWith(productsHandled: drift.Value(newValue)));

  @override
  MultiString? get amenableProducts => companion?.amenableProducts.value;

  @override
  void setAmenableProducts(WidgetRef ref, MultiString? newValue) => setValue(
      ref, companion!.copyWith(amenableProducts: drift.Value(newValue)));

  @override
  MultiString? get productOrigin => companion?.productOrigin.value;

  @override
  void setProductOrigin(WidgetRef ref, MultiString? newValue) =>
      setValue(ref, companion!.copyWith(productOrigin: drift.Value(newValue)));

  @override
  String? get countryOfOrigin => companion?.countryOfOrigin.value;

  @override
  void setCountryOfOrigin(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(countryOfOrigin: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.firmProductInfo;

  @override
  void bootstrap(WidgetRef ref) {
    companion ??= ref.watch(provider(modelContext.id));
    resetCompanion ??= companion;
    super.bootstrap(ref);
  }

  @override
  void setValue(WidgetRef ref, RepoCompanion newCompanion) {
    ref.watch(provider(modelContext.id).notifier).state = newCompanion;
    companion = newCompanion;
  }

  @override
  void setFetchedResult(RepoDataClass dataClass) {
    companion = dataClass.toCompanion(true);
  }

  @override
  FeatureMode get featureMode => modelContext.featureMode;

  @override
  int get id => modelContext.id;

  final provider =
      StateProvider.autoDispose.family<RepoCompanion, int>((ref, id) {
    return RepoCompanion(id: drift.Value(id));
  });
}
