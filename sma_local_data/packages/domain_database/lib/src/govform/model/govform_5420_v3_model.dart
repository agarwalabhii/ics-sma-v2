import 'package:domain_database/src/govform/model/govform_5420_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'govform_5420_v3_model.freezed.dart';

@freezed
abstract class Govform5420V3Model with _$Govform5420V3Model implements Govform5420Model {
  factory Govform5420V3Model({
    @Default(3) int? version,
    int? survId,
    int? firmId,
    String? location,
    String? firmName,
    DateTime? datePerformed,
    String? mailingAddress,
    bool? meatProducts,
    bool? poultryProducts,
    bool? eggProducts,
    bool? isDistributor,
    bool? isBroker,
    bool? isRestaurant,
    bool? isRetailer,
    bool? isPointOfEntry,
    bool? isTransporter,
    bool? isAnimalFood,
    bool? isCustom,
    bool? isWarehouse,
    bool? isAbattoir,
    String? foodDefenseExitNotes,
    bool? freeFromTampering,
    bool? detenionOccur,
    bool? securityVulnerabilitiesDiscussedYes,
    bool? securityVulnerabilitiesDiscussedNo,
    bool? siluriformesFishproducts,
    bool? shellEggs,
    bool? isExemptPoultry,
    bool? isFoodBank,
    bool? is3D4D,
    bool? isSalvage,
    bool? isBondedArea,
    bool? isRenderer,
  }) = _Govform5420V3Model;
}
