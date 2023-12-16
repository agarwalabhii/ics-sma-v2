import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/dep/repository/surv/surv_additional_info_model.dart';
import 'package:domain_database/src/surv/table/surv_additional_info_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = SurvAdditionalInfo;
typedef RepoDataClass = SurvAdditionalInfoData;
typedef RepoCompanion = SurvAdditionalInfoCompanion;

abstract class SurvAdditionalInfoRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvAdditionalInfoModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvAdditionalInfoRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  bool? get investigatorMeetRep => companion?.investigatorMeetRep.value;

  @override
  void setInvestigatorMeetRep(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(investigatorMeetRep: drift.Value(newValue)));

  @override
  bool? get isFollowUpFromPrevious => companion?.isFollowUpFromPrevious.value;

  @override
  void setIsFollowUpFromPrevious(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(isFollowUpFromPrevious: drift.Value(newValue)));

  @override
  bool? get investigatorReferFindings =>
      companion?.investigatorReferFindings.value;

  @override
  void setInvestigatorReferFindings(WidgetRef ref, bool? newValue) => setValue(
      ref,
      companion!.copyWith(investigatorReferFindings: drift.Value(newValue)));

  @override
  String? get firmRepresentative1 => companion?.firmRepresentative1.value;

  @override
  void setFirmRepresentative1(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(firmRepresentative1: drift.Value(newValue)));

  @override
  String? get firmRepresentativeTitle1 =>
      companion?.firmRepresentativeTitle1.value;

  @override
  void setFirmRepresentativeTitle1(WidgetRef ref, String? newValue) => setValue(
      ref,
      companion!.copyWith(firmRepresentativeTitle1: drift.Value(newValue)));

  @override
  String? get firmRepresentative2 => companion?.firmRepresentative2.value;

  @override
  void setFirmRepresentative2(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(firmRepresentative2: drift.Value(newValue)));

  @override
  String? get firmRepresentativeTitle2 =>
      companion?.firmRepresentativeTitle2.value;

  @override
  void setFirmRepresentativeTitle2(WidgetRef ref, String? newValue) => setValue(
      ref,
      companion!.copyWith(firmRepresentativeTitle2: drift.Value(newValue)));

  @override
  String? get followUpMonths => companion?.followUpMonths.value;

  @override
  void setFollowUpMonths(WidgetRef ref, String? newValue) =>
      setValue(ref, companion!.copyWith(followUpMonths: drift.Value(newValue)));

  @override
  String? get referralComments => companion?.referralComments.value;

  @override
  void setReferralComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(referralComments: drift.Value(newValue)));

  @override
  String? get additionalComments => companion?.additionalComments.value;

  @override
  void setAdditionalComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(additionalComments: drift.Value(newValue)));

  @override
  String? get followUpComments => companion?.followUpComments.value;

  @override
  void setFollowUpComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(followUpComments: drift.Value(newValue)));

  @override
  DateTime? get followUpDateComplete => companion?.followUpDateComplete.value;

  @override
  void setFollowUpDateComplete(WidgetRef ref, DateTime? newValue) => setValue(
      ref, companion!.copyWith(followUpDateComplete: drift.Value(newValue)));

  @override
  bool? get isFollowUp => companion?.isFollowUp.value;

  @override
  void setIsFollowUp(WidgetRef ref, bool? newValue) =>
      setValue(ref, companion!.copyWith(isFollowUp: drift.Value(newValue)));

  @override
  bool? get followUpComplete => companion?.followUpComplete.value;

  @override
  void setFollowUpComplete(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(followUpComplete: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survAdditionalInfo;

  @override
  void bootstrap(WidgetRef ref) {
    companion = ref.watch(provider(modelContext.id));
    resetCompanion = ref.watch(provider(modelContext.id));
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
