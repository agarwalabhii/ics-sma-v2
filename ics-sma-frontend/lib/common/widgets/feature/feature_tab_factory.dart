import 'package:anet/features/firm/state/firm_additional_info_state.dart';
import 'package:anet/features/firm/state/firm_general_info_state.dart';
import 'package:anet/features/firm/state/firm_managing_officials_state.dart';
import 'package:anet/features/firm/state/firm_organization_struct_state.dart';
import 'package:anet/features/firm/state/firm_product_info_state.dart';
import 'package:anet/features/firm/tabs/firm_additional_info_tab.dart';
import 'package:anet/features/firm/tabs/firm_general_info_tab.dart';
import 'package:anet/features/firm/tabs/firm_managing_officials_info_tab.dart';
import 'package:anet/features/firm/tabs/firm_organization_struct_tab.dart';
import 'package:anet/features/firm/tabs/firm_product_info_tab.dart';
import 'package:anet/features/surv/state/surv_additional_info_state.dart';
import 'package:anet/features/surv/state/surv_custom_exempt_review_state.dart';
import 'package:anet/features/surv/state/surv_food_defense_state.dart';
import 'package:anet/features/surv/state/surv_food_safety_state.dart';
import 'package:anet/features/surv/state/surv_general_info_state.dart';
import 'package:anet/features/surv/state/surv_imported_product_state.dart';
import 'package:anet/features/surv/state/surv_non_food_safety_state.dart';
import 'package:anet/features/surv/state/surv_order_verification_state.dart';
import 'package:anet/features/surv/state/surv_sampling_info_state.dart';
import 'package:anet/features/surv/state/surv_shell_eggs_state.dart';
import 'package:anet/features/surv/tabs/surv_additional_info_tab.dart';
import 'package:anet/features/surv/tabs/surv_food_defense_tab.dart';
import 'package:anet/features/surv/tabs/surv_food_safety_tab.dart';
import 'package:anet/features/surv/tabs/surv_general_info_tab.dart';
import 'package:anet/features/surv/tabs/surv_imported_product_tab.dart';
import 'package:anet/features/surv/tabs/surv_non_food_safety_tab.dart';
import 'package:anet/features/surv/tabs/surv_order_verification.dart';
import 'package:anet/features/surv/tabs/surv_sampling_info_tab.dart';
import 'package:anet/features/surv/tabs/surv_custom_exempt_review_tab.dart';
import 'package:anet/features/surv/tabs/surv_shell_eggs_tab.dart';
import 'package:anet/presentation/firm/view/firm_owner_info_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';

final featureFactoryTabProvider = FutureProvider.autoDispose
    .family<Widget, ModelContext>((ref, context) async {
  late final fetchFirmLocalUsecase =
      ref.read(fetchLocalFirmUsecaseProvider.notifier);
  switch (context.feature) {
    case Feature.firmAdditionalInfo:
      final state = ref.watch(firmAdditionalInfoStateProvider(context));
      state.loadIf(ref);
      return FirmAdditionalInfoTab(state: state);
    case Feature.firmGeneralInfo:
      final state = ref.watch(firmGeneralInfoStateProvider(context));
      state.loadIf(ref);
      return FirmGeneralInfoTab(state: state);
    case Feature.firmOwnerInfo:
      final dataClass = await fetchFirmLocalUsecase.firmOwnerInfo
          .fetchById(id: context.id, updateStateFunc: (_) {});
      return FirmOwnerInfoTab(
        dataClass: dataClass.body ??
            FirmOwnerInfoData(id: context.id, recordType: RecordType.local),
        featureMode: context.featureMode,
      );
    case Feature.firmManagingOfficalsInfo:
      final state = ref.watch(firmManagingOfficialsStateProvider(context));
      state.loadIf(ref);
      return FirmManagingOfficalsInfoTab(state: state);
    case Feature.firmOrganizingStruct:
      final state = ref.watch(firmOrganizingStructStateProvider(context));
      state.loadIf(ref);
      return FirmOrganizationStructTab(state: state);
    case Feature.firmProductInfo:
      final state = ref.watch(firmProductInfoStateProvider(context));
      state.loadIf(ref);
      return FirmProductInfoTab(state: state);
    case Feature.survGeneralInfo:
      final state = ref.watch(survGeneralInfoStateProvider(context));
      state.loadIf(ref);
      return SurvGeneralInfoTab(state: state);
    case Feature.survFoodDefense:
      final state = ref.watch(survFoodDefenseStateProvider(context));
      state.loadIf(ref);
      return SurvFoodDefenseTab(state: state);
    case Feature.survFoodSafety:
      final state = ref.watch(survFoodSafetyStateProvider(context));
      state.loadIf(ref);
      return SurvFoodSafetyTab(state: state);
    case Feature.survOrderVerification:
      final state = ref.watch(survOrderVerificationStateProvider(context));
      state.loadIf(ref);
      return SurvOrderVerificationTab(state: state);
    case Feature.survAdditionalInfo:
      final state = ref.watch(survAdditionalInfoStateProvider(context));
      state.loadIf(ref);
      return SurvAdditionalInfoTab(state: state);
    case Feature.survImportedProduct:
      final state = ref.watch(survImportedProductStateProvider(context));
      state.loadIf(ref);
      return SurvImportedProductTab(state: state);
    case Feature.survSamplingInfo:
      final state = ref.watch(survSamplingInfoStateProvider(context));
      state.loadIf(ref);
      return SurvSamplingInfoTab(state: state);
    case Feature.survCustomExemptReview:
      final state = ref.watch(survCustomExemptReviewStateProvider(context));
      state.loadIf(ref);
      return SurvCustomExemptReviewTab(state: state);
    case Feature.survNonFoodSafety:
      final state = ref.watch(survNonFoodSafetyStateProvider(context));
      state.loadIf(ref);
      return SurvNonFoodSafetyTab(state: state);
    case Feature.survShellEggs:
      final state = ref.watch(survShellEggStateProvider(context));
      state.loadIf(ref);
      return SurvShellEggsTab(state: state);
    default:
      throw UnimplementedError();
  }
});
