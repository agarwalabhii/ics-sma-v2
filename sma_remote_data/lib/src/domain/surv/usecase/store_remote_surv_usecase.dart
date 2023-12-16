import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_additional_info_remote.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_food_defense_remote.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_food_safety_remote.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_general_info_remote.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_imported_product_remote.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_non_food_safety_remote.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_order_verification_remote.dart';
import 'package:sma_remote_data/src/domain/surv/model/surv_remote.dart';
import 'package:sma_remote_data/src/domain/surv/repository/surv_set_repository_remote.dart';

part 'store_remote_surv_usecase.g.dart';

@riverpod
class StoreRemoteSurvUsecase extends _$StoreRemoteSurvUsecase {
  late final _survSetRepository = ref.read(survSetRepositoryRemoteProvider.notifier);

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
    final String? lastAsString = prefs.getString('surv_set_last_sync');
    final lastSyncTimestamp = DateTime.parse(lastAsString ?? lastDefault);
    
    print("lastSyncTimestamp: $lastSyncTimestamp");

    final stream = _survSetRepository.fetchAfter(lastSyncTimestamp);
    var count = 0;
    await for (final remote in stream) {
      // print("remote surveillance: $remote");
      storeLocally(remote: remote);
      count++;
      if (count % 100 == 0) {
        updateFunc(count);
      }
    }

    await prefs.setString('surv_set_last_sync', lastSyncTimestamp.toIso8601String());
    updateFunc(count);
    return count;
  }

  Future<void> storeLocally({required Surveillance remote, int? localId}) async {
    Future.wait([
      _storeSurv(remote, localId),
      _storeSurvGeneralInfo(remote),
      _storeSurvFoodDefense(remote),
      _storeSurvFoodSafety(remote),
      _storeSurvAdditionalInfo(remote),
      _storeSurvImportedProduct(remote),
      _storeSurvNonFoodSafety(remote),
      _storeSurvOrderVerification(remote),
    ]);
  }

  Future<LocalResponseData<SurvData?>> _storeSurv(Surveillance remote, int? localId) async {
    final repo = ref.read(survRepositoryLocalProvider.notifier);
    final local = remote.toSurv(localId: localId);
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<SurvAdditionalInfoData?>> _storeSurvAdditionalInfo(Surveillance remote) async {
    final repo = ref.read(survAdditionalInfoRepositoryLocalProvider.notifier);
    final local = remote.toSurvAdditionalInfo();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<SurvFoodDefenseData?>> _storeSurvFoodDefense(Surveillance remote) async {
    final repo = ref.read(survFoodDefenseRepositoryLocalProvider.notifier);
    final local = remote.toSurvFoodDefense();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<SurvFoodSafetyData?>> _storeSurvFoodSafety(Surveillance remote) async {
    final repo = ref.read(survFoodSafetyRepositoryLocalProvider.notifier);
    final local = remote.toSurvFoodSafety();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<SurvGeneralInfoData?>> _storeSurvGeneralInfo(Surveillance remote) async {
    final repo = ref.read(survGeneralInfoRepositoryLocalProvider.notifier);
    final local = remote.toSurvGeneralInfo();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<SurvImportedProductData?>> _storeSurvImportedProduct(
      Surveillance remote) async {
    final repo = ref.read(survImportedProductRepositoryLocalProvider.notifier);
    final local = remote.toSurvImportedProduct();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<SurvNonFoodSafetyData?>> _storeSurvNonFoodSafety(
      Surveillance remote) async {
    final repo = ref.read(survNonFoodSafetyRepositoryLocalProvider.notifier);
    final local = remote.toSurvNonFoodSafety();
    print("nonFoodSafety: $local");
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }

  Future<LocalResponseData<SurvOrderVerificationData?>> _storeSurvOrderVerification(
      Surveillance remote) async {
    final repo = ref.read(survOrderVerificationRepositoryLocalProvider.notifier);
    final local = remote.toSurvOrderVerification();
    return repo.createSingle(dataClass: local, updateStateFunc: _updateUsecaseState);
  }
}
