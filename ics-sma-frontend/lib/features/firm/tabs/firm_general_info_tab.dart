import 'package:anet/features/firm/state/firm_general_info_state.dart';
import 'package:anet/features/firm/tabs/providers/firm_general_info_tab_provider.dart';
import 'package:anet/features/firm/tabs/providers/firm_name_provider.dart';
import 'package:anet/features/firm/widgets/firm_gen_info_misc_widget.dart';
import 'package:anet/features/firm/widgets/hours_of_operation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

typedef _Constraints = FirmGeneralInfoConstraints;

class FirmGeneralInfoTab extends ConsumerWidget {
  final FirmGeneralInfoState state;

  FirmGeneralInfoTab({required this.state, super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);
    final tabState = ref.watch(firmGeneralInfoNotifierProvider);
    final tabStateNotifier =
        ref.read(firmGeneralInfoNotifierProvider.notifier);
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    final nameProvider = ref.watch(firmNameProvider.notifier);
    return Form(
      key: _formKey,
      child: FocusTraversalGroup(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomCheckboxListTile(
                title: AppLocalizations.of(context)!
                    .firm_general_delete_firm_record_label,
                initialValue: tabState.deleteFirmRecord,
                readOnly: !state.featureMode.editMode,
                setValue: (newValue) =>
                    tabStateNotifier.setDeleteFirmRecord(newValue),
              ),
              CustomCheckboxListTile(
                  title: AppLocalizations.of(context)!
                      .firm_general_contact_ro_label,
                  initialValue: (state.contactRegionalOffice ?? false) ||
                      (tabState.contactRegionalOffice ?? false),
                  readOnly: state.featureMode.viewMode,
                  setValue: (newValue) {
                    state.setContactRegionalOffice(ref, newValue);
                    tabStateNotifier.setContactRegionalOffice(newValue);
                    if (!newValue!) {
                      state.setComments(ref, null);
                    }
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textFieldBuilder.build(
                    isVisible: (state.contactRegionalOffice ?? false) ||
                        (tabState.contactRegionalOffice ?? false),
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!
                        .firm_general_comments_label,
                    initialValue: state.comments,
                    maxLength: 256,
                    onChanged: (value) => state.setComments(ref, value)),
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                      label:
                          "Firm ${AppLocalizations.of(context)!.firm_name_label} *",
                      maxLength: _Constraints.name.maxLength,
                      readOnlyOverride: state.featureMode.viewMode,
                      initialValue: state.name,
                    onChanged: (value) {
                      state.setName(ref, value);
                      nameProvider.state = value;
                    },
                  ),
                  textFieldBuilder.build(
                      label: AppLocalizations.of(context)!
                          .firm_general_doing_business_as_label,
                      maxLength: _Constraints.name.maxLength,
                      initialValue: state.doingBusinessAs,
                      onChanged: (value) =>
                          state.setDoingBusinessAs(ref, value)),
                ],
              ),
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                      label: AppLocalizations.of(context)!
                          .firm_general_also_known_as_label,
                      maxLength: _Constraints.name.maxLength,
                      initialValue: state.alsoKnownAs,
                      onChanged: (value) => state.setAlsoKnownAs(ref, value)),
                  textFieldBuilder.build(
                      label: AppLocalizations.of(context)!
                          .firm_general_previous_firm_name_label,
                      maxLength: _Constraints.name.maxLength,
                      initialValue: state.previousName,
                      onChanged: (value) => state.setPreviousName(ref, value)),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  AppLocalizations.of(context)!.firm_general_name_address_label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),

              PhysicalLocationWidget(
                refId: state.id,
                includeGeoCoordinates: true,
                refType: LocationRefType.firmMain,
                readOnly: state.featureMode.viewMode,
                labels: const {
                  LocationLabels.address1: "Address 1 *",
                  LocationLabels.address2: "Address 2",
                  LocationLabels.city: "City *",
                  LocationLabels.state: "State *",
                  LocationLabels.zipCode: "Zip Code *",
                  LocationLabels.county: "County *",
                },
              ),

