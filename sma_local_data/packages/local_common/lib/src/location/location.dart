typedef LocationLabelsMap = Map<LocationLabels, String>;

enum LocationLabels {
  address1,
  address2,
  city,
  state,
  zipCode,
  county;
}

enum LocationRefType {
  unknown,
  firmMain,
  firmMailing,
  firmOrganizationStruct,
  survGeneralInfo,
  pestControl;
}

enum LocationSoundness {
  raw,
  formtted;
}
