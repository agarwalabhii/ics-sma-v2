import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/dep/repository/surv/surv_custom_exempt_review_model.dart';
import 'package:domain_database/src/surv/table/surv_custom_exempt_review_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef RepoTable = SurvCustomExemptReview;
typedef RepoDataClass = SurvCustomExemptReviewData;
typedef RepoCompanion = SurvCustomExemptReviewCompanion;

abstract class SurvCustomExemptReviewRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvCustomExemptReviewModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvCustomExemptReviewRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  bool? get wasCustomExemptReviewConducted =>
      companion?.wasCustomExemptReviewConducted.value;

  @override
  void setWasCustomExemptReviewConducted(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(wasCustomExemptReviewConducted: drift.Value(newValue)));

  @override
  bool? get doesFacilityPerformCustomSlaughter =>
      companion?.doesFacilityPerformCustomSlaughter.value;

  @override
  void setDoesFacilityPerformCustomSlaughter(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              doesFacilityPerformCustomSlaughter: drift.Value(newValue)));

  @override
  bool? get doesFacilityPerformCustomProcessing =>
      companion?.doesFacilityPerformCustomProcessing.value;

  @override
  void setDoesFacilityPerformCustomProcessing(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              doesFacilityPerformCustomProcessing: drift.Value(newValue)));

  @override
  String? get nameIIC => companion?.nameIICText.value;

  @override
  void setNameIIC(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(nameIICText: drift.Value(newValue)));

  @override
  String? get namePHV => companion?.namePHVText.value;

  @override
  void setNamePHV(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(namePHVText: drift.Value(newValue)));

  @override
  String? get doesFacilityEmail => companion?.doesFacilityEmail.value;

  @override
  void setDoesFacilityEmail(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(doesFacilityEmail: drift.Value(newValue)));

  @override
  bool? get officialEstablishment => companion?.officialEstablishment.value;

  @override
  void setOfficialEstablishment(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(officialEstablishment: drift.Value(newValue)));

  @override
  bool? get copyGiven => companion?.copyGiven.value;

  @override
  void setCopyGiven(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(copyGiven: drift.Value(newValue)));

  @override
  bool? get humaneLivestockSlaughter =>
      companion?.humaneLivestockSlaughter.value;

  @override
  void setHumaneLivestockSlaughter(WidgetRef ref, bool? newValue) => setValue(
      ref,
      companion!.copyWith(humaneLivestockSlaughter: drift.Value(newValue)));

  @override
  String? get humaneLivestockSlaughterText =>
      companion?.humaneLivestockSlaughterText.value;

  @override
  void setHumaneLivestockSlaughterText(
          WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(humaneLivestockSlaughterText: drift.Value(newValue)));

  @override
  bool? get recordkeepingAcceptable => companion?.recordkeepingAcceptable.value;

  @override
  void setRecordkeepingAcceptable(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(recordkeepingAcceptable: drift.Value(newValue)));

  @override
  String? get recordkeepingAcceptableText =>
      companion?.recordkeepingAcceptableText.value;

  @override
  void setRecordkeepingAcceptableText(
          WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(recordkeepingAcceptableText: drift.Value(newValue)));

  @override
  bool? get sanitaryOperationsAcceptable =>
      companion?.sanitaryOperationsAcceptable.value;

  @override
  void setSanitaryOperationsAcceptable(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(sanitaryOperationsAcceptable: drift.Value(newValue)));
  @override
  String? get sanitaryOperationsAcceptableText =>
      companion?.sanitaryOperationsAcceptableText.value;

  @override
  void setSanitaryOperationsAcceptableText(WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              sanitaryOperationsAcceptableText: drift.Value(newValue)));

  @override
  bool? get pestControlAcceptable => companion?.pestControlAcceptable.value;

  @override
  void setPestControlAcceptable(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(pestControlAcceptable: drift.Value(newValue)));
  @override
  String? get pestControlAcceptableText =>
      companion?.pestControlAcceptableText.value;

  @override
  void setPestControlAcceptableText(
          WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(pestControlAcceptableText: drift.Value(newValue)));

  @override
  bool? get ineditbleMaterialAcceptable =>
      companion?.ineditbleMaterialAcceptable.value;

  @override
  void setIneditbleMaterialAcceptable(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(ineditbleMaterialAcceptable: drift.Value(newValue)));
  @override
  String? get ineditbleMaterialAcceptableText =>
      companion?.ineditbleMaterialAcceptableText.value;

  @override
  void setIneditbleMaterialAcceptableText(WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              ineditbleMaterialAcceptableText: drift.Value(newValue)));

  @override
  bool? get labelingAcceptable => companion?.labelingAcceptable.value;

  @override
  void setLabelingAcceptable(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(labelingAcceptable: drift.Value(newValue)));

  @override
  String? get labelingAcceptableText => companion?.labelingAcceptableText.value;

  @override
  void setLabelingAcceptableText(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(labelingAcceptableText: drift.Value(newValue)));

  @override
  bool? get pathogenAcceptable => companion?.pathogenAcceptable.value;

  @override
  void setPathogenAcceptable(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(pathogenAcceptable: drift.Value(newValue)));

  @override
  String? get pathogenAcceptableText => companion?.pathogenAcceptableText.value;

  @override
  void setPathogenAcceptableText(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(pathogenAcceptableText: drift.Value(newValue)));

  @override
  bool? get waterAcceptable => companion?.waterAcceptable.value;

  @override
  void setWaterAcceptable(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(waterAcceptable: drift.Value(newValue)));
  @override
  String? get waterAcceptableText => companion?.waterAcceptableText.value;

  @override
  void setWaterAcceptableText(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(waterAcceptableText: drift.Value(newValue)));

  @override
  bool? get wasteAcceptable => companion?.wasteAcceptable.value;

  @override
  void setWasteAcceptable(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(wasteAcceptable: drift.Value(newValue)));
  @override
  String? get wasteAcceptableText => companion?.wasteAcceptableText.value;

  @override
  void setWasteAcceptableText(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(wasteAcceptableText: drift.Value(newValue)));

  @override
  bool? get misbrandedObservedLabel => companion?.misbrandedObservedLabel.value;

  @override
  void setMisbrandedObservedLabel(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(misbrandedObservedLabel: drift.Value(newValue)));
  @override
  String? get misbrandedObservedLabelText =>
      companion?.misbrandedObservedLabelText.value;

  @override
  void setMisbrandedObservedLabelText(
          WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(misbrandedObservedLabelText: drift.Value(newValue)));

  @override
  bool? get misbrandedLikelyLabel => companion?.misbrandedLikelyLabel.value;

  @override
  void setMisbrandedLikelyLabel(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(misbrandedLikelyLabel: drift.Value(newValue)));
  @override
  String? get misbrandedLikelyLabelText =>
      companion?.misbrandedLikelyLabelText.value;

  @override
  void setMisbrandedLikelyLabelText(
          WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(misbrandedLikelyLabelText: drift.Value(newValue)));

  @override
  bool? get adminsitrativeConsentAgreement =>
      companion?.adminsitrativeConsentAgreement.value;

  @override
  void setAdminsitrativeConsentAgreement(
          WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!
              .copyWith(adminsitrativeConsentAgreement: drift.Value(newValue)));

  @override
  String? get adminsitrativeConsentAgreementText =>
      companion?.adminsitrativeConsentAgreementText.value;

  @override
  void setAdminsitrativeConsentAgreementText(WidgetRef ref, String? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              adminsitrativeConsentAgreementText: drift.Value(newValue)));

  @override
  bool? get recommendForRemovalOfPrivileges =>
      companion?.recommendForRemovalOfPrivileges.value;

  @override
  void setRecommendForRemovalOfPrivileges(WidgetRef ref, bool? newValue) =>
      setValue(
          ref,
          companion!.copyWith(
              recommendForRemovalOfPrivileges: drift.Value(newValue)));

  @override
  DateTime? get dateCopyGiven => companion?.dateCopyGiven.value;

  @override
  void setDateCopyGiven(WidgetRef ref, DateTime? newValue) =>
      setValue(ref, companion!.copyWith(dateCopyGiven: drift.Value(newValue)));

  @override
  MultiString? get species => companion?.species.value;

  @override
  void setSpecies(WidgetRef ref, MultiString? newValue) =>
      setValue(ref, companion!.copyWith(species: drift.Value(newValue)));

  @override
  String? get reviewInterval => companion?.reviewInterval.value;

  @override
  void setReviewInterval(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(reviewInterval: drift.Value(newValue)));

  @override
  String? get otherInterval => companion?.otherInterval.value;

  @override
  void setOtherInterval(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(otherInterval: drift.Value(newValue)));

  @override
  String? get otherSpecies => companion?.otherSpecies.value;

  @override
  void setOtherSpecies(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(otherSpecies: drift.Value(newValue)));

  @override
  String? get additionalComments => companion?.additionalComments.value;

  @override
  void setAdditionalComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(additionalComments: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survCustomExemptReview;

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
  FeatureMode get featureMode => modelContext.featureMode;

  @override
  int get id => modelContext.id;

  @override
  void setFetchedResult(RepoDataClass dataClass) {
    companion = dataClass.toCompanion(true);
  }

  final provider =
      StateProvider.autoDispose.family<RepoCompanion, int>((ref, id) {
    return RepoCompanion(id: drift.Value(id));
  });
}
