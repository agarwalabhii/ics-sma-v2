import 'package:domain_database/src/dep/repository/surv/surv_order_verification_model.dart';
import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/model_base_mixin.dart';
import 'package:domain_database/src/surv/table/surv_order_verification_table.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:local_common/common.dart';

typedef RepoTable = SurvOrderVerification;
typedef RepoDataClass = SurvOrderVerificationData;
typedef RepoCompanion = SurvOrderVerificationCompanion;

abstract class SurvOrderVerificationRepository
    with ModelBaseMixin<RepoTable, RepoDataClass, RepoCompanion>
    implements SurvOrderVerificationModel {
  @override
  final ModelContext modelContext;

  @override
  RepoCompanion? companion;

  @override
  RepoCompanion? resetCompanion;

  SurvOrderVerificationRepository({required this.modelContext});

  //
  // Field methods
  //

  @override
  String? get additionalComments => companion?.additionalComments.value;

  @override
  void setAdditionalComments(WidgetRef ref, String? newValue) => setValue(
      ref, companion!.copyWith(additionalComments: drift.Value(newValue)));

  @override
  bool? get firmInCompliance => companion?.firmInCompliance.value;

  @override
  void setFirmInCompliance(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(firmInCompliance: drift.Value(newValue)));

  @override
  bool? get individualInCompliance => companion?.individualInCompliance.value;

  @override
  void setIndividualInCompliance(WidgetRef ref, bool? newValue) => setValue(
      ref, companion!.copyWith(individualInCompliance: drift.Value(newValue)));

  //
  // Repository methods
  //

  @override
  drift.TableInfo<RepoTable, RepoDataClass> getTable(DomainDatabase db) =>
      db.survOrderVerification;

  @override
  void bootstrap(WidgetRef ref) {
    companion ??= ref.watch(provider(modelContext.id));
    resetCompanion ??= ref.watch(provider(modelContext.id));
    super.bootstrap(ref);
  }

  @override
  void setValue(WidgetRef ref, SurvOrderVerificationCompanion newCompanion) {
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
