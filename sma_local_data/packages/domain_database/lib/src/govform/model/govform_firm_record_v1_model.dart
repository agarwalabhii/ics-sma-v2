import 'package:domain_database/src/govform/model/govform_firm_record_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'govform_firm_record_v1_model.freezed.dart';

@freezed
abstract class GovformFirmRecordV1Model with _$GovformFirmRecordV1Model implements GovformFirmRecordModel {
  factory GovformFirmRecordV1Model({
    @Default(3) int? version,
    int? survId,
    int? firmId,
    String? firmName,
  }) = _GovformFirmRecordV1Model;
}
