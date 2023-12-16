import 'package:domain_database/src/dep/repository/firm/firm_managing_officials_model.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_managing_official_table.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = FirmManagingOfficial;
typedef RepoDataClass = FirmManagingOfficialData;
typedef RepoCompanion = FirmManagingOfficialCompanion;

abstract class FirmManagingOfficialsRepository
    with
        ModelBaseMixin<FirmManagingOfficial, FirmManagingOfficialData,
            RepoCompanion>
    implements
        FirmManagingOfficialsModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  FirmManagingOfficialsRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  String? get officalName1 => companion?.officalName1.value;

  @override
  void setOfficalName1(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalName1: drift.Value(newValue)));

  @override
  String? get officalTitle1 => companion?.officalTitle1.value;

  @override
  void setOfficalTitle1(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalTitle1: drift.Value(newValue)));

  @override
  String? get officalPhone1 => companion?.officalPhone1.value;

  @override
  void setOfficalPhone1(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalPhone1: drift.Value(newValue)));

  @override
  String? get officalExt1 => companion?.officalExt1.value;

  @override
  void setOfficalExt1(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalExt1: drift.Value(newValue)));

  @override
  String? get officalFax1 => companion?.officalFax1.value;

  @override
  void setOfficalFax1(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalFax1: drift.Value(newValue)));

  @override
  String? get officalEmail1 => companion?.officalEmail1.value;

  @override
  void setOfficalEmail1(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalEmail1: drift.Value(newValue)));

  @override
  String? get officalMobile1 => companion?.officalMobile1.value;

  @override
  void setOfficalMobile1(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalMobile1: drift.Value(newValue)));

  @override
  bool? get receiveMobileMessages1 => companion?.receiveMobileMessages1.value;

  @override
  void setReceiveMobileMessages1(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(receiveMobileMessages1: drift.Value(newValue)));

  @override
  String? get officalName2 => companion?.officalName2.value;

  @override
  void setOfficalName2(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalName2: drift.Value(newValue)));

  @override
  String? get officalTitle2 => companion?.officalTitle2.value;

  @override
  void setOfficalTitle2(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalTitle2: drift.Value(newValue)));

  @override
  String? get officalPhone2 => companion?.officalPhone2.value;

  @override
  void setOfficalPhone2(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalPhone2: drift.Value(newValue)));

  @override
  String? get officalExt2 => companion?.officalExt2.value;

  @override
  void setOfficalExt2(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalExt2: drift.Value(newValue)));

  @override
  String? get officalFax2 => companion?.officalFax2.value;

  @override
  void setOfficalFax2(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalFax2: drift.Value(newValue)));

  @override
  String? get officalEmail2 => companion?.officalEmail2.value;

  @override
  void setOfficalEmail2(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalEmail2: drift.Value(newValue)));

  @override
  String? get officalMobile2 => companion?.officalMobile2.value;

  @override
  void setOfficalMobile2(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(officalMobile2: drift.Value(newValue)));

  @override
  bool? get receiveMobileMessages2 => companion?.receiveMobileMessages2.value;

  @override
  void setReceiveMobileMessages2(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(receiveMobileMessages2: drift.Value(newValue)));

  @override
  void clearOfficial1(WidgetRef ref) {
    setValue(
        ref,
        companion!.copyWith(
          officalName1: null,
          officalTitle1: null,
          officalExt1: null,
          officalPhone1: null,
          officalFax1: null,
          officalMobile1: null,
          officalEmail1: null,
          receiveMobileMessages1: null,
        ));
  }

  @override
  bool? get sameAsOwnerInfo => companion?.sameAsOwnerInfo.value;

  @override
  void setSameAsOwnerInfo(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(sameAsOwnerInfo: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.firmManagingOfficial;

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
  void setFetchedResult(FirmManagingOfficialData dataClass) {
    companion = dataClass.toCompanion(true);
  }

  @override
  FeatureMode get featureMode => modelContext.featureMode;

  @override
  get id => modelContext.id;

  final provider =
      StateProvider.autoDispose.family<RepoCompanion, int>((ref, id) {
    return RepoCompanion(id: drift.Value(id));
  });
}
