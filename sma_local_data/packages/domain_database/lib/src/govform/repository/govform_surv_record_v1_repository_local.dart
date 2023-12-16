import 'package:domain_database/src/govform/model/govform_surv_record_v1_model.dart';
import 'package:local_common/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'govform_surv_record_v1_repository_local.g.dart';

@riverpod
class GovformSurvRecordV1RepositoryLocal
    extends _$GovformSurvRecordV1RepositoryLocal
    implements
        TransportStateAware {

  @override
  FutureOr<TransportState> build() async {
    return TransportState();
  }

  Future<LocalResponseData<GovformSurvRecordV1Model>> fetch(int survId) async {
    var govform = GovformSurvRecordV1Model();

    return LocalResponseData(body: govform);
  }
}
