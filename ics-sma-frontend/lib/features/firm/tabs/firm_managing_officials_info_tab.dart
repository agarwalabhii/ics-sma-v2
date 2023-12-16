import 'package:anet/features/firm/state/firm_managing_officials_state.dart';
import 'package:anet/features/firm/tabs/providers/firm_managing_officials_info_tab_provider.dart';
import 'package:anet/features/firm/tabs/providers/firm_same_owner_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';

class FirmManagingOfficalsInfoTab extends ConsumerWidget {
  final FirmManagingOfficialsState state;

  const FirmManagingOfficalsInfoTab({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state.bootstrap(ref);

    final provider = ref.watch(firmManagingOfficialsInfoNotifierProvider);
    final notifier =
        ref.watch(firmManagingOfficialsInfoNotifierProvider.notifier);
    final sameAsProvider = ref.watch(sameAsOwnerProvider);
    final textFieldBuilder =
        TextFormFieldBuilder(
        readOnly: state.featureMode.viewMode && !state.featureMode.editMode);
    final bool readOnlyBool = state.featureMode.viewMode ||
        (state.sameAsOwnerInfo ?? provider.sameAsOwnerInfo ?? false) ||
        (state.featureMode.viewMode &&
            (state.sameAsOwnerInfo ?? provider.sameAsOwnerInfo ?? false));
    final bool sameAs = !state.featureMode.viewMode
        ? state.sameAsOwnerInfo ?? provider.sameAsOwnerInfo ?? false
        : false;
    return Form(
      child: FocusTraversalGroup(
        child: SingleChildScrollView(
          child: Column(
          children: [
            ExpandedRow(
              children: [
                const Text("First Managing Official",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                CustomCheckboxListTile(
                    title: "Same as Owner Info?",
                      initialValue:
                          state.sameAsOwnerInfo ?? provider.sameAsOwnerInfo,
                      readOnly: state.featureMode.viewMode &&
                          !state.featureMode.editMode,
                    setValue: (newValue) {
                        state.setSameAsOwnerInfo(ref, newValue);
                        notifier.setSameAsOwnerInfo(newValue);
                        if (!newValue!) {
                          state.clearOfficial1(ref);
                        } 
                        if (newValue) {
                          state.setOfficalName1(ref, sameAsProvider.firmName);
                          state.setOfficalTitle1(ref, sameAsProvider.firmTitle);
                          state.setOfficalPhone1(ref, sameAsProvider.firmPhone);
                          state.setOfficalExt1(ref, sameAsProvider.firmExt);
                          state.setOfficalFax1(ref, sameAsProvider.firmFax);
                          state.setOfficalEmail1(ref, sameAsProvider.firmEmail);
                          state.setOfficalMobile1(
                              ref, sameAsProvider.firmMobile);
                              state.setReceiveMobileMessages1(ref, sameAsProvider.firmMessages);
                        }
                    }),
              ],
            ),
            ExpandedRow(
                key: UniqueKey(),
              children: [
                textFieldBuilder.build(
                      readOnlyOverride:
                          readOnlyBool,
                    label: AppLocalizations.of(context)!.firm_name_label,
                    maxLength: 50,
                      initialValue:
                          sameAs
                          ? sameAsProvider.firmName
                          : state.officalName1 ?? provider.officialName1,
                    onChanged: (value) {
                      state.setOfficalName1(ref, value);
                    }),
                textFieldBuilder.build(
                      readOnlyOverride:
                          readOnlyBool,
                    label: AppLocalizations.of(context)!.firm_owner_title_label,
                    maxLength: 50,
                      initialValue: sameAs
                          ? sameAsProvider.firmTitle
                          : state.officalTitle1 ?? provider.officialTitle1,
                    onChanged: (value) {
                      state.setOfficalTitle1(ref, value);
                    }),
              ],
            ),
            ExpandedRow(
              children: [
                  Row(key: UniqueKey(), children: [
                  Flexible(
                    flex: 2,
                    child: textFieldBuilder.build(
                          readOnlyOverride:
                              readOnlyBool,
                        label: AppLocalizations.of(context)!
                            .firm_owner_contact_phone_number_label,
                        inputFormatters: inputFormatterPhoneNumber,
                          initialValue: sameAs
                              ? sameAsProvider.firmPhone
                              : state.officalPhone1 ?? provider.officialPhone1,
                        onChanged: (value) {
                          state.setOfficalPhone1(ref, value);
                        }),
                  ),
                  Flexible(
                    flex: 1,
                    child: textFieldBuilder.build(
                          readOnlyOverride:
                              readOnlyBool,
                        label:
                            AppLocalizations.of(context)!.firm_owner_ext_label,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(6)
                        ],
                          initialValue: sameAs
                              ? sameAsProvider.firmExt
                              : state.officalExt1 ?? provider.officialExt1,
                        onChanged: (value) {
                          state.setOfficalExt1(ref, value);
                        }),
                  ),
                ]),
                textFieldBuilder.build(
                      readOnlyOverride:
                          readOnlyBool,
                    label: AppLocalizations.of(context)!
                        .firm_owner_contact_fax_number_label,
                    inputFormatters: inputFormatterPhoneNumber,
                      initialValue:
                          sameAs
                          ? sameAsProvider.firmFax
                          : state.officalFax1 ?? provider.officialFax1,
                    onChanged: (value) {
                      state.setOfficalFax1(ref, value);
                    }),
              ],
            ),
            ExpandedRow(
                key: UniqueKey(),
              children: [
                textFieldBuilder.build(
                      readOnlyOverride:
                          readOnlyBool,
                    label: AppLocalizations.of(context)!
                        .firm_owner_contact_email_address_label,
                    inputFormatters: inputFormatterEmail,
                      initialValue: sameAs
                          ? sameAsProvider.firmEmail
                          : state.officalEmail1 ?? provider.officialEmail1,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalEmail1(ref, value);
                    }),
                textFieldBuilder.build(
                      readOnlyOverride:
                          readOnlyBool,
                    label: AppLocalizations.of(context)!
                        .firm_owner_mobile_number_label,
                    inputFormatters: inputFormatterPhoneNumber,
                      initialValue: sameAs
                          ? sameAsProvider.firmMobile
                          : state.officalMobile1 ?? provider.officialMobile1,
                    onChanged: (value) {
                      state.setOfficalMobile1(ref, value);
                    }),
              ],
            ),
            ExpandedRow(
              children: [
                const Text(" "),
                CustomCheckboxListTile(
                    title: AppLocalizations.of(context)!
                        .firm_owner_receive_messages_on_mobile_phone_label,
                      readOnly: readOnlyBool,
                    initialValue: sameAs ? sameAsProvider.firmMessages : state.receiveMobileMessages1 ??
                          provider.receiveMessagesOnMobilePhone1,
                    setValue: (newValue) {
                      state.setReceiveMobileMessages1(ref, newValue);
                        notifier
                          .setReceiveMessagesOnMobilePhone1(newValue);
                    }),
              ],
            ),
            const Divider(),
            ExpandedRow(
              children: [
                Text(
                    AppLocalizations.of(context)!
                        .firm_managing_second_managing_official_label,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
              ],
            ),
            ExpandedRow(
              children: [
                textFieldBuilder.build(
                    label: AppLocalizations.of(context)!.firm_name_label,
                    initialValue: state.officalName2,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalName2(ref, value);
                    }),
                textFieldBuilder.build(
                    label: AppLocalizations.of(context)!.firm_owner_title_label,
                    maxLength: 50,
                    initialValue: state.officalTitle2,
                    onChanged: (value) {
                      state.setOfficalTitle2(ref, value);
                    }),
              ],
            ),
            ExpandedRow(
              children: [
                Row(children: [
                  Flexible(
                    flex: 2,
                    child: textFieldBuilder.build(
                        label: AppLocalizations.of(context)!
                            .firm_owner_contact_phone_number_label,
                        inputFormatters: inputFormatterPhoneNumber,
                        initialValue: state.officalPhone2,
                        onChanged: (value) {
                          state.setOfficalPhone2(ref, value);
                        }),
                  ),
                  Flexible(
                    flex: 1,
                    child: textFieldBuilder.build(
                        label:
                            AppLocalizations.of(context)!.firm_owner_ext_label,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(6)
                        ],
                        initialValue: state.officalExt2,
                        onChanged: (value) {
                          state.setOfficalExt2(ref, value);
                        }),
                  )
                ]),
                textFieldBuilder.build(
                    label: AppLocalizations.of(context)!
                        .firm_owner_contact_fax_number_label,
                    inputFormatters: inputFormatterPhoneNumber,
                    initialValue: state.officalFax2,
                    onChanged: (value) {
                      state.setOfficalFax2(ref, value);
                    }),
              ],
            ),
            ExpandedRow(
              children: [
                textFieldBuilder.build(
                    label: AppLocalizations.of(context)!
                        .firm_owner_contact_email_address_label,
                    inputFormatters: inputFormatterEmail,
                    initialValue: state.officalEmail2,
                    maxLength: 50,
                    onChanged: (value) {
                      state.setOfficalEmail2(ref, value);
                    }),
                textFieldBuilder.build(
                    label: AppLocalizations.of(context)!
                        .firm_owner_mobile_number_label,
                    inputFormatters: inputFormatterPhoneNumber,
                    initialValue: state.officalMobile2,
                    onChanged: (value) {
                      state.setOfficalMobile2(ref, value);
                    }),
              ],
            ),
            ExpandedRow(
              children: [
                const Text(" "),
                CustomCheckboxListTile(
                    title: AppLocalizations.of(context)!
                        .firm_owner_receive_messages_on_mobile_phone_label,
                    initialValue: state.receiveMobileMessages2 ??
                          provider.receiveMessagesOnMobilePhone2,
                    readOnly: state.featureMode.viewMode,
                    setValue: (newValue) {
                        notifier
                          .setReceiveMessagesOnMobilePhone2(newValue);
                      state.setReceiveMobileMessages2(ref, newValue);
                    }),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
