import 'package:anet/features/firm/state/firm_general_info_state.dart';
import 'package:anet/features/firm/tabs/providers/firm_geninfo_misc_provider.dart';
import 'package:anet/features/firm/widgets/number_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

typedef _Constraints = FirmGeneralInfoConstraints;
final List<String> booleanChoices = ["Yes", "No", "N/A"];
final List<String> approxNumberOfEmployee = [
  "0-5",
  "6-20",
  "21-100",
  "101-500",
  "501-1000",
  "1001-1500",
  "1501-2000",
  "Over-2000"
];

class MiscellaneousWidget extends ConsumerStatefulWidget {
  final FirmGeneralInfoState state;
  const MiscellaneousWidget({required this.state, super.key});

  @override
  ConsumerState<MiscellaneousWidget> createState() =>
      _MiscellaneousWidgetState();
}

class _MiscellaneousWidgetState extends ConsumerState<MiscellaneousWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(miscSectionStateProvider);
    final notifier = ref.watch(miscSectionStateProvider.notifier);
    final textFieldBuilder =
        TextFormFieldBuilder(readOnly: widget.state.featureMode.viewMode);
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
                AppLocalizations.of(context)!.firm_general_miscellaneous_label,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16))),
        ExpandedRow(
          children: [
            textFieldBuilder.build(
              label: AppLocalizations.of(context)!
                  .firm_general_number_of_floors_label,
              initialValue: widget.state.numberOfFloors ?? provider.numOfFloors,
              inputFormatters: [
                NumberFormatter(),
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              maxLength: 3,
              onChanged: (value) {
                widget.state.setNumberOfFloors(ref, value);
                notifier.setNumberOfFloors(value);
              },
            ),
            textFieldBuilder.build(
              label: AppLocalizations.of(context)!
                  .firm_general_approximate_square_footage_label,
              initialValue:
                  widget.state.approxSqFootage ?? provider.approxSqFootage,
              inputFormatters: [
                NumberFormatter(),
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                LengthLimitingTextInputFormatter(10),
              ],
              onChanged: (value) {
                widget.state.setApproxSqFootage(ref, value);
                notifier.setApproxSqFootage(value);
              },
            ),
          ],
        ),
        ExpandedRow(
          children: [
            MultiSelectorWidget(
              label: AppLocalizations.of(context)!
                  .firm_general_approximate_number_of_employees_label,
              initialValue:
                  widget.state.numberOfEmp ?? provider.approxNumberOfEmployee,
              setValue: (value, list) {
                widget.state.setNumberOfEmp(ref, value);
                notifier.setApproxNumberEmployee(value);
              },
              readOnly: widget.state.featureMode.viewMode,
              mainList: approxNumberOfEmployee,
              preSelectionText: "Select # of Employees",
            ),
            MultiSelectorWidget(
              mainList: booleanChoices,
              label: AppLocalizations.of(context)!
                    .firm_general_is_there_a_back_up_energy_source_label,
              initialValue: widget.state.backupEnergySource ?? "N/A",
              setValue: (value, list) {
                widget.state.setBackupEnergySource(ref, value);
                notifier.setBackupEnergy(value);
              },
              readOnly: widget.state.featureMode.viewMode,
            )
          ],
        ),
        ExpandedRow(
          children: [
            MultiSelectorWidget(
              mainList: booleanChoices,
              label: AppLocalizations.of(context)!
                  .firm_general_is_firm_registered_label,
              readOnly: true,
              initialValue: "", // TODO widget.state.isFirmRegistered ?? "No",
              setValue: (value, list) {
                // widget.state.setIsFirmRegistered(ref, value);
                notifier.setFirmRegistered(value);
              },
            ),
            Row(
              children: [
                Flexible(
                  flex: 4,
                  child: textFieldBuilder.build(
                      label: AppLocalizations.of(context)!
                          .firm_general_establishment_number_label,
                      maxLength: _Constraints.establishmentNumber.maxLength,
                      initialValue: widget.state.establishmentNumber,
                      onChanged: (value) =>
                        widget.state.setEstablishmentNumber(ref, value),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
