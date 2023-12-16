import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/firm/model/firm_additional_info_remote.dart';
import 'package:sma_remote_data/src/domain/firm/model/firm_general_info_remote.dart';
import 'package:sma_remote_data/src/domain/firm/model/firm_managing_official_remote.dart';
import 'package:sma_remote_data/src/domain/firm/model/firm_organization_struct_remote.dart';
import 'package:sma_remote_data/src/domain/firm/model/firm_owner_info_remote.dart';
import 'package:sma_remote_data/src/domain/firm/model/firm_product_info_remote.dart';
import 'package:sma_remote_data/src/domain/firm/model/firm_remote.dart';
import 'package:sma_remote_data/src/domain/firm/repository/firm_set_repository_remote.dart';
import 'package:sma_remote_data/src/domain/firm/usecase/store_remote_firm_usecase.dart';

part 'create_remote_firm_usecase.g.dart';

@riverpod
class CreateRemoteFirmUsecase extends _$CreateRemoteFirmUsecase {
  late final _firmSetRepository = ref.read(firmSetRepositoryRemoteProvider.notifier);
  late final _storeRemoteFirmUsecase = ref.read(storeRemoteFirmUsecaseProvider.notifier);
  @override
  UsecaseState build() {
    return UsecaseState();
  }

  void _updateUsecaseState(TransportState transportState) {
    state = state.addTransportState(transportState: transportState);
    transportState.printDebug();
  }

  Future<bool> create({required int id}) async {
    state = state.start();
    final localId = id;

    final remote = await _assembleRemote(id);
    final response = await _firmSetRepository.create(remote);
    print("response: $response");
    
    final newRemote = response.body;
    if (newRemote != null) {
      _storeRemoteFirmUsecase.storeLocally(remote: newRemote, localId: localId);
    }

    state = state.end();
    return (response.error == null);
  }

  Future<FirmInfo> _assembleRemote(int id) async {
    var remote = FirmInfo();

    remote = await _fetchAndCopyFirm(remote, id);
    remote = await _fetchAndCopyFirmAdditionalInfo(remote, id);
    remote = await _fetchAndCopyFirmGeneralInfo(remote, id);
    remote = await _fetchAndCopyFirmManagingOficial(remote, id);
    remote = await _fetchAndCopyFirmOrganizationStruct(remote, id);
    remote = await _fetchAndCopyFirmOwnerInfo(remote, id);
    remote = await _fetchAndCopyFirmProductInfo(remote, id);

    return remote;
  }

  Future<FirmInfo> _fetchAndCopyFirm(FirmInfo remote, int firmId) async {
    final repo = ref.read(firmRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: firmId, updateStateFunc: _updateUsecaseState);
    return remote.copyWithFirm(localResponse.body!);
  }

  Future<FirmInfo> _fetchAndCopyFirmAdditionalInfo(FirmInfo remote, int firmId) async {
    final repo = ref.read(firmAdditionalInfoRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: firmId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithFirmAdditionalInfo(localResponse.body!);
  }

  Future<FirmInfo> _fetchAndCopyFirmGeneralInfo(FirmInfo remote, int firmId) async {
    final repo = ref.read(firmGeneralInfoRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: firmId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithFirmGeneralInfo(localResponse.body!);
  }

  Future<FirmInfo> _fetchAndCopyFirmManagingOficial(FirmInfo remote, int firmId) async {
    final repo = ref.read(firmManagingOfficialRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: firmId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithFirmManagingOfficial(localResponse.body!);
  }

  Future<FirmInfo> _fetchAndCopyFirmOrganizationStruct(FirmInfo remote, int firmId) async {
    final repo = ref.read(firmOrganizationStructRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: firmId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithFirmOrganizationStruct(localResponse.body!);
  }

  Future<FirmInfo> _fetchAndCopyFirmOwnerInfo(FirmInfo remote, int firmId) async {
    final repo = ref.read(firmOwnerInfoRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: firmId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithFirmOwnerInfo(localResponse.body!);
  }

  Future<FirmInfo> _fetchAndCopyFirmProductInfo(FirmInfo remote, int firmId) async {
    final repo = ref.read(firmProductInfoRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: firmId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithFirmProductInfo(localResponse.body!);
  }
}
