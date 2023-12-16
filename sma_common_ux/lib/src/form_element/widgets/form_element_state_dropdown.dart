import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/form/textformfield_builder.dart';

class FormElementStateWidget extends ConsumerWidget {
  final String label;
  final String? initialValue;
  final Function(String?) onChanged;
  final bool readOnly;
  final int maxLength;

  const FormElementStateWidget(
      {required this.label,
      this.initialValue,
      required this.onChanged,
      required this.readOnly,
      this.maxLength = 50,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (readOnly) {
      return readOnlyTextField(label, initialValue);
    }
    return Padding(
        padding: const EdgeInsets.all(8),
        child: DropdownButtonFormField(
          value: initialValue,
          focusColor: Colors.transparent,
          decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              fillColor: Colors.white,
              label: Text(label,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ))),
          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 0,
          //value: controller.text != "" ? controller.text : null,
          // Array list of items
          items: _states.keys.toList().map((String stateName) {
            return DropdownMenuItem(
              value: _states[stateName],
              child: Text(stateName),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? e) => onChanged(e),
        ));
  }
}

const Map<String, String> _states = {
  "Alabama": "AL",
  "Alaska": "AK",
  "Arizona": "AZ",
  "Arkansas": "AR",
  "California": "CA",
  "Colorado": "CO",
  "Connecticut": "CT",
  "District of Columbia": "DC",
  "Delaware": "DE",
  "Florida": "FL",
  "Georgia": "GA",
  "Hawaii": "HI",
  "Idaho": "ID",
  "Illinois": "IL",
  "Indiana": "IN",
  "Iowa": "IA",
  "Kansas": "KS",
  "Kentucky": "KY",
  "Louisiana": "LA",
  "Maine": "ME",
  "Maryland": "MD",
  "Massachusetts": "MA",
  "Michigan": "MI",
  "Minnesota": "MN",
  "Mississippi": "MS",
  "Missouri": "MO",
  "Montana": "MT",
  "Nebraska": "NE",
  "Nevada": "NV",
  "New Hampshire": "NH",
  "New Jersey": "NJ",
  "New Mexico": "NM",
  "New York": "NY",
  "North Carolina": "NC",
  "North Dakota": "ND",
  "Ohio": "OH",
  "Oklahoma": "OK",
  "Oregon": "OR",
  "Pennsylvania": "PA",
  "Rhode Island": "RI",
  "South Carolina": "SC",
  "South Dakota": "SD",
  "Tennessee": "TN",
  "Texas": "TX",
  "Utah": "UT",
  "Vermont": "VT",
  "Virginia": "VA",
  "Washington": "WA",
  "West Virginia": "WV",
  "Wisconsin": "WI",
  "Wyoming": "WY",
  "Guam": "GU",
  "Puerto Rico": "PR",
  "American Samoa": "AS",
  "Virgin Islands": "VI",
};
