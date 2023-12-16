// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_common/common.dart';

part 'physical_location_model.freezed.dart';

@freezed
abstract class PhysicalLocationModel with _$PhysicalLocationModel {
  factory PhysicalLocationModel({
    @Default(false) bool initialized,
    @Default(null) String? address1,
    @Default(null) String? address2,
    @Default(null) String? city,
    @Default(null) String? state,
    @Default(null) String? zipCode,
    @Default(null) String? county,
    @Default(null) String? latitude,
    @Default(null) String? longitude,
    @Default(LocationSoundness.raw) LocationSoundness soundness,
  }) = _PhysicalLocationModel;
}
