import 'dart:async';

import 'package:anet/features/firm/tabs/providers/firm_same_owner_provider.dart';
import 'package:anet/presentation/firm/viewmodel/firm_owner_info_form_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class FirmOwnerInfoTab extends ConsumerStatefulWidget {
  const FirmOwnerInfoTab({
    Key? key,
    required this.dataClass,
    required this.featureMode,
  }) : super(key: key);

  final FirmOwnerInfoData dataClass;
  final FeatureMode featureMode;

  @override
  ConsumerState<FirmOwnerInfoTab> createState() => _FirmOwnerInfoTabState();
}

class _FirmOwnerInfoTabState extends ConsumerState<FirmOwnerInfoTab> {
  late FirmOwnerInfoFormViewModel viewModel;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    viewModel =
        ref.read(firmOwnerInfoFormViewModelProvider(widget.dataClass).notifier);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant FirmOwnerInfoTab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.dataClass != widget.dataClass) {
      _formKey.currentState?.reset();
      viewModel =
          ref.watch(firmOwnerInfoFormViewModelProvider(widget.dataClass).notifier);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(formActionProvider, (FormAction? previous, FormAction next) {
      if (previous != next) {
        _save(context);
      }
    });
    final data = ref.watch(firmOwnerInfoFormViewModelProvider(widget.dataClass));

    return Form(
      key: _formKey,
      onWillPop: () async {
        final modified = viewModel.isEdited;
        if (modified) {
          return confirm(
            context,
            title: 'Discard changes?',
            content: 'Are you sure you want to discard your changes?',
          );
        }
        return true;
      },
      autovalidateMode: AutovalidateMode.always,
      child: FocusTraversalGroup(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpandedRow(
                children: [
                  CustomCheckboxListTile(
                    title: AppLocalizations.of(context)!
                        .firm_owner_update_owner_information_label,
                    initialValue: false, // state.updateInfo ?? false,
                    readOnly: !widget.featureMode.editMode,
                    setValue:
                        (newValue) {}, // state.setUpdateInfo(ref, newValue),
                  ),
                  DatePickerWidget(
                      setValue: (value) {
                        viewModel.setDateOfOwnershipUpdate;
                      },
                      initialValue: data.dateOfOwnershipUpdate,
                      readOnly: !widget.featureMode.editMode,
                      // (state.updateInfo ?? false),
                      label: AppLocalizations.of(context)!
                          .firm_owner_date_of_ownership_update_label),
                ],
              ),
              const Divider(),
              ExpandedRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: StringFormField(
                      label: AppLocalizations.of(context)!.firm_name_label,
                      value: data.ownerName ?? data.ownerName,
                      onChanged: widget.featureMode.viewMode
                          ? (v) {}
                          : (value) {
                              viewModel.setOwnerName(value);
                              viewModel.setOwnerName(value);
                        ref
                            .read(sameAsOwnerProvider.notifier)
                            .setFirmName(value);
                      },
                      builder: (context, controller) {
                        return TextFormField(
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16.0),
                          enabled: !widget.featureMode.viewMode,
                          controller: controller,
                          readOnly: widget.featureMode.viewMode,
                          maxLength: 50,
                          validator: (value) {
                            if (value != null && value.length > 50) {
                              return 'Limit the name to 50 characters.';
                            } else {
                              return null;
                            }
                          },
                          decoration: labelInputDecorator(
                              AppLocalizations.of(context)!.firm_name_label,
                            widget.featureMode.viewMode,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: StringFormField(
                      label: AppLocalizations.of(context)!.firm_name_label,
                      value: data.ownerTitle ?? data.ownerTitle,
                      onChanged: widget.featureMode.viewMode
                          ? (v) {}
                          : (value) {
                              viewModel.setOwnerTitle(value);
                              viewModel.setOwnerTitle(value);
                        ref
                            .read(sameAsOwnerProvider.notifier)
                            .setFirmTitle(value);
                      },
                      builder: (context, controller) {
                        return TextFormField(
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16.0),
                          enabled: !widget.featureMode.viewMode,
                          controller: controller,
                          readOnly: widget.featureMode.viewMode,
                          maxLength: 50,
                          validator: (value) {
                            if (value != null && value.length > 50) {
                              return 'Limit the title to 50 characters.';
                            } else {
                              return null;
                            }
                          },
                          decoration: labelInputDecorator(
                              AppLocalizations.of(context)!
                                  .firm_owner_title_label,
                            widget.featureMode.viewMode,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: StringFormField(
                            label: AppLocalizations.of(context)!
                                .firm_owner_contact_phone_number_label,
                            value: data.ownerPhone ?? data.ownerPhone,
                            onChanged: widget.featureMode.viewMode
                                ? (v) {}
                                : (value) {
                              viewModel.setOwnerPhone(value);
                                    viewModel.setOwnerPhone(value);
                              ref
                                  .read(sameAsOwnerProvider.notifier)
                                  .setFirmPhone(value);
                            },
                            builder: (context, controller) {
                              return TextFormField(
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                                enabled: !widget.featureMode.viewMode,
                                controller: controller,
                                readOnly: widget.featureMode.viewMode,
                                keyboardType: TextInputType.phone,
                                decoration: labelInputDecorator(
                                    AppLocalizations.of(context)!
                                        .firm_owner_contact_phone_number_label,
                                  widget.featureMode.viewMode,
                                ),
                                inputFormatters: inputFormatterPhoneNumber,
                              );
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: StringFormField(
                          label: AppLocalizations.of(context)!
                              .firm_owner_ext_label,
                          value: data.ownerExt ?? "", // TOOD provider.ext,
                          onChanged: widget.featureMode.viewMode
                              ? (v) {}
                              : (value) {
                                  viewModel.setOwnerExt(value);
                                  viewModel.setOwnerExt(value);
                            ref
                                .read(sameAsOwnerProvider.notifier)
                                .setFirmExt(value);
                          },
                          builder: (context, controller) {
                            return TextFormField(
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                              enabled: !widget.featureMode.viewMode,
                              controller: controller,
                              readOnly: widget.featureMode.viewMode,
                              keyboardType: TextInputType.phone,
                              decoration: labelInputDecorator(
                                  AppLocalizations.of(context)!
                                      .firm_owner_ext_label,
                                widget.featureMode.viewMode,
                              ),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                LengthLimitingTextInputFormatter(6)
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: StringFormField(
                      label: AppLocalizations.of(context)!
                          .firm_owner_contact_fax_number_label,
                      value: data.ownerFax ?? data.ownerFax,
                      onChanged: widget.featureMode.viewMode
                          ? (v) {}
                          : (value) {
                              viewModel.setOwnerFax(value);
                              viewModel.setOwnerFax(value);
                        ref
                            .read(sameAsOwnerProvider.notifier)
                            .setFirmFax(value);
                      },
                      builder: (context, controller) {
                        return TextFormField(
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16.0),
                          enabled: !widget.featureMode.viewMode,
                          controller: controller,
                          readOnly: widget.featureMode.viewMode,
                          keyboardType: TextInputType.phone,
                          decoration: labelInputDecorator(
                              AppLocalizations.of(context)!
                                  .firm_owner_contact_fax_number_label,
                            widget.featureMode.viewMode,
                          ),
                          inputFormatters: inputFormatterPhoneNumber,
                        );
                      },
                    ),
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: StringFormField(
                      label: AppLocalizations.of(context)!
                          .firm_owner_contact_email_address_label,
                      value: data.ownerEmail ?? data.ownerEmail,
                      onChanged: widget.featureMode.viewMode
                          ? (v) {}
                          : (value) {
                              viewModel.setOwnerEmail(value);
                        viewModel.setOwnerEmail(value);
                        ref
                            .read(sameAsOwnerProvider.notifier)
                            .setFirmEmail(value);
                      },
                      builder: (context, controller) {
                        return TextFormField(
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16.0),
                          enabled: !widget.featureMode.viewMode,
                          controller: controller,
                          readOnly: widget.featureMode.viewMode,
                          maxLength: 50,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value != null && value.length > 50) {
                              return 'Limit the name to 50 characters.';
                            } else {
                              return null;
                            }
                          },
                          decoration: labelInputDecorator(
                              AppLocalizations.of(context)!
                                  .firm_owner_contact_email_address_label,
                            widget.featureMode.viewMode,
                          ),
                          inputFormatters: inputFormatterEmail,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: StringFormField(
                      label: AppLocalizations.of(context)!
                          .firm_owner_mobile_number_label,
                      value: data.ownerMobile ?? data.ownerMobile,
                      onChanged: widget.featureMode.viewMode
                          ? (v) {}
                          : (value) {
                              viewModel.setOwnerMobile(value);
                        viewModel.setOwnerMobile(value);
                        ref
                            .read(sameAsOwnerProvider.notifier)
                            .setFirmMobile(value);
                      },
                      builder: (context, controller) {
                        return TextFormField(
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16.0),
                          enabled: !widget.featureMode.viewMode,
                          controller: controller,
                          readOnly: widget.featureMode.viewMode,
                          keyboardType: TextInputType.phone,
                          decoration: labelInputDecorator(
                              AppLocalizations.of(context)!
                                  .firm_owner_mobile_number_label,
                            widget.featureMode.viewMode,
                          ),
                          inputFormatters: inputFormatterPhoneNumber,
                        );
                      },
                    ),
                  ),
                ],
              ),
              ExpandedRow(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CustomCheckboxListTile(
                    title: AppLocalizations.of(context)!
                        .firm_owner_receive_messages_on_mobile_phone_label,
                    readOnly: widget.featureMode.viewMode,
                    initialValue: data.receiveMobileMessages ?? false,
                    setValue: (value) {
                      setState(() {
                        viewModel.setReceiveMobileMessages(value);
                        ref
                            .read(sameAsOwnerProvider.notifier)
                            .setFirmMessages(value);
                      });
                    },
                  ),
                ],
              ),
              const Divider(),
              Text(AppLocalizations.of(context)!.firm_owner_owner_history_label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16))
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
