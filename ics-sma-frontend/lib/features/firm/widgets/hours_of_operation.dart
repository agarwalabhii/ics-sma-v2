import 'package:anet/features/firm/state/firm_general_info_state.dart';
import 'package:anet/features/firm/tabs/providers/hours_operation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:anet/features/firm/widgets/hour_selector.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';

class HoursOfOperation extends ConsumerWidget {
  final FirmGeneralInfoState state;
  const HoursOfOperation({required this.state, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabState = ref.watch(hoursOfOperationStateProvider);
    final tabStateNotifier = ref.read(hoursOfOperationStateProvider.notifier);
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
            AppLocalizations.of(context)!.firm_general_hours_of_operation_label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(AppLocalizations.of(context)!.firm_general_closed_label),
        ),
        const SizedBox(width: 150),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(AppLocalizations.of(context)!.firm_general_open_label),
        ),
        const SizedBox(width: 40),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(AppLocalizations.of(context)!.firm_general_close_label),
        )
      ]),
      Row(
        children: [
          SizedBox(
            width: 200,
            child: CustomCheckboxListTile(
              title: AppLocalizations.of(context)!.firm_general_monday_label,
              initialValue: state.mondayClosed ?? false,
              readOnly: state.featureMode.viewMode,
              setValue: (newValue) {
                tabStateNotifier.setMondayHours(newValue);
                tabStateNotifier.setMondayOpen("00:00");
                tabStateNotifier.setMondayClose("00:00");
                state.setMondayClosed(ref, newValue);
                state.setMondayOpen(ref, "00:00");
                state.setMondayClose(ref, "00:00");
              },
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.mondayOpen ?? tabState.mondayOpen ?? "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.mondayClosed ?? false) ||
                    (tabState.mondayHours ?? false),
                closed: (state.mondayClosed ?? false) ||
                    (tabState.mondayHours ?? false),
                updateHours: (value) {
                  state.setMondayOpen(ref, value);
                  tabStateNotifier.setMondayOpen(value);
                },
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.firm_general_to_label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.mondayClose ?? tabState.mondayClose ?? "17:00",
                readOnly: state.featureMode.viewMode ||
                    (state.mondayClosed ?? false) ||
                    (tabState.mondayHours ?? false),
                closed: (state.mondayClosed ?? false) ||
                    (tabState.mondayHours ?? false),
                updateHours: (value) {
                  state.setMondayClose(ref, value);
                  tabStateNotifier.setMondayClose(value);
                },
              ),
            ),
          ),
        ],
      ),
      ExpandedRow(
        children: [
          CustomCheckboxListTile(
            title: "Apply to all",
            readOnly: state.featureMode.viewMode,
            initialValue:
                state.applyToAll ?? tabState.applyToAll,
            setValue: (value) {
              if (value != null && value) {
                state.setTuesdayOpen(ref, state.mondayOpen);
                state.setWednesdayOpen(ref, state.mondayOpen);
                state.setThursdayOpen(ref, state.mondayOpen);
                state.setFridayOpen(ref, state.mondayOpen);
                state.setSaturdayOpen(ref, state.mondayOpen);
                state.setSundayOpen(ref, state.mondayOpen);
                state.setTuesdayClose(ref, state.mondayClose);
                state.setWednesdayClose(ref, state.mondayClose);
                state.setThursdayClose(ref, state.mondayClose);
                state.setFridayClose(ref, state.mondayClose);
                state.setSaturdayClose(ref, state.mondayClose);
                state.setSundayClose(ref, state.mondayClose);
                tabStateNotifier.setApplyToAll(value);
              } else if (value != null && !value) {
                state.setTuesdayOpen(ref, "00:00");
                state.setWednesdayOpen(ref, "00:00");
                state.setThursdayOpen(ref, "00:00");
                state.setFridayOpen(ref, "00:00");
                state.setSaturdayOpen(ref, "00:00");
                state.setSundayOpen(ref, "00:00");
                state.setTuesdayClose(ref, "00:00");
                state.setWednesdayClose(ref, "00:00");
                state.setThursdayClose(ref, "00:00");
                state.setFridayClose(ref, "00:00");
                state.setSaturdayClose(ref, "00:00");
                state.setSundayClose(ref, "00:00");
                tabStateNotifier.setDeselectApplyToAll(value);
              }
            },
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 200,
            child: CustomCheckboxListTile(
              title: AppLocalizations.of(context)!.firm_general_tuesday_label,
              initialValue: state.tuesdayClosed ?? false,
              readOnly: state.featureMode.viewMode,
              setValue: (newValue) {
                state.setTuesdayClosed(ref, newValue);
                state.setTuesdayOpen(ref, "00:00");
                state.setTuesdayClose(ref, "00:00");
                tabStateNotifier.setTuesdayHours(newValue);
                tabStateNotifier.setTuesdayOpen("00:00");
                tabStateNotifier.setTuesdayClose("00:00");

              },
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.tuesdayOpen ?? tabState.tuesdayOpen ?? "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.tuesdayClosed ?? false) ||
                    (tabState.tuesdayHours ?? false),
                closed: (state.tuesdayClosed ?? false) ||
                    (tabState.tuesdayHours ?? false),
                updateHours: (value) {
                  state.setTuesdayOpen(ref, value);
                  tabStateNotifier.setTuesdayOpen(value);
                },
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.firm_general_to_label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue: state.tuesdayClose ??
                    tabState.tuesdayClose ??
                    "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.tuesdayClosed ?? false) ||
                    (tabState.tuesdayHours ?? false),
                closed: (state.tuesdayClosed ?? false) ||
                    (tabState.tuesdayHours ?? false),
                updateHours: (value) {
                  state.setTuesdayClose(ref, value);
                  tabStateNotifier.setTuesdayClose(value);
                },
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 200,
            child: CustomCheckboxListTile(
              title: AppLocalizations.of(context)!.firm_general_wednesday_label,
              initialValue: state.wednesdayClosed ?? false,
              readOnly: state.featureMode.viewMode,
              setValue: (newValue) {
                state.setWednesdayClosed(ref, newValue);
                state.setWednesdayOpen(ref, "00:00");
                state.setWednesdayClose(ref, "00:00");
                tabStateNotifier.setWednesdayHours(newValue);
                tabStateNotifier.setWednesdayOpen("00:00");
                tabStateNotifier.setWednesdayClose("00:00");
              },
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue: 
                    state.wednesdayOpen ??
                    tabState.wednesdayOpen ??
                    "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.wednesdayClosed ?? false) ||
                    (tabState.wednesdayHours ?? false),
                closed: (state.wednesdayClosed ?? false) ||
                    (tabState.wednesdayHours ?? false),
                updateHours: (value) {
                  state.setWednesdayOpen(ref, value);
                  tabStateNotifier.setWednesdayOpen(value);
                },
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.firm_general_to_label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue: state.wednesdayClose ??
                    tabState.wednesdayClose ??
                    "17:00",
                readOnly: state.featureMode.viewMode ||
                    (state.wednesdayClosed ?? false) ||
                    (tabState.wednesdayHours ?? false),
                closed: (state.wednesdayClosed ?? false) ||
                    (tabState.wednesdayHours ?? false),
                updateHours: (value) {
                  state.setWednesdayClose(ref, value);
                  tabStateNotifier.setWednesdayClose(value);
                },
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 200,
            child: CustomCheckboxListTile(
              title: AppLocalizations.of(context)!.firm_general_thursday_label,
              initialValue: state.thursdayClosed ?? false,
              readOnly: state.featureMode.viewMode,
              setValue: (newValue) {
                state.setThursdayClosed(ref, newValue);
                state.setThursdayOpen(ref, "00:00");
                state.setThursdayClose(ref, "00:00");
                tabStateNotifier.setThursdayHours(newValue);
                tabStateNotifier.setThursdayOpen("00:00");
                tabStateNotifier.setThursdayClose("00:00");
              },
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue: state.thursdayOpen ??
                    tabState.thursdayOpen ??
                    "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.thursdayClosed ?? false) ||
                    (tabState.thursdayHours ?? false),
                closed: (state.thursdayClosed ?? false) ||
                    (tabState.thursdayHours ?? false),
                updateHours: (value) {
                  state.setThursdayOpen(ref, value);
                  tabStateNotifier.setThursdayOpen(value);
                },
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.firm_general_to_label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.thursdayClose ??
                    tabState.thursdayClose ??
                    "17:00",
                readOnly: state.featureMode.viewMode ||
                    (state.thursdayClosed ?? false) ||
                    (tabState.thursdayHours ?? false),
                closed: (state.thursdayClosed ?? false) ||
                    (tabState.thursdayHours ?? false),
                updateHours: (value) {
                  state.setThursdayClose(ref, value);
                  tabStateNotifier.setThursdayClose(value);
                },
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 200,
            child: CustomCheckboxListTile(
                title: AppLocalizations.of(context)!.firm_general_friday_label,
                initialValue: state.fridayClosed ?? false,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setFridayClosed(ref, value);
                  state.setFridayOpen(ref, "00:00");
                  state.setFridayClose(ref, "00:00");
                  tabStateNotifier.setFridayHours(value);
                  tabStateNotifier.setFridayOpen("00:00");
                  tabStateNotifier.setFridayClose("00:00");
                }),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.fridayOpen ?? tabState.fridayOpen ?? "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.fridayClosed ?? false) ||
                    (tabState.fridayHours ?? false),
                closed: (state.fridayClosed ?? false) ||
                    (tabState.fridayHours ?? false),
                updateHours: (value) {
                  state.setFridayOpen(ref, value);
                  tabStateNotifier.setFridayOpen(value);
                },
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.firm_general_to_label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.fridayClose ?? tabState.fridayClose ?? "17:00",
                readOnly: state.featureMode.viewMode ||
                    (state.fridayClosed ?? false) ||
                    (tabState.fridayHours ?? false),
                closed: (state.fridayClosed ?? false) ||
                    (tabState.fridayHours ?? false),
                updateHours: (value) {
                  state.setFridayClose(ref, value);
                  tabStateNotifier.setFridayClose(value);
                },
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 200,
            child: CustomCheckboxListTile(
                title:
                    AppLocalizations.of(context)!.firm_general_saturday_label,
                initialValue: state.saturdayClosed ?? false,
                readOnly: state.featureMode.viewMode,
                setValue: (value) {
                  state.setSaturdayClosed(ref, value);
                  state.setSaturdayOpen(ref, "00:00");
                  state.setSaturdayClose(ref, "00:00");
                  tabStateNotifier.setSaturdayHours(value);
                  tabStateNotifier.setSaturdayOpen("00:00");
                  tabStateNotifier.setSaturdayClose("00:00");
                }),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue: 
                    state.saturdayOpen ??
                    tabState.saturdayOpen ??
                    "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.saturdayClosed ?? false) ||
                    (tabState.saturdayHours ?? false),
                closed: (state.saturdayClosed ?? false) ||
                    (tabState.saturdayHours ?? false),
                updateHours: (value) {
                  state.setSaturdayOpen(ref, value);
                  tabStateNotifier.setSaturdayOpen(value);
                },
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.firm_general_to_label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue: state.saturdayClose ??
                    tabState.saturdayClose ??
                    "17:00",
                readOnly: state.featureMode.viewMode ||
                    (state.saturdayClosed ?? false) ||
                    (tabState.saturdayHours ?? false),
                closed: (state.saturdayClosed ?? false) ||
                    (tabState.saturdayHours ?? false),
                updateHours: (value) {
                  state.setSaturdayClose(ref, value);
                  tabStateNotifier.setSaturdayClose(value);
                },
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 200,
            child: CustomCheckboxListTile(
              title: AppLocalizations.of(context)!.firm_general_sunday_label,
              initialValue: state.sundayClosed ?? false,
              readOnly: state.featureMode.viewMode,
              setValue: (newValue) {
                state.setSundayClosed(ref, newValue);
                state.setSundayOpen(ref, "00:00");
                state.setSundayClose(ref, "00:00");
                tabStateNotifier.setSundayHours(newValue);
                tabStateNotifier.setSundayOpen("00:00");
                tabStateNotifier.setSundayClose("00:00");
              },
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.sundayOpen ?? tabState.sundayOpen ?? "08:00",
                readOnly: state.featureMode.viewMode ||
                    (state.sundayClosed ?? false) ||
                    (tabState.sundayHours ?? false),
                closed: (state.sundayClosed ?? false) ||
                    (tabState.sundayHours ?? false),
                updateHours: (value) {
                  state.setSundayOpen(ref, value);
                  tabStateNotifier.setSundayOpen(value);
                },
              ),
            ),
          ),
          Text(AppLocalizations.of(context)!.firm_general_to_label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HourSelector(
                initialValue:
                    state.sundayClose ?? tabState.sundayClose ?? "17:00",
                readOnly: state.featureMode.viewMode ||
                    (state.sundayClosed ?? false) ||
                    (tabState.sundayHours ?? false),
                closed: (state.sundayClosed ?? false) ||
                    (tabState.sundayHours ?? false),
                updateHours: (value) {
                  state.setSundayClose(ref, value);
                  tabStateNotifier.setSundayClose(value);
                },
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
