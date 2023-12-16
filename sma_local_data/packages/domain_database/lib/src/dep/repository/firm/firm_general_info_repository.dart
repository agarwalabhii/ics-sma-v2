import 'package:domain_database/dep_database.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/firm/table/firm_general_info_table.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef RepoTable = FirmGeneralInfo;
typedef RepoDataClass = FirmGeneralInfoData;
typedef RepoCompanion = FirmGeneralInfoCompanion;

class FirmGeneralInfoRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements FirmGeneralInfoModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  FirmGeneralInfoRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  String? get name => companion?.name.value;

  @override
  void setName(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(name: drift.Value(newValue)));

  @override
  String? get doingBusinessAs => companion?.doingBusinessAs.value;

  @override
  void setDoingBusinessAs(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(doingBusinessAs: drift.Value(newValue)));

  @override
  String? get alsoKnownAs => companion?.alsoKnownAs.value;

  @override
  void setAlsoKnownAs(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(alsoKnownAs: drift.Value(newValue)));

  @override
  String? get previousName => companion?.previousName.value;

  @override
  void setPreviousName(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(previousName: drift.Value(newValue)));

  @override
  bool? get contactRegionalOffice => companion?.contactRegionalOffice.value;

  @override
  void setContactRegionalOffice(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(contactRegionalOffice: drift.Value(newValue)));

  @override
  bool? get mailingAddressSameAsFirmAddress =>
      companion?.mailingAddressSameAsFirmAddress.value;

  @override
  void setMailingAddressSameAsFirmAddress(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              mailingAddressSameAsFirmAddress: drift.Value(newValue)));

  @override
  String? get establishmentNumber => companion?.establishmentNumber.value;

  @override
  void setEstablishmentNumber(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(establishmentNumber: drift.Value(newValue)));

  @override
  String? get risk => companion?.risk.value;

  @override
  void setRisk(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(risk: drift.Value(newValue)));

  @override
  String? get regionCode => companion?.regionCode.value;

  @override
  void setRegionCode(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(regionCode: drift.Value(newValue)));

  @override
  String? get subRegionCode => companion?.subRegionCode.value;

  @override
  void setSubRegionCode(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(subRegionCode: drift.Value(newValue)));

  @override
  String? get assignCode => companion?.assignCode.value;

  @override
  void setAssignCode(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(assignCode: drift.Value(newValue)));

  @override
  String? get numberOfFloors => companion?.numberOfFloors.value;

  @override
  void setNumberOfFloors(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(numberOfFloors: drift.Value(newValue)));

  @override
  String? get numberOfEmp => companion?.numberOfEmp.value;

  @override
  void setNumberOfEmp(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(numberOfEmp: drift.Value(newValue)));

  @override
  String? get approxSqFootage => companion?.approxSqFootage.value;

  @override
  void setApproxSqFootage(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(approxSqFootage: drift.Value(newValue)));

  @override
  String? get primaryBusinessType => companion?.primaryBusinessType.value;

  @override
  void setPrimaryBusinessType(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(primaryBusinessType: drift.Value(newValue)));

  @override
  String? get secondaryBusinessType => companion?.secondaryBusinessType.value;

  @override
  void setSecondaryBusinessType(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(secondaryBusinessType: drift.Value(newValue)));

  @override
  String? get tertiaryBusinessType => companion?.tertiaryBusinessType.value;

  @override
  void setTertiaryBusinessType(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(tertiaryBusinessType: drift.Value(newValue)));

  @override
  MultiString? get businessActivities => companion?.businessActivities.value;

  @override
  void setBusinessActivities(WidgetRef ref, MultiString? newValue) => setValue(
      ref, companion!.copyWith(businessActivities: drift.Value(newValue)));

  @override
  String? get tier => companion?.tier.value;

  @override
  void setTier(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(tier: drift.Value(newValue)));

  @override
  bool? get isFirmRegistered => companion?.isFirmRegistered.value;

  @override
  void setIsFirmRegistered(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(isFirmRegistered: drift.Value(newValue)));

  @override
  bool? get orderIsPermanent => companion?.orderIsPermanent.value;

  @override
  void setOrderIsPermanent(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(orderIsPermanent: drift.Value(newValue)));

  @override
  MultiString? get typeOfOrder => companion?.typeOfOrder.value;

  @override
  void setTypeOfOrder(WidgetRef ref, MultiString? newValue) =>
      setValue(ref, companion!.copyWith(typeOfOrder: drift.Value(newValue)));

  @override
  String? get backupEnergySource => companion?.backupEnergySource.value;

  @override
  void setBackupEnergySource(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(backupEnergySource: drift.Value(newValue)));

  @override
  String? get comments => companion?.comments.value;

  @override
  void setComments(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(comments: drift.Value(newValue)));

  @override
  bool? get firmIsUnderOrder => companion?.firmIsUnderOrder.value;

  @override
  void setFirmIsUnderOrder(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(firmIsUnderOrder: drift.Value(newValue)));

  @override
  DateTime? get expirationOfOrder => companion?.expirationOfOrder.value;

  @override
  void setExpirationOfOrder(WidgetRef ref, DateTime? newValue) => setValue(
      ref, companion!.copyWith(expirationOfOrder: drift.Value(newValue)));

  @override
  bool? get applyToAll => null;

  @override
  void setApplyToAll(WidgetRef ref, bool? newValue) {}

  @override
  bool? get sundayClosed => companion?.isSundayClosed.value;

  @override
  void setSundayClosed(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(isSundayClosed: drift.Value(newValue)));

  @override
  String? get sundayOpen => companion?.sundayOpenTime.value;

  @override
  void setSundayOpen(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(sundayOpenTime: drift.Value(newValue)));

  @override
  String? get sundayClose => companion?.sundayCloseTime.value;

  @override
  void setSundayClose(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(sundayCloseTime: drift.Value(newValue)));

  @override
  bool? get mondayClosed => companion?.isMondayClosed.value;

  @override
  void setMondayClosed(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(isMondayClosed: drift.Value(newValue)));

  @override
  String? get mondayOpen => companion?.mondayOpenTime.value;

  @override
  void setMondayOpen(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(mondayOpenTime: drift.Value(newValue)));

  @override
  String? get mondayClose => companion?.mondayCloseTime.value;

  @override
  void setMondayClose(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(mondayCloseTime: drift.Value(newValue)));

  @override
  bool? get tuesdayClosed => companion?.isTuesdayClosed.value;

  @override
  void setTuesdayClosed(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(isTuesdayClosed: drift.Value(newValue)));

  @override
  String? get tuesdayOpen => companion?.tuesdayOpenTime.value;

  @override
  void setTuesdayOpen(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(tuesdayOpenTime: drift.Value(newValue)));

  @override
  String? get tuesdayClose => companion?.tuesdayCloseTime.value;

  @override
  void setTuesdayClose(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(tuesdayCloseTime: drift.Value(newValue)));

  @override
  bool? get wednesdayClosed => companion?.isWednesdayClosed.value;

  @override
  void setWednesdayClosed(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(isWednesdayClosed: drift.Value(newValue)));

  @override
  String? get wednesdayOpen => companion?.wednesdayOpenTime.value;

  @override
  void setWednesdayOpen(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(wednesdayOpenTime: drift.Value(newValue)));

  @override
  String? get wednesdayClose => companion?.wednesdayCloseTime.value;

  @override
  void setWednesdayClose(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(wednesdayCloseTime: drift.Value(newValue)));

  @override
  bool? get thursdayClosed => companion?.isThursdayClosed.value;

  @override
  void setThursdayClosed(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(isThursdayClosed: drift.Value(newValue)));

  @override
  String? get thursdayOpen => companion?.thursdayOpenTime.value;

  @override
  void setThursdayOpen(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(thursdayOpenTime: drift.Value(newValue)));

  @override
  String? get thursdayClose => companion?.thursdayCloseTime.value;

  @override
  void setThursdayClose(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(thursdayCloseTime: drift.Value(newValue)));

  @override
  bool? get fridayClosed => companion?.isFridayClosed.value;

  @override
  void setFridayClosed(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(isFridayClosed: drift.Value(newValue)));

  @override
  String? get fridayOpen => companion?.fridayOpenTime.value;

  @override
  void setFridayOpen(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(fridayOpenTime: drift.Value(newValue)));

  @override
  String? get fridayClose => companion?.fridayCloseTime.value;

  @override
  void setFridayClose(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(fridayCloseTime: drift.Value(newValue)));

  @override
  bool? get saturdayClosed => companion?.isSaturdayClosed.value;

  @override
  void setSaturdayClosed(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(isSaturdayClosed: drift.Value(newValue)));

  @override
  String? get saturdayOpen => companion?.saturdayOpenTime.value;

  @override
  void setSaturdayOpen(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(saturdayOpenTime: drift.Value(newValue)));

  @override
  String? get saturdayClose => companion?.saturdayCloseTime.value;

  @override
  void setSaturdayClose(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(saturdayCloseTime: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.firmGeneralInfo;

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

  static final provider =
      StateProvider.family<RepoCompanion, int>((ref, id) {
    return RepoCompanion(id: drift.Value(id));
  });
}
