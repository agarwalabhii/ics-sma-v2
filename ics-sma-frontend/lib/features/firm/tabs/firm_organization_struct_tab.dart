import 'package:anet/features/firm/state/firm_organization_struct_state.dart';
import 'package:anet/features/firm/tabs/providers/firm_organization_struct_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_local_data/sma_local_data.dart';

class FirmOrganizationStructTab extends ConsumerWidget {
  final FirmOrganizationStructState state;

  const FirmOrganizationStructTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final tabProvider = ref.watch(organizationStructureTabStateProvider);
    final tabNotifier =
        ref.watch(organizationStructureTabStateProvider.notifier);
    final locationViewModel = ref.watch(physicalLocationViewModelProvider(
            state.id, LocationRefType.firmOrganizationStruct)
        .notifier);
    final textFieldBuilder = TextFormFieldBuilder(
        readOnly: state.featureMode.viewMode && !state.featureMode.editMode);
    return Form(
      child: FocusTraversalGroup(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpandedRow(
                key: UniqueKey(),
                children: [
                  textFieldBuilder.build(
                    label: AppLocalizations.of(context)!
                        .firm_organization_organization_name_label,
                    initialValue: state.organizationName1 ??
                        "", // TODO tabProvider.firmName,
                    maxLength: 75,
                    readOnlyOverride: state.featureMode.viewMode &&
                            !state.featureMode.editMode ||
                        (state.sameAsFirmName ?? tabProvider.sameAsFirmName),
                    onChanged: (value) {
                      state.setOrganizationName1(ref, value);
                    },
                  ),
                  MultiSelectorWidget(
                    label: AppLocalizations.of(context)!
                        .firm_organization_organization_type_label,
                    mainList: _organizationType,
                    preSelectionText: "Select Organization Type",
                    initialValue:
                        state.organizationType1 ?? tabProvider.orgType,
                    readOnly: state.featureMode.viewMode,
                    setValue: (value, list) {
                      state.setOrganizationType1(ref, value);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  CustomCheckboxListTile(
                    readOnly: state.featureMode.viewMode,
                    title: AppLocalizations.of(context)!
                        .firm_organization_same_as_firm_name_label,
                    initialValue:
                        state.sameAsFirmName ?? tabProvider.sameAsFirmName,
                    setValue: (newValue) {
                      state.setSameAsFirmName(ref, newValue);
                      tabNotifier.setSameAsFirmName(newValue);
                      if (newValue!) {
                        state.setOrganizationName1(ref, tabProvider.orgName);
                        tabNotifier.setFirmName(tabProvider.orgName);
                      } else {
                        state.setOrganizationName1(ref, "");
                        tabNotifier.setFirmName(null);
                      }
                    },
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RadioListTile<int>(
                    enableFeedback: state.featureMode.viewMode,
                    value: 1,
                    title: Text(
                        AppLocalizations.of(context)!
                            .firm_organization_same_as_physical_address_label,
                        style: state.featureMode.viewMode
                            ? const TextStyle(color: Colors.grey)
                            : const TextStyle(color: Colors.black)),
                    groupValue: tabProvider.selectedRadioTile,
                    activeColor: themeColor,
                    toggleable: true,
                    onChanged: (value) async {
                      await locationViewModel.cloneFrom(
                          refId: state.id,
                          refType: LocationRefType.firmOrganizationStruct,
                          fromRefType: LocationRefType.firmMain);
                      state.featureMode.viewMode
                          ? null
                          : tabNotifier.setSelectedRadioTile(value);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RadioListTile<int>(
                    enableFeedback: state.featureMode.viewMode,
                    value: 2,
                    activeColor: themeColor,
                    title: Text(
                        AppLocalizations.of(context)!
                            .firm_organization_same_as_mailing_address_label,
                        style: state.featureMode.viewMode
                            ? const TextStyle(color: Colors.grey)
                            : const TextStyle(color: Colors.black)),
                    groupValue: tabProvider.selectedRadioTile,
                    toggleable: true,
                    onChanged: (value) async {
                      await locationViewModel.cloneFrom(
                          refId: state.id,
                          refType: LocationRefType.firmOrganizationStruct,
                          fromRefType: LocationRefType.firmMailing);
                      state.featureMode.viewMode
                          ? null
                          : tabNotifier.setSelectedRadioTile(value);
                    }),
              ),
              PhysicalLocationWidget(
                refId: state.id,
                refType: LocationRefType.firmOrganizationStruct,
                readOnly: state.featureMode.viewMode ||
                    tabProvider.selectedRadioTile == 1 ||
                    tabProvider.selectedRadioTile == 2,
                includeCounty: false,
              ),
              const Divider(),
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!
                        .firm_organization_name_of_official1_label,
                    initialValue:
                        state.officalName1 ?? tabProvider.officalName1,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalName1(ref, value);
                      tabNotifier.setOfficalName1(value);
                    },
                  ),
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!.firm_owner_title_label,
                    initialValue:
                        state.officalTitle1 ?? tabProvider.officalTitle1,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalTitle1(ref, value);
                      tabNotifier.setOfficalTitle1(value);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!
                        .firm_organization_name_of_official2_label,
                    initialValue:
                        state.officalName2 ?? tabProvider.officalName2,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalName2(ref, value);
                      tabNotifier.setOfficalName2(value);
                    },
                  ),
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!.firm_owner_title_label,
                    initialValue:
                        state.officalTitle2 ?? tabProvider.officalTitle2,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalTitle2(ref, value);
                      tabNotifier.setOfficalTitle2(value);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!
                        .firm_organization_name_of_official3_label,
                    initialValue:
                        state.officalName3 ?? tabProvider.officalName3,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalName3(ref, value);
                      tabNotifier.setOfficalName3(value);
                    },
                  ),
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!.firm_owner_title_label,
                    initialValue:
                        state.officalTitle3 ?? tabProvider.officalTitle3,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalTitle3(ref, value);
                      tabNotifier.setOfficalTitle3(value);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!
                        .firm_organization_name_of_official4_label,
                    initialValue:
                        state.officalName4 ?? tabProvider.officalName4,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalName4(ref, value);
                      tabNotifier.setOfficalName4(value);
                    },
                  ),
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: AppLocalizations.of(context)!.firm_owner_title_label,
                    initialValue:
                        state.officalTitle4 ?? tabProvider.officalTitle4,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalTitle4(ref, value);
                      tabNotifier.setOfficalTitle4(value);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> _organizationType = [
  "Corporation",
  "LLC",
  "Partnership",
  "Sole Proprietorship",
  "Other"
];
