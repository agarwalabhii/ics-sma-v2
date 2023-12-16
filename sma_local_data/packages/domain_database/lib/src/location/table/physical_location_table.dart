import 'package:drift/drift.dart';
import 'package:local_common/common.dart';
import 'package:local_common/database.dart';

typedef _Constraints = PhysicalLocationConstraints;

@DataClassName('PhysicalLocationData', extending: DataClassBehavioral)
@TableIndex(name: 'physical_location_address', columns: {#address1, #city, #stateCode, #zipCode}, unique: true)
class PhysicalLocation extends Table with RecordColumnMixin, CreationColumnMixin implements IdentifiableEntity {
  @override
  String get tableName => 'physical_location';

  @override
  IntColumn get id => integer().autoIncrement()();

  TextColumn get address1 => text()
      .withLength(
          min: _Constraints.address1.minLength,
          max: _Constraints.address1.maxLength)
      .nullable()();
  TextColumn get address2 => text()
      .withLength(
          min: _Constraints.address2.minLength,
          max: _Constraints.address2.maxLength)
      .nullable()();
  TextColumn get city => text()
      .withLength(
          min: _Constraints.city.minLength, max: _Constraints.city.maxLength)
      .nullable()();
  TextColumn get stateCode => text()
      .withLength(
          min: _Constraints.stateCode.minLength, max: _Constraints.stateCode.maxLength)
      .nullable()();
  TextColumn get zipCode => text()
      .withLength(
          min: _Constraints.zipCode.minLength,
          max: _Constraints.zipCode.maxLength)
      .nullable()();
  TextColumn get county => text()
      .withLength(
          min: _Constraints.county.minLength,
          max: _Constraints.county.maxLength)
      .nullable()();
  TextColumn get latitude => text()
      .withLength(
          min: _Constraints.latitude.minLength,
          max: _Constraints.latitude.maxLength)
      .nullable()();
  TextColumn get longitude => text()
      .withLength(
          min: _Constraints.longitude.minLength,
          max: _Constraints.longitude.maxLength)
      .nullable()();
  IntColumn get soundness =>
      intEnum<LocationSoundness>().withDefault(const Constant(0))();
}
