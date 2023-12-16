import 'package:domain_database/src/govform/model/govform_surv_record_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'govform_surv_record_v1_model.freezed.dart';

@freezed
abstract class GovformSurvRecordV1Model with _$GovformSurvRecordV1Model implements GovformSurvRecordModel {
  factory GovformSurvRecordV1Model({
    @Default(3) int? version,
    int? survId,
    int? firmId,
    String? firmName,
  }) = _GovformSurvRecordV1Model;
}
