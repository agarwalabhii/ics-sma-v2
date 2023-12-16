import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/choice_bool.dart';

extension SurvNonFoodSafetyRemote on Surveillance {
  SurvNonFoodSafetyData toSurvNonFoodSafety() {
    return SurvNonFoodSafetyData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      labelingVerified: ChoiceValue.fromRemoteModel(nutritionalLabelingVerify).value,
      productsNotMisbranded: ChoiceValue.fromRemoteModel(productsNotMisbranded).value,
      properlyIdentifyActs: ChoiceValue.fromRemoteModel(productRecordsAccordingToFoodSafetyActs).value,
    );
  }

  Surveillance copyWithSurvNonFoodSafety(SurvNonFoodSafetyData dataClass) {
   return copyWith(
      nutritionalLabelingVerify: ChoiceBool(dataClass.labelingVerified).asYNNull,
      productsNotMisbranded: ChoiceBool(dataClass.productsNotMisbranded).asYNNull,
      hazardousControlsAdequate: ChoiceBool(dataClass.properlyIdentifyActs).asYNNull,
      productRecordsAccordingToFoodSafetyActs: ChoiceBool(dataClass.properlyIdentifyActs).asYNNull,
    );
  }
}
