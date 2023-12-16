import 'package:anet/features/firm/state/firm_additional_info_state.dart';
import 'package:anet/features/firm/tabs/providers/firm_additional_info_tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

typedef _Constraints = FirmAdditionalInfoConstraints;

class FirmAdditionalInfoTab extends ConsumerWidget {
  final FirmAdditionalInfoState state;

  const FirmAdditionalInfoTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final tabState = ref.watch(firmAdditionalInfoNotifierProvider);
    final tabStateNotifier =
        ref.watch(firmAdditionalInfoNotifierProvider.notifier);
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: state.featureMode.viewMode);
    return Form(
      child: FocusTraversalGroup(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                    label: AppLocalizations.of(context)!
                        .firm_additional_regulatory_agency_label,
                    maxLength: _Constraints.otherRegulatoryInfo.maxLength,
                    initialValue: state.otherRegulatoryInfo,
                    onChanged: (value) {
                      state.setOtherRegulatoryInfo(ref, value);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                    label:
                        AppLocalizations.of(context)!.additional_comments_label,
                    maxLength: _Constraints.additionalComments.maxLength,
                    initialValue: state.additionalComments,
                    onChanged: (value) {
                      state.setAdditionalComments(ref, value);
                    },
                  ),
                ],
              ),
              const Divider(),
              ExpandedRow(
                children: [
                  CustomCheckboxListTile(
                      title: "Update Pest Control Information?",
                      readOnly: !state.featureMode.editMode,
                      initialValue: state.updatePestInfo ?? false,
                      setValue: (newValue) {
                        tabStateNotifier.setUpdatePestControlled(newValue);
                        state.setUpdatePestInfo(ref, newValue);
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DatePickerWidget(
                        readOnly: !state.featureMode.editMode,
                        initialValue: state.datePestControl,
                        label: "Date of Pest Control Update",
                        setValue: (value) {
                          state.setDatePestControl(ref, value);
                        }),
                  ),
                ],
              ),
              const Divider(),
              ExpandedRow(
                children: [
                  CustomCheckboxListTile(
                      title: "Is Pest Control Self-Administered?",
                      readOnly: state.featureMode.viewMode,
                      initialValue: state.pestSelfAdmin ?? false,
                      setValue: (newValue) {
                        if (newValue!) {
                          state.setPestControlName(ref, "");
                          state.setAddress1(ref, "");
                          state.setAddress2(ref, "");
                          state.setCity(ref, "");
                          state.setState(ref, null);
                          state.setZip(ref, "");
                          state.setPhone(ref, "");
                          state.setExt(ref, "");
                          state.setMobile(ref, "");
                          state.setEmail(ref, "");
                        }
                        tabStateNotifier.setSelfAdministrated(newValue);
                        state.setPestSelfAdmin(ref, newValue);
                      }),
                  MultiSelectorWidget(
                      mainList: _frequencyChoice,
                      label: "Frequency",
                      initialValue: state.frequency ?? tabState.frequency,
                      readOnly: state.featureMode.viewMode,
                      preSelectionText: "Select a Frequency",
                      setValue: (value, list) {
                        state.setFrequency(ref, value);
                      }),
                ],
              ),
              ExpandedRow(
                isVisible: !(state.pestSelfAdmin ??
                    tabState.selfAdministrated ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "Name",
                    maxLength: _Constraints.pestControlName.maxLength,
                    readOnlyOverride: state.featureMode.viewMode,
                    initialValue: state.pestControlName,
                    onChanged: (newValue) {
                      state.setPestControlName(ref, newValue);
                    },
                    mandate: true,
                  ),
                ],
              ),
              ExpandedRow(
                isVisible: !(state.pestSelfAdmin ??
                    tabState.selfAdministrated ??
                    true),
                children: [
                  textFieldBuilder.build(
                    readOnlyOverride: state.featureMode.viewMode,
                    label: "Address 1",
                    maxLength: _Constraints.address1.maxLength,
                    initialValue: state.address1,
                    onChanged: (newValue) {
                      state.setAddress1(ref, newValue);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                isVisible: !(state.pestSelfAdmin ??
                    tabState.selfAdministrated ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "Address 2",
                    readOnlyOverride: state.featureMode.viewMode,
                    initialValue: state.address2,
                    maxLength: _Constraints.address2.maxLength,
                    onChanged: (newValue) {
                      state.setAddress2(ref, newValue);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                isVisible: !(state.pestSelfAdmin ??
                    tabState.selfAdministrated ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "City",
                    maxLength: _Constraints.city.maxLength,
                    readOnlyOverride: state.featureMode.viewMode,
                    initialValue: state.city,
                    onChanged: (newValue) {
                      state.setCity(ref, newValue);
                    },
                  ),
                  Row(children: [
                    Flexible(
                      flex: 1,
                      child: Visibility(
                        visible: !(state.pestSelfAdmin ??
                            tabState.selfAdministrated ??
                            true),
                        child: FormElementStateWidget(
                          label: "State",
                          initialValue: state.state,
                          readOnly: state.featureMode.viewMode,
                          onChanged: (newValue) {
                            state.setState(ref, newValue);
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: textFieldBuilder.build(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(5),
                        ],
                        readOnlyOverride: state.featureMode.viewMode,
                        label: "Zip Code",
                        maxLength: _Constraints.zip.maxLength,
                        initialValue: state.zip,
                        onChanged: (newValue) {
                          state.setZip(ref, newValue);
                        },
                      ),
                    )
                  ]),
                ],
              ),
              ExpandedRow(
                isVisible: !(state.pestSelfAdmin ??
                    tabState.selfAdministrated ??
                    true),
                children: [
                  Row(children: [
                    Flexible(
                      flex: 2,
                      child: textFieldBuilder.build(
                        inputFormatters: inputFormatterPhoneNumber,
                        label: "Phone Number",
                        readOnlyOverride: state.featureMode.viewMode,
                        initialValue: state.phone,
                        onChanged: (newValue) {
                          state.setPhone(ref, newValue);
                        },
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: textFieldBuilder.build(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(6)
                        ],
                        readOnlyOverride: state.featureMode.viewMode,
                        label: "Ext",
                        initialValue: state.ext,
                        onChanged: (newValue) {
                          state.setExt(ref, newValue);
                        },
                      ),
                    )
                  ]),
                  textFieldBuilder.build(
                    inputFormatters: inputFormatterPhoneNumber,
                    readOnlyOverride: state.featureMode.viewMode,
                    label: "Mobile Number",
                    initialValue: state.mobile,
                    onChanged: (newValue) {
                      state.setMobile(ref, newValue);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                isVisible: !(state.pestSelfAdmin ??
                    tabState.selfAdministrated ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "Email",
                    inputFormatters: inputFormatterEmail,
                    initialValue: state.email,
                    maxLength: _Constraints.email.maxLength,
                    readOnlyOverride: state.featureMode.viewMode,
                    onChanged: (newValue) {
                      state.setEmail(ref, newValue);
                    },
                  ),
                  Container()
                ],
              ),
              // ** end Pest controll address***
              ExpandedRow(
                children: [
                  textFieldBuilder.build(
                    label: "Comments",
                    readOnlyOverride: state.featureMode.viewMode,
                    initialValue: state.comments,
                    maxLength: _Constraints.comments.maxLength,
                    onChanged: (newValue) {
                      state.setComments(ref, newValue);
                    },
                  ),
                ],
              ),
              const Divider(),
              const Text("PEST CONTROL HISTORY",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> _frequencyChoice = [
  "As needed",
  "Weekly",
  "BiWeekly",
  "Monthly",
  "Every 2 months",
  "Every 3 months",
  "Every 4 months",
  "Annually",
  "Biannually "
];
