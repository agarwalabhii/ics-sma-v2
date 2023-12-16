import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_organization_struct_table.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/dep/repository/firm/firm_organization_struct_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = FirmOrganizationStruct;
typedef RepoDataClass = FirmOrganizationStructData;
typedef RepoCompanion = FirmOrganizationStructCompanion;

abstract class FirmOrganizationStructRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements FirmOrganizationStructModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  FirmOrganizationStructRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  String? get organizationName1 => companion?.organizationName.value;

  @override
  void setOrganizationName1(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(organizationName: drift.Value(newValue)));

  @override
  String? get organizationType1 => companion?.organizationType.value;

  @override
  void setOrganizationType1(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(organizationType: drift.Value(newValue)));

  @override
  bool? get sameAsFirmName => companion?.sameAsFirmName.value;

  @override
  void setSameAsFirmName(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(sameAsFirmName: drift.Value(newValue)));

  @override
  bool? get sameAsMailingAddress => companion?.sameAsMailingAddress.value;

  @override
  void setSameAsMailingAddress(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(sameAsMailingAddress: drift.Value(newValue)));

  @override
  bool? get sameAsPhysicalAddress => companion?.sameAsPhysicalAddress.value;

  @override
  void setSameAsPhysicalAddress(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(sameAsPhysicalAddress: drift.Value(newValue)));

  @override
  String? get officalName1 => null;

  @override
  void setOfficalName1(WidgetRef ref, String? newValue) {}

  @override
  String? get officalName2 => null;

  @override
  void setOfficalName2(WidgetRef ref, String? newValue) {}

  @override
  String? get officalName3 => null;

  @override
  void setOfficalName3(WidgetRef ref, String? newValue) {}

  @override
  String? get officalName4 => null;

  @override
  void setOfficalName4(WidgetRef ref, String? newValue) {}

  @override
  String? get officalTitle1 => null;

  @override
  void setOfficalTitle1(WidgetRef ref, String? newValue) {}

  @override
  String? get officalTitle2 => null;

  @override
  void setOfficalTitle2(WidgetRef ref, String? newValue) {}

  @override
  String? get officalTitle3 => null;

  @override
  void setOfficalTitle3(WidgetRef ref, String? newValue) {}

  @override
  String? get officalTitle4 => null;

  @override
  void setOfficalTitle4(WidgetRef ref, String? newValue) {}

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.firmOrganizationStruct;

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
