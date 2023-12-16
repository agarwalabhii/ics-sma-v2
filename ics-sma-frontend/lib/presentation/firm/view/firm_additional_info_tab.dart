import 'package:anet/presentation/firm/viewmodel/firm_additional_info_form_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

typedef _Constraints = FirmAdditionalInfoConstraints;

class FirmAdditionalInfoTab extends ConsumerStatefulWidget {
  const FirmAdditionalInfoTab({
    Key? key,
    required this.dataClass,
    required this.featureMode,
  }) : super(key: key);

  final FirmAdditionalInfoData dataClass;
  final FeatureMode featureMode;

  @override
  ConsumerState<FirmAdditionalInfoTab> createState() => _FirmAdditionalInfoTabState();
}

class _FirmAdditionalInfoTabState extends ConsumerState<FirmAdditionalInfoTab> {
  late FirmAdditionalInfoFormViewModel viewModel;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    viewModel =
        ref.read(firmAdditionalInfoFormViewModelProvider(widget.dataClass).notifier);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant FirmAdditionalInfoTab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.dataClass != widget.dataClass) {
      _formKey.currentState?.reset();
      viewModel =
          ref.watch(firmAdditionalInfoFormViewModelProvider(widget.dataClass).notifier);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(formActionProvider, (FormAction? previous, FormAction next) {
      if (previous != next) {
        _save(context);
      }
    });
    final data = ref.watch(firmAdditionalInfoFormViewModelProvider(widget.dataClass));
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: widget.featureMode.viewMode);
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
                    initialValue: data.otherRegulatoryInfo,
                    onChanged: (value) {
                      viewModel.setOtherRegulatoryInfo(value);
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
                    initialValue: data.additionalComments,
                    onChanged: (value) {
                      viewModel.setAdditionalComments(value);
                    },
                  ),
                ],
              ),
              const Divider(),
              ExpandedRow(
                children: [
                  CustomCheckboxListTile(
                      title: "Update Pest Control Information?",
                      readOnly: !widget.featureMode.editMode,
                      initialValue: data.updatePestInfo ?? false,
                      setValue: (newValue) {
                        viewModel.setUpdatePestUIState(newValue);
                        viewModel.setUpdatePestInfo(newValue);
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: DatePickerWidget(
                        readOnly: !widget.featureMode.editMode,
                        initialValue: data.datePestControl,
                        label: "Date of Pest Control Update",
                        setValue: (value) {
                          viewModel.setDatePestControl(value);
                        }),
                  ),
                ],
              ),
              const Divider(),
              ExpandedRow(
                children: [
                  CustomCheckboxListTile(
                      title: "Is Pest Control Self-Administered?",
                      readOnly: widget.featureMode.viewMode,
                      initialValue: data.pestSelfAdmin ?? false,
                      setValue: (newValue) {
                        if (newValue!) {
                          viewModel.setPestControlName("");
                          viewModel.setAddress1("");
                          viewModel.setAddress2("");
                          viewModel.setCity("");
                          viewModel.setStateCode("");
                          viewModel.setZipCode("");
                          viewModel.setPhone("");
                          viewModel.setExt("");
                          viewModel.setMobile("");
                          viewModel.setEmail("");
                        }
                        viewModel.setSelfAdminUIState(newValue);
                        viewModel.setPestSelfAdmin(newValue);
                        
                      }),
                  MultiSelectorWidget(
                      mainList: _frequencyChoice,
                      label: "Frequency",
                      initialValue: data.frequency ?? data.frequencyUIState,
                      readOnly: widget.featureMode.viewMode,
                      preSelectionText: "Select a Frequency",
                      setValue: (value, list) {
                        viewModel.setFrequency(value);
                      }),
                ],
              ),
              ExpandedRow(
                isVisible:
                    !(data.pestSelfAdmin ??
                    data.selfAdminUIState ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "Name",
                    maxLength: _Constraints.pestControlName.maxLength,
                    readOnlyOverride: widget.featureMode.viewMode,
                    initialValue: data.pestControlName,
                    onChanged: (newValue) {
                      viewModel.setPestControlName(newValue);
                    },
                    mandate: true,
                  ),
                ],
              ),
              ExpandedRow(
                isVisible:
                    !(data.pestSelfAdmin ??
                    data.selfAdminUIState ??
                    true),
                children: [
                  textFieldBuilder.build(
                    readOnlyOverride: widget.featureMode.viewMode,
                    label: "Address 1",
                    maxLength: _Constraints.address1.maxLength,
                    initialValue: data.address1,
                    onChanged: (newValue) {
                      viewModel.setAddress1(newValue);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                isVisible:
                    !(data.pestSelfAdmin ??
                    data.selfAdminUIState ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "Address 2",
                    readOnlyOverride: widget.featureMode.viewMode,
                    initialValue: data.address2,
                    maxLength: _Constraints.address2.maxLength,
                    onChanged: (newValue) {
                      viewModel.setAddress2(newValue);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                isVisible:
                    !(data.pestSelfAdmin ??
                    data.selfAdminUIState ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "City",
                    maxLength: _Constraints.city.maxLength,
                    readOnlyOverride: widget.featureMode.viewMode,
                    initialValue: data.city,
                    onChanged: (newValue) {
                      viewModel.setCity(newValue);
                    },
                  ),
                  Row(children: [
                    Flexible(
                      flex: 1,
                      child: Visibility(
                        visible: !(data.pestSelfAdmin ??
                            data.selfAdminUIState ??
                            true),
                        child: FormElementStateWidget(
                          label: "State",
                          initialValue: data.stateCode,
                          readOnly: widget.featureMode.viewMode,
                          onChanged: (newValue) {
                            viewModel.setStateCode(newValue ?? "");
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
                        readOnlyOverride: widget.featureMode.viewMode,
                        label: "Zip Code",
                        maxLength: _Constraints.zip.maxLength,
                        initialValue: data.zipCode,
                        onChanged: (newValue) {
                          viewModel.setZipCode(newValue);
                        },
                      ),
                    )
                  ]),
                ],
              ),
              ExpandedRow(
                isVisible:
                    !(data.pestSelfAdmin ??
                    data.selfAdminUIState ??
                    true),
                children: [
                  Row(children: [
                    Flexible(
                      flex: 2,
                      child: textFieldBuilder.build(
                        inputFormatters: inputFormatterPhoneNumber,
                        label: "Phone Number",
                        readOnlyOverride: widget.featureMode.viewMode,
                        initialValue: data.phone,
                        onChanged: (newValue) {
                          viewModel.setPhone(newValue);
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
                        readOnlyOverride: widget.featureMode.viewMode,
                        label: "Ext",
                        initialValue: data.ext,
                        onChanged: (newValue) {
                          viewModel.setExt(newValue);
                        },
                      ),
                    )
                  ]),
                  textFieldBuilder.build(
                    inputFormatters: inputFormatterPhoneNumber,
                    readOnlyOverride: widget.featureMode.viewMode,
                    label: "Mobile Number",
                    initialValue: data.mobile,
                    onChanged: (newValue) {
                      viewModel.setMobile(newValue);
                    },
                  ),
                ],
              ),
              ExpandedRow(
                isVisible:
                    !(data.pestSelfAdmin ??
                    data.selfAdminUIState ??
                    true),
                children: [
                  textFieldBuilder.build(
                    label: "Email",
                    inputFormatters: inputFormatterEmail,
                    initialValue: data.email,
                    maxLength: _Constraints.email.maxLength,
                    readOnlyOverride: widget.featureMode.viewMode,
                    onChanged: (newValue) {
                      viewModel.setEmail(newValue);
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
                    readOnlyOverride: widget.featureMode.viewMode,
                    initialValue: data.comments,
                    maxLength: _Constraints.comments.maxLength,
                    onChanged: (newValue) {
                      viewModel.setComments(newValue);
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

  Future<bool> _save(BuildContext context) async {
    final currentState = _formKey.currentState;
    if (currentState != null && currentState.validate()) {
      await viewModel.createOrUpdate();
      return true;
    }
    return false;
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