              ExpandedRow(
                padding: const EdgeInsets.all(4.0),
                children: [
                  textFieldBuilder.build(
                    label:
                        AppLocalizations.of(context)!.firm_general_region_label,
                    maxLength: _Constraints.regionCode.maxLength,
                    initialValue: state.regionCode,
                    onChanged: (value) => state.setRegionCode(ref, value),
                    readOnlyOverride: true,
                    mandate: true,
                  ),
                  textFieldBuilder.build(
                    label: AppLocalizations.of(context)!
                        .firm_general_sub_region_label,
                    maxLength: _Constraints.subRegionCode.maxLength,
                    initialValue: state.subRegionCode,
                    readOnlyOverride: true,
                    onChanged: (value) => state.setSubRegionCode(ref, value),
                  ),
                  textFieldBuilder.build(
                    label: AppLocalizations.of(context)!
                        .firm_general_assignment_label,
                    initialValue: state.assignCode,
                    maxLength: _Constraints.assignCode.maxLength,
                    readOnlyOverride: true,
                    onChanged: (value) => state.setAssignCode(ref, value),
                  ),
                ],
              ),

              CustomCheckboxListTile(
                title: AppLocalizations.of(context)!
                    .firm_general_same_as_firm_address_label,
                initialValue: state.mailingAddressSameAsFirmAddress ??
                    tabState.sameAsMailingAddress,
                readOnly: state.featureMode.viewMode,
                setValue: (newValue) {
                  state.setMailingAddressSameAsFirmAddress(ref, newValue);
                  tabStateNotifier.setSameAsMailingAddress(newValue);
                  ref.watch(formActionProvider.notifier).state =
                      SaveFormAction.saveExisting();
                },
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        AppLocalizations.of(context)!
                            .firm_general_mailing_address_label,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  PhysicalLocationWidget(
                    key: UniqueKey(),
                    refId: state.id,
                    refType: (state.mailingAddressSameAsFirmAddress ??
                            tabState.sameAsMailingAddress ??
                            false)
                        ? LocationRefType.firmMain
                        : LocationRefType.firmMailing,
                    labels: {
                      LocationLabels.address1:
                          "${AppLocalizations.of(context)!.firm_general_mailing_address_label} 1",
                      LocationLabels.address2:
                          "${AppLocalizations.of(context)!.firm_general_mailing_address_label} 2",
                      LocationLabels.city: AppLocalizations.of(context)!
                          .firm_general_mailing_city_label,
                      LocationLabels.state: AppLocalizations.of(context)!
                          .firm_general_mailing_state_label,
                      LocationLabels.zipCode: AppLocalizations.of(context)!
                          .firm_general_mailing_zip_code_label,
                    },
                    readOnly: state.featureMode.viewMode ||
                        (state.mailingAddressSameAsFirmAddress ?? false),
                    includeCounty: false,
                  ),
                ],
              ),

              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),

              //Business info Section ************
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                    AppLocalizations.of(context)!
                        .firm_general_business_info_label,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              ExpandedRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FormElementMultiSelectWidget(
                        moduleFirmInfoBusinessTypes,
                        readOnly: state.featureMode.viewMode,
                        initialValue: MultiString.fromString(
                            state.primaryBusinessType ??
                                tabState.primaryBusinessType),
                        title:
                            "${AppLocalizations.of(context)!.surv_gen_info_pri_busi_type_label} *",
                        setValue: (value) {
                      state.setPrimaryBusinessType(ref, value.oneString);
                      tabStateNotifier.setPrimaryBusinessType(value.oneString);
                    }),
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FormElementMultiSelectWidget(
                      moduleFirmInfoBusinessTypes,
                        readOnly: state.featureMode.viewMode,
                      initialValue: MultiString.fromString(
                          state.secondaryBusinessType ??
                              tabState.secondaryBusinessType),
                      title: AppLocalizations.of(context)!
                            .surv_gen_info_sec_busi_type_label,
                        setValue: (value) =>
                          state.setSecondaryBusinessType(ref, value.oneString),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FormElementMultiSelectWidget(
                        moduleFirmInfoBusinessTypes,
                        readOnly: state.featureMode.viewMode,
                        initialValue: MultiString.fromString(
                          state.tertiaryBusinessType ??
                              tabState.tertiaryBusinessType),
                        title: AppLocalizations.of(context)!
                            .surv_gen_info_tri_busi_type_label,
                      setValue: (value) {
                        state.setTertiaryBusinessType(ref, value.oneString);
                        tabStateNotifier
                            .setTertiaryBusinessType(value.oneString);
                      },
                    ),
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FormElementMultiSelectWidget(
                        moduleFirmInfoBusinessActivities,
                        readOnly: state.featureMode.viewMode,
                        maxSelect: 2,
                        initialValue: state.businessActivities ?? MultiString(),
                        title: AppLocalizations.of(context)!
                            .firm_general_business_activites_label,
                        setValue: (value) =>
                            state.setBusinessActivities(ref, value)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: textFieldBuilder.build(
                      label:
                          AppLocalizations.of(context)!.firm_general_tier_label,
                      initialValue: state.tier,
                      onChanged: (value) => state.setTier(ref, value),
                      readOnlyOverride: true,
                    ),
                  ),
                ],
              ),

              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),

              //Order information Sections **********
              Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      AppLocalizations.of(context)!
                          .firm_general_order_information_label,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16))),

              ExpandedRow(
                children: [
                  CustomCheckboxListTile(
                    title: AppLocalizations.of(context)!
                        .firm_general_firm_is_under_order_label,
                    readOnly: state.featureMode.viewMode,
                      initialValue:
                          state.firmIsUnderOrder ?? tabState.firmUnderOrder,
                      setValue: (value) {
                        if (!value!) {
                          state.setTypeOfOrder(ref, null);
                          state.setExpirationOfOrder(ref, null); 
                          state.setFirmIsUnderOrder(ref, value);
                          tabStateNotifier.setFirmUnderOrder(value);
                          tabStateNotifier.setExpirationOfOrder(null);
                          return;
                        }
                        state.setFirmIsUnderOrder(ref, value);
                        tabStateNotifier.setFirmUnderOrder(value);
                      }),
                  CustomCheckboxListTile(
                    title: AppLocalizations.of(context)!
                        .firm_general_order_is_permanent_or_indefinite_label,
                    readOnly: state.featureMode.viewMode,
                      initialValue:
                          state.orderIsPermanent ?? tabState.orderIsIndefinite,
                      setValue: (value) {
                        state.setOrderIsPermanent(ref, value);
                        tabStateNotifier.setOrderIsIndefinite(value);
                      }),
                ],
              ),

              ExpandedRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FormElementMultiSelectWidget(
                      moduleFirmInfoTypeOfOrder,
                      readOnly: state.featureMode.viewMode ||
                          !(state.firmIsUnderOrder ??
                              tabState.firmUnderOrder ??
                              false),
                      maxSelect: 14,
                      title: AppLocalizations.of(context)!
                          .firm_general_type_of_order_label,
                      initialValue: state.typeOfOrder ?? MultiString(),
                      setValue: (value) {
                        state.setTypeOfOrder(ref, value);
                      },
                    ),
                  ),
                  DatePickerWidget(
                    label: AppLocalizations.of(context)!
                        .firm_general_expiration_of_order_label,
                    readOnly: state.featureMode.viewMode ||
                        !(state.firmIsUnderOrder ??
                            tabState.firmUnderOrder ??
                            false),
                    initialValue: state.expirationOfOrder,
                    setValue: (value) {
                      state.setExpirationOfOrder(ref, value);
                    },
                  ),
                ],
              ),

              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),

              //Miscellaneous Sections **********
              MiscellaneousWidget(state: state),

              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),

              //Hours of Operation section *********
              HoursOfOperation(state: state),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
