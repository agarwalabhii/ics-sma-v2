import 'package:domain_database/domain_database.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'govform_5420_v3_repository_local.g.dart';

@riverpod
class Govform5420V3RepositoryLocal
    extends _$Govform5420V3RepositoryLocal
    implements
        TransportStateAware {

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<LocalResponseData<Govform5420V3Model>> fetch(int survId) async {
    var govform = Govform5420V3Model(survId: survId);
    govform = await _addSurvData(govform);
    govform = await _addFirmData(govform);
    govform = await _addSurvFoodSafetyData(govform);

    return LocalResponseData(body: govform);
  }

  Future<Govform5420V3Model> _addSurvData(Govform5420V3Model govform) async {
    final repo = ref.read(survRepositoryLocalProvider.notifier);
    assert(govform.survId != null);
    final response = await repo.fetchById(id: govform.survId!, updateStateFunc: (_) {});
    final body = response.body;
    if (body == null) {
      return govform;
    }
    return govform.copyWith(survId: body.id, firmId: body.firmId, datePerformed: body.datePerformed);
  }

  Future<Govform5420V3Model> _addFirmData(Govform5420V3Model govform) async {
    if (govform.firmId != null) {
      final repo = ref.read(firmRepositoryLocalProvider.notifier);
      final response = await repo.fetchById(id: govform.firmId!, updateStateFunc: (_) {});
      final body = response.body;
      if (body == null) {
        return govform;
      }
      return govform.copyWith(firmName: body?.name);
    }
    return govform;
  }

  Future<Govform5420V3Model> _addSurvFoodSafetyData(Govform5420V3Model govform) async {
    final repo = ref.read(survFoodSafetyRepositoryLocalProvider.notifier);
    assert(govform.survId != null);
    final response = await repo.fetchById(id: govform.survId!, updateStateFunc: (_) {});
    final body = response.body;
    if (body == null) {
      return govform;
    }
    return govform.copyWith(freeFromTampering: body.freeFromTampering);
  }
}
