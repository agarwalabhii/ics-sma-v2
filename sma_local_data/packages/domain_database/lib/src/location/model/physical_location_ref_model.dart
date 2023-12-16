// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_common/common.dart';

part 'physical_location_ref_model.freezed.dart';

@freezed
abstract class PhysicalLocationRefModel with _$PhysicalLocationRefModel {
  factory PhysicalLocationRefModel({
    @Default(null) int? locationId,
    @Default(null) int? refId,
    @Default(null) LocationRefType? refType,
  }) = _PhysicalLocationRefModel;
}
