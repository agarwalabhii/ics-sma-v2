enum Feature {
  none,
  dashboard,
  diagnostic,
  firm,
  firmAdditionalInfo,
  firmGeneralInfo,
  firmManagingOfficalsInfo,
  firmOrganizingStruct,
  firmOwnerInfo,
  firmProductInfo,
  person,
  search,
  surv,
  survAdditionalInfo,
  survGeneralInfo,
  survFoodDefense,
  survFoodSafety,
  survImportedProduct,
  survSamplingInfo,
  survCustomExemptReview,
  survNonFoodSafety,
  survShellEggs,
  survOrderVerification,
  ;

  String name() {
    switch (this) {
      case firm:
        return "Firm";
      case surv:
        return "Surveillance";
      default:
        return "";
    }
  }
}

enum FeatureMode {
  create,
  edit,
  view;

  bool get createMode => this == FeatureMode.create;

  bool get editMode => this == FeatureMode.edit;

  bool get viewMode => this == FeatureMode.view;
}
