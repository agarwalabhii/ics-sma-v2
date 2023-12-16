import 'package:domain_database/src/govform/model/govform_model.dart';
import 'package:domain_database/src/govform/repository/govform_5420_v3_repository_local.dart';
import 'package:domain_database/src/govform/repository/govform_8160_v1_repository_local.dart';
import 'package:domain_database/src/govform/repository/govform_firm_record_v1_repository_local.dart';
import 'package:domain_database/src/govform/repository/govform_surv_record_v1_repository_local.dart';
import 'package:local_common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_govform_usecase.g.dart';

@riverpod
class FetchGovformUsecase extends _$FetchGovformUsecase {
  late final _govform5420V3Repository = ref.read(govform5420V3RepositoryLocalProvider.notifier);
  late final _govform8160V1Repository = ref.read(govform8160V1RepositoryLocalProvider.notifier);
  late final _govformFirmRecordRepository = ref.read(govformFirmRecordV1RepositoryLocalProvider.notifier);
  late final _govformSurvRecordRepository = ref.read(govformSurvRecordV1RepositoryLocalProvider.notifier);

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  FutureOr<GovformResponse> fetch(GovformRequest request) async {
    switch (request.type) {
      case GovformType.form5420V3:
        final response = await _govform5420V3Repository.fetch(request.survId!);
        return GovformResponse(body: response.body);
      case GovformType.form8160V1:
        final response = await _govform8160V1Repository.fetch(request.survId!);
        return GovformResponse(body: response.body);
      case GovformType.formFirmRecordV1:
        final response = await _govformFirmRecordRepository.fetch(request.firmId!);
        return GovformResponse(body: response.body);
      case GovformType.formSurvRecordV1:
        final response = await _govformSurvRecordRepository.fetch(request.survId!);
        return GovformResponse(body: response.body);
    }
  }
}
