import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

part 'store_remote_firm_usecase.g.dart';

@riverpod
class StoreRemoteFirmUsecase extends _$StoreRemoteFirmUsecase {
  late final _firmSetRepository = ref.read(firmSetRepositoryRemoteProvider.notifier);

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  void _updateUsecaseState(TransportState transportState) {
    state = state.addTransportState(transportState: transportState);
  }

  Future<int> storeAll(Function(int count) updateFunc) async {
    final lastDefault = "1969-07-20T20:18:04.000Z";

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? lastAsString = prefs.getString('firm_set_last_sync');
    final lastSyncTimestamp = DateTime.parse(lastAsString ?? lastDefault);
    
    print("lastSyncTimestamp: $lastSyncTimestamp");

    final stream = _firmSetRepository.fetchAfter(lastSyncTimestamp);
    var count = 0;
    await for (final remote in stream) {
      // print("remote firmeillance: $remote");
      storeLocally(remote: remote);
      count++;
      if (count % 100 == 0) {
        updateFunc(count);
      }
    }

    await prefs.setString('firm_set_last_sync', lastSyncTimestamp.toIso8601String());
    updateFunc(count);
    return count;
  }

  Future<void> storeLocally({required FirmInfo remote, int? localId}) async {
    Future.wait([
      _storeFirm(remote, localId),
      _storeFirmAdditionalInfo(remote),
      _storeFirmGeneralInfo(remote),
      _storeFirmManagingOfficial(remote),
      _storeOrganizationStruct(remote),
      _storeFirmOwnerInfo(remote),
      _storeFirmProductInfo(remote),
    ]);
  }

  Future<LocalResponseData<FirmData?>> _storeFirm(FirmInfo remote, int? localId) async {
    final repo = ref.read(firmRepositoryLocalProvider.notifier);
    final local = remote.toFirm(localId: localId);
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<FirmAdditionalInfoData?>> _storeFirmAdditionalInfo(FirmInfo remote) async {
    final repo = ref.read(firmAdditionalInfoRepositoryLocalProvider.notifier);
    final local = remote.toFirmAddtionalInfo();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<FirmGeneralInfoData?>> _storeFirmGeneralInfo(FirmInfo remote) async {
    final repo = ref.read(firmGeneralInfoRepositoryLocalProvider.notifier);
    final local = remote.toFirmGenerallInfo();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<FirmManagingOfficialData?>> _storeFirmManagingOfficial(FirmInfo remote) async {
    final repo = ref.read(firmManagingOfficialRepositoryLocalProvider.notifier);
    final local = remote.toFirmManagingOfficial();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<FirmOrganizationStructData?>> _storeOrganizationStruct(FirmInfo remote) async {
    final repo = ref.read(firmOrganizationStructRepositoryLocalProvider.notifier);
    final local = remote.toFirmAOrganizationStruct();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<FirmOwnerInfoData?>> _storeFirmOwnerInfo(FirmInfo remote) async {
    final repo = ref.read(firmOwnerInfoRepositoryLocalProvider.notifier);
    final local = remote.toFirmOwnerInfo();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<FirmProductInfoData?>> _storeFirmProductInfo(FirmInfo remote) async {
    final repo = ref.read(firmProductInfoRepositoryLocalProvider.notifier);
    final local = remote.toFirmProductInfo();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }
}
