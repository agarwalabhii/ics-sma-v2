import 'package:domain_database/src/domain_database.dart';
import 'package:domain_database/src/location/table/physical_location_ref_table.dart';
import 'package:domain_database/src/location/table/physical_location_table.dart';
import 'package:drift/drift.dart';
import 'package:local_common/common.dart';

part 'location_dao.g.dart';

@DriftAccessor(tables: [PhysicalLocation, PhysicalLocationRef])
class LocationDao extends DatabaseAccessor<DomainDatabase>
    with _$LocationDaoMixin {
  LocationDao(DomainDatabase db) : super(db);

  Future<int> createLocationRef(PhysicalLocationRefCompanion companion) {
    return into(physicalLocationRef).insert(companion);
  }

  Future<int> updateLocationRef(PhysicalLocationRefCompanion companion) {
    return (update(physicalLocationRef)
          ..where((t) =>
              t.refId.equals(companion.refId.value) &
              t.refType.equals(companion.refType.value.index)))
        .write(
      PhysicalLocationRefCompanion(
        locationId: Value(companion.locationId.value),
        createdDate: Value(companion.createdDate.value),
      ),
    );
  }

  Future<int> createPhysicalLocation(PhysicalLocationData location) {
    final companion = PhysicalLocationCompanion(
      address1: Value(location.address1),
      address2: Value(location.address2),
      city: Value(location.city),
      stateCode: Value(location.stateCode),
      zipCode: Value(location.zipCode),
      county: Value(location.county),
      latitude: Value(location.latitude),
      longitude: Value(location.longitude),
      soundness: Value(location.soundness),
      createdDate: Value(DateTime.now()),
    );
    return into(physicalLocation).insert(companion);
  }

  Future<PhysicalLocationData?> locationById(int id) {
    return (select(physicalLocation)
          ..where((t) => t.id.equals(id))
          ..limit(1))
        .getSingleOrNull();
  }

  Future<PhysicalLocationRefData?> refsBy(int refId, LocationRefType refType) {
    return (select(physicalLocationRef)
          ..where((t) =>
              t.refId.equals(refId) &
              t.refType.equals(refType
                  .index)) // TODO: determine if zero or one based index for enum
          ..limit(1))
        .getSingleOrNull();
  }

  Future<PhysicalLocationData?> byAddress(PhysicalLocationData model) {
    return (select(db.physicalLocation)
          ..where((t) =>
              ((model.address1 == null)
                  ? t.address1.isNull()
                  : t.address1.equals(model.address1!)) &
              ((model.address2 == null)
                  ? t.address2.isNull()
                  : t.address2.equals(model.address2!)) &
              ((model.city == null)
                  ? t.city.isNull()
                  : t.city.equals(model.city!)) &
              ((model.stateCode == null)
                  ? t.stateCode.isNull()
                  : t.stateCode.equals(model.stateCode!)) &
              ((model.county == null)
                  ? t.county.isNull()
                  : t.county.equals(model.county!)))
          ..limit(1))
        .getSingleOrNull();
  }

  PhysicalLocationRefCompanion createRefCompanion(
      int locationId, int refId, LocationRefType refType) {
    return PhysicalLocationRefCompanion(
      locationId: Value(locationId),
      refId: Value(refId),
      refType: Value(refType),
      createdDate: Value(DateTime.now()),
    );
  }
}
