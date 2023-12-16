import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/presentation/location/view/physical_location_form_widget.dart';
import 'package:sma_local_data/sma_local_data.dart';

class PhysicalLocationWidget extends ConsumerWidget {
  final bool readyOnly;
  final Map<LocationLabels, String>? labels;
  final int refId;
  final LocationRefType refType;
  final bool includeGeoCoordinates;
  final bool includeCounty;

  const PhysicalLocationWidget(
      {required this.refId,
      required this.refType,
      required this.readyOnly,
      this.labels,
      this.includeGeoCoordinates = false,
      this.includeCounty = true,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PhysicalLocationFormWidget(
      readOnly: readyOnly,
      refId: refId,
      refType: refType,
      labels: labels,
      includeGeoCoordinates: includeGeoCoordinates,
      includeCounty: includeCounty,
    );
  }
}
