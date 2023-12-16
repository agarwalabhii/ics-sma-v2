import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/sma_remote_data.dart';
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

part 'create_remote_surv_usecase.g.dart';

@riverpod
class CreateRemoteSurvUsecase extends _$CreateRemoteSurvUsecase {
  late final _survSetRepository = ref.read(survSetRepositoryRemoteProvider.notifier);
  late final _storeRemoteSurvUsecase = ref.read(storeRemoteSurvUsecaseProvider.notifier);
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
    final response = await _survSetRepository.create(remote);
    print("response: $response");
    
    final newRemote = response.body;
    if (newRemote != null) {
      _storeRemoteSurvUsecase.storeLocally(remote: newRemote, localId: localId);
    }

    state = state.end();
    return (response.error == null);
  }

  Future<Surveillance> _assembleRemote(int id) async {
    var remote = Surveillance();

    remote = await _fetchAndCopySurv(remote, id);
    remote = await _fetchAndCopySurvAdditionalInfo(remote, id);
    remote = await _fetchAndCopySurvFoodDefense(remote, id);
    remote = await _fetchAndCopySurvFoodSafety(remote, id);
    remote = await _fetchAndCopySurvGeneralInfo(remote, id);
    remote = await _fetchAndCopySurvImportedProduct(remote, id);
    remote = await _fetchAndCopySurvNonFoodSafety(remote, id);
    remote = await _fetchAndCopySurvOrderVerification(remote, id);

    return remote;
  }

  Future<Surveillance> _fetchAndCopySurv(Surveillance remote, int survId) async {
    final repo = ref.read(survRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return remote.copyWithSurv(localResponse.body!);
  }

  Future<Surveillance> _fetchAndCopySurvAdditionalInfo(Surveillance remote, int survId) async {
    final repo = ref.read(survAdditionalInfoRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithSurvAdditionalInfo(localResponse.body!);
  }

  Future<Surveillance> _fetchAndCopySurvFoodDefense(Surveillance remote, int survId) async {
    final repo = ref.read(survFoodDefenseRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithSurvFoodDefense(localResponse.body!);
  }

  Future<Surveillance> _fetchAndCopySurvFoodSafety(Surveillance remote, int survId) async {
    final repo = ref.read(survFoodSafetyRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithSurvFoodSafety(localResponse.body!);
  }

  Future<Surveillance> _fetchAndCopySurvGeneralInfo(Surveillance remote, int survId) async {
    final repo = ref.read(survGeneralInfoRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithSurvGeneralInfo(localResponse.body!);
  }

  Future<Surveillance> _fetchAndCopySurvImportedProduct(Surveillance remote, int survId) async {
    final repo = ref.read(survImportedProductRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithSurvImportedProduct(localResponse.body!);
  }

  Future<Surveillance> _fetchAndCopySurvNonFoodSafety(Surveillance remote, int survId) async {
    final repo = ref.read(survNonFoodSafetyRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithSurvNonFoodSafety(localResponse.body!);
  }

  Future<Surveillance> _fetchAndCopySurvOrderVerification(Surveillance remote, int survId) async {
    final repo = ref.read(survOrderVerificationRepositoryLocalProvider.notifier);
    final localResponse = await repo.fetchById(id: survId, updateStateFunc: _updateUsecaseState);
    return localResponse.body == null ? remote : remote.copyWithSurvOrderVerification(localResponse.body!);
  }}
