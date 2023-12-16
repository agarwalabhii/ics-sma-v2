import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_local_data/sma_local_data.dart';

part 'physical_location_viewmodel.g.dart';

typedef PhysicalLocationFormData = Map<String, dynamic>;

@riverpod
class PhysicalLocationViewModel extends _$PhysicalLocationViewModel {
  PhysicalLocationFormData _formData = {};
  bool _edited = false;
  bool get isEdited => _edited;
  late final _createUsecase = ref.read(createPhysicalLocationUsecaseProvider.notifier);
  late final _fetchUsecase = ref.read(fetchPhysicalLocationUsecaseProvider.notifier);
  late final _appUser = ref.watch(appUserProvider);

  @override
  FutureOr<PhysicalLocationFormData> build(int refId, LocationRefType refType) async {
    final location = await _fetchUsecase.fetch(refId, refType);
    if (location != null) {
      print("location: $location");
      return _formData = {
        'id': location.id,
        'address1': location.address1,
        'address2': location.address2,
        'city': location.city,
        'stateCode': location.stateCode,
        'zipCode': location.zipCode,
        'county': location.county,
        'latitude': location.latitude,
        'longitude': location.longitude,
        'refId': refId,
        'refType': refType.index,
        'locationId': location.id,
        'recordType': location.recordType?.index ?? RecordType.local.index,
        'creatorId': _appUser.employeeData?.id,
        'createdDate': location.createdDate,
        'soundness': LocationSoundness.raw.index,
      };
    }
    return _formData = {
        'id': 0,
        'refId': refId,
        'refType': refType.index,
        'locationId': 0,
        'recordType': RecordType.local.index,
        'creatorId': _appUser.employeeData?.id,
        'createdDate': DateTime.now(),
        'soundness': LocationSoundness.raw.index,
      };
  }

  Future<void> createOrUpdate() async {
    print("_formData: $_formData");
    
    final location = PhysicalLocationData.fromJson(_formData);
    final locationRef = PhysicalLocationRefData.fromJson(_formData);
    final createdLocation = await _createUsecase.createOrUpdate(location, locationRef);
    _formData['id'] = createdLocation.id;
    _formData['locationId'] = createdLocation.id;
    _edited = false;
    state = AsyncData(_formData);
  }

  void setAddress1(String value) {
    _formData['address1'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }

  void setAddress2(String value) {
    _formData['address2'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }

  void setCity(String value) {
    _formData['city'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }

  void setStateCode(String value) {
    _formData['stateCode'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }

  void setZipCode(String value) {
    _formData['zipCode'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }

  void setCounty(String value) {
    _formData['county'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }

  void setLatitude(String value) {
    _formData['latitude'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }

  void setLongitude(String value) {
    _formData['longitude'] = value;
    _edited = true;
    state = AsyncData(_formData);
  }
}

extension FormDataUtils on PhysicalLocationFormData {
  int? get id => this['id'];
  String? get address1 => this['address1'];
  String? get address2 => this['address2'];
  String? get city => this['city'];
  String? get stateCode => this['stateCode'];
  String? get zipCode => this['zipCode'];
  String? get county => this['county'];
  String? get latitude => this['latitude'];
  String? get longitude => this['longitude'];
}
