import 'package:domain_database/src/govform/model/govform_8160_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'govform_8160_v1_model.freezed.dart';

@freezed
abstract class Govform8160V1Model with _$Govform8160V1Model implements Govform8160Model {
  factory Govform8160V1Model({
    @Default(1) int? version,
    int? survId,
    int? firmId,
  }) = _Govform8160V1Model;
}
