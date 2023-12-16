import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/presentation/location/view/us_states.dart';
import 'package:sma_common_ux/src/presentation/location/viewmodel/physical_location_viewmodel.dart';
import 'package:sma_common_ux/src/widgets/number_formatter.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

typedef _Constaints = PhysicalLocationConstraints;

class PhysicalLocationFormWidget extends ConsumerWidget {
  final bool readOnly;
  final Map<LocationLabels, String>? labels;
  final int refId;
  final LocationRefType refType;
  final bool includeGeoCoordinates;
  final bool includeCounty;

  const PhysicalLocationFormWidget(
      {required this.readOnly,
      required this.refId,
      required this.refType,
      required this.includeGeoCoordinates,
      this.includeCounty = true,
      this.labels,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textFieldBuilder = TextFormFieldBuilder(readOnly: readOnly);
    final locationProvider =
        ref.watch(physicalLocationViewModelProvider(refId, refType));
    final locationNotifier =
        ref.watch(physicalLocationViewModelProvider(refId, refType).notifier);

    ref.listen(formActionProvider, (FormAction? previous, FormAction next) {
      if (previous != next && next.lifecyle == ActionLifeCycle.initiated) {
        locationNotifier.createOrUpdate();
      }
    });

    return locationProvider.when(
        error: (err, stack) =>
            logAsyncError("PhysicalLocationFormWidget", err, stack),
        loading: () => const SizedBox(
            width: 40, height: 40, child: CircularProgressIndicator()),
        data: (location) {
          return Column(children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: textFieldBuilder.build(
                  label: labels?[LocationLabels.address1] ?? 'Address 1',
                  initialValue: location.address1,
                  onChanged: (value) => locationNotifier.setAddress1(value),
                  maxLength: _Constaints.address1.maxLength,
                  readOnlyOverride: readOnly),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: textFieldBuilder.build(
                  label: labels?[LocationLabels.address2] ?? 'Address 2',
                  initialValue: location.address2,
                  onChanged: (value) => locationNotifier.setAddress2(value),
                  maxLength: _Constaints.address2.maxLength,
                  readOnlyOverride: readOnly),
            ),
            ExpandedRow(
              padding: const EdgeInsets.all(4.0),
              children: [
                textFieldBuilder.build(
                    label: labels?[LocationLabels.city] ?? 'City',
                    initialValue: location.city,
                    onChanged: (value) => locationNotifier.setCity(value),
                    maxLength: _Constaints.city.maxLength,
                    readOnlyOverride: readOnly),
                ExpandedRow(
                  children: [
                   MultiSelectorWidget(
                      key: ValueKey(location.stateCode),
                      mainList: usStates,
                      label: labels?[LocationLabels.state] ?? "State",
                      initialValue: location.stateCode,
                      readOnly: readOnly,
                      setValue: (value, list) => locationNotifier.setStateCode(value),
                    ),
                    textFieldBuilder.build(
                        label: labels?[LocationLabels.zipCode] ?? 'Zip Code',
                        initialValue: location.zipCode,
                        onChanged: (value) => locationNotifier.setZipCode(value),
                        maxLength: _Constaints.zipCode.maxLength,
                        inputFormatters: [
                          NumberFormatter(),
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(5)
                        ],
                        readOnlyOverride: readOnly),
                  ],
                ),
              ],
            ),
            ExpandedRow(
              isVisible: includeCounty || includeGeoCoordinates,
              children: [
                Visibility(
                  visible: includeCounty,
                  child: textFieldBuilder.build(
                      label: labels?[LocationLabels.county] ?? 'County',
                      initialValue: location.county,
                      onChanged: (value) => locationNotifier.setCounty(value),
                      readOnlyOverride: readOnly,
                      maxLength: _Constaints.county.maxLength),
                ),
                Visibility(
                  visible: includeGeoCoordinates,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: textFieldBuilder.build(
                        label: "Latitude",
                        initialValue:
                            int.parse(location.latitude ?? "0").toString(),
                        onChanged: (value) => locationNotifier.setLatitude(value),
                        maxLength: _Constaints.latitude.maxLength,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^-?\d{0,3}(\.\d{0,10})?$')),
                        ],
                        readOnlyOverride: readOnly),
                  ),
                ),
                Visibility(
                  visible: includeGeoCoordinates,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: textFieldBuilder.build(
                        label: "Longitude",
                      initialValue:
                          int.parse(location.longitude ?? "0").toString(),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^-?\d{0,3}(\.\d{0,10})?$')),
                      ],
                        onChanged: (value) => locationNotifier.setLongitude(value),
                        maxLength: _Constaints.longitude.maxLength,
                      readOnlyOverride: readOnly,
                    ),
                  ),
                ),
              ],
            ),
          ]);
        });
  }
}
