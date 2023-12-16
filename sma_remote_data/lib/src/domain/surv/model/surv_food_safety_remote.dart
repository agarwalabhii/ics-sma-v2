import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/src/anet_apis/anet_schema.swagger.dart';
import 'package:sma_remote_data/src/domain/choice_bool.dart';

extension SurvFoodSafetyRemote on Surveillance {
  SurvFoodSafetyData toSurvFoodSafety() {
    return SurvFoodSafetyData(
      id: surveillanceId!,
      recordType: RecordType.remote,
      productWholesome: ChoiceValue.fromRemoteModel(productsWholesome).value,
      sanitaryConditionsGood: ChoiceValue.fromRemoteModel(sanitaryConditionsGood).value,
      hazardControlsAdequate: ChoiceValue.fromRemoteModel(hazardousControlsAdequate).value,
      nonHumanFoodProperlyDenatured: ChoiceValue.fromRemoteModel(nonHumanFoodDenatured).value,
      recordsMaintained: ChoiceValue.fromRemoteModel(recordsMaintained).value,
      hasShellEggProducts: ChoiceValue.fromRemoteModel(eggCheck).value,
      hasMeatProducts: ChoiceValue.fromRemoteModel(meatCheck).value,
    );
  }

  Surveillance copyWithSurvFoodSafety(SurvFoodSafetyData dataClass) {
   return copyWith(
      productsWholesome:  ChoiceBool(dataClass.productWholesome).asYNNull,
      sanitaryConditionsGood: ChoiceBool(dataClass.sanitaryConditionsGood).asYNNull,
      hazardousControlsAdequate: ChoiceBool(dataClass.hazardControlsAdequate).asYNNull,
      nonHumanFoodDenatured: ChoiceBool(dataClass.nonHumanFoodProperlyDenatured).asYNNull,
      recordsMaintained: ChoiceBool(dataClass.recordsMaintained).asYNNull,
      eggCheck: ChoiceBool(dataClass.hasShellEggProducts).asYNNull,
      meatCheck: ChoiceBool(dataClass.hasMeatProducts).asYNNull,
    );
  }
}
