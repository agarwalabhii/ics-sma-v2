
import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/domain_delete_mixin.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_local_firm_usecase.g.dart';

@riverpod
class DeleteLocalFirmUsecase extends _$DeleteLocalFirmUsecase {

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  void updateTransportState(TransportState transportState) {
  }

  Future<int> deleteCascade(int id) async {
    await Future.wait([
      _delete(ref.read(firmRepositoryLocalProvider.notifier), id),
      _delete(ref.read(firmAdditionalInfoRepositoryLocalProvider.notifier), id),
      _delete(ref.read(firmGeneralInfoRepositoryLocalProvider.notifier), id),
      _delete(ref.read(firmManagingOfficialRepositoryLocalProvider.notifier), id),
      _delete(ref.read(firmOrganizationStructRepositoryLocalProvider.notifier), id),
      _delete(ref.read(firmOwnerInfoRepositoryLocalProvider.notifier), id),
      _delete(ref.read(firmProductInfoRepositoryLocalProvider.notifier), id),
    ]);

    return 0;
  }

  Future<int> _delete(DomainDeleteMixin repo, int id) async {
    return repo.deleteSingle(id: id, updateStateFunc: updateTransportState);
  }
}
