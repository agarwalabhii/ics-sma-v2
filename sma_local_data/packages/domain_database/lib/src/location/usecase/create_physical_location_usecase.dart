
import 'package:domain_database/domain_database.dart';
import 'package:local_common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_physical_location_usecase.g.dart';

@riverpod
class CreatePhysicalLocationUsecase extends _$CreatePhysicalLocationUsecase {
  late final _fetchUsecase = ref.read(fetchPhysicalLocationUsecaseProvider.notifier);
  late final _database = ref.read(DomainDatabase.provider);

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  Future<PhysicalLocationData> createOrUpdate(PhysicalLocationData location, PhysicalLocationRefData locationRef) async {
    // save physical location
    final result = await _database.locationDao.byAddress(location);
    var locationId = result?.id;
    locationId ??= await _database.locationDao.createPhysicalLocation(location);

    // save location ref
    final fetchedRef = await _fetchUsecase.fetchRef(locationRef.refId, locationRef.refType);
    final previousLocationId = fetchedRef?.locationId ?? 0;
    if (previousLocationId != locationId) {
      final companion = _database.locationDao.createRefCompanion(locationId, locationRef.refId, locationRef.refType);
      if (previousLocationId == 0) {
        await _database.locationDao.createLocationRef(companion);
      } else {
        await _database.locationDao.updateLocationRef(companion);
      }
    }

    return location.copyWith(id: locationId);
  }
}
