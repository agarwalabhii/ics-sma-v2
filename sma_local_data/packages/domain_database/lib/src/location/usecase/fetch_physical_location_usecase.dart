
import 'package:domain_database/domain_database.dart';
import 'package:domain_database/src/location/repository/physical_location_ref_repository_local.dart';
import 'package:domain_database/src/location/repository/physical_location_repository_local.dart';
import 'package:local_common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_physical_location_usecase.g.dart';

@riverpod
class FetchPhysicalLocationUsecase extends _$FetchPhysicalLocationUsecase {
  late final _locationRepository = ref.read(physicalLocationRepositoryLocalProvider.notifier);
  late final _locationRefRepository = ref.read(physicalLocationRefRepositoryLocalProvider.notifier);

  @override
  UsecaseState build() {
    return UsecaseState();
  }

  FutureOr<PhysicalLocationData?> fetch(int refId, LocationRefType refType) async {
    final locationRef = await fetchRef(refId, refType);
    if (locationRef != null) {
      final response = await _locationRepository.fetchById(id: locationRef.locationId, updateStateFunc: (_) {});
      return response.body;
    }
    return null;
  }

  FutureOr<PhysicalLocationRefData?> fetchRef(int refId, LocationRefType refType) async {
    final response = await _locationRefRepository.fetchRef(refId, refType);
    return response.body;
  }
}
