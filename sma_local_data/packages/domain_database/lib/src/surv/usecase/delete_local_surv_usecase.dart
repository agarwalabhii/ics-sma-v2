
import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:domain_database/src/surv/repository/surv_non_food_safety_repository_local.dart';
import 'package:domain_database/src/surv/repository/surv_order_verification_repository_local.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_local_surv_usecase.g.dart';

@riverpod
class DeleteLocalSurvUsecase extends _$DeleteLocalSurvUsecase {

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  void updateTransportState(TransportState transportState) {
  }

  Future<int> deleteCascade(int id) async {
    await Future.wait([
      _delete(ref.read(survRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survAdditionalInfoRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survCustomExemptReviewRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survFoodDefenseRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survFoodSafetyRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survGeneralInfoRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survImportedProductRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survNonFoodSafetyRepositoryLocalProvider.notifier), id),
      _delete(ref.read(survOrderVerificationRepositoryLocalProvider.notifier), id),
    ]);

    return 0;
  }

  Future<int> _delete(DomainDeleteMixin repo, int id) async {
    return repo.deleteSingle(id: id, updateStateFunc: updateTransportState);
  }
}
