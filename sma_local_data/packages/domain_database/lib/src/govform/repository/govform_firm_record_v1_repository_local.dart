import 'package:domain_database/domain_database.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'govform_firm_record_v1_repository_local.g.dart';

@riverpod
class GovformFirmRecordV1RepositoryLocal
    extends _$GovformFirmRecordV1RepositoryLocal
    implements
        TransportStateAware {

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<LocalResponseData<GovformFirmRecordV1Model>> fetch(int survId) async {
    var govform = GovformFirmRecordV1Model();
    govform = await _addSurvData(govform, survId);
    govform = await _addFirmData(govform);
    govform = await _addFirmGeneralInfo(govform);

    return LocalResponseData(body: govform);
  }

  Future<GovformFirmRecordV1Model> _addSurvData(GovformFirmRecordV1Model govform, int survId) async {
    final repo = ref.read(survRepositoryLocalProvider.notifier);
    final response = await repo.fetchById(id: survId, updateStateFunc: (_) {});
    final body = response.body;
    if (body == null) {
      return govform;
    }
    return govform.copyWith(survId: body.id, firmId: body.firmId);
  }

  Future<GovformFirmRecordV1Model> _addFirmData(GovformFirmRecordV1Model govform) async {
    final repo = ref.read(firmRepositoryLocalProvider.notifier);
    assert(govform.firmId != null);
    final response = await repo.fetchById(id: govform.firmId!, updateStateFunc: (_) {});
    final body = response.body;
    if (body == null) {
      return govform;
    }
    final firmName = "${body.firstName} ${body.lastName}";
    return govform.copyWith(firmName: firmName);
  }

  Future<GovformFirmRecordV1Model> _addFirmGeneralInfo(GovformFirmRecordV1Model govform) async {
    final repo = ref.read(firmGeneralInfoRepositoryLocalProvider.notifier);
    assert(govform.survId != null);
    final response = await repo.fetchById(id: govform.survId!, updateStateFunc: (_) {});
    final body = response.body;
    if (body == null) {
      return govform;
    }
    return govform.copyWith();
  }
}
