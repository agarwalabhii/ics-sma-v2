// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_county_model.freezed.dart';

@freezed
abstract class StateCountyModel with _$StateCountyModel {
  factory StateCountyModel({
    @Default(0) int id,
    @Default(null) String? stateCode,
    @Default(null) String? countyName,
    @Default(null) String? countyCode,
  }) = _StateCountyModel;
}
