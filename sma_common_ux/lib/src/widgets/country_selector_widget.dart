import 'package:sma_common_ux/ux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountrySelector extends ConsumerWidget {
  /// The initial value should be set when the widget loads
  /// including when readOnly is true
  final String? initialValue;
  /// Determines if this widget is viewable to the user
  /// Default is true
  final bool isVisible;
  /// Determines if this widget is in a form of edit mode.
  final bool readOnly;
  /// The title of the field
  final String label;
  /// This callback sets the selected country as the functions
  /// String
  final ValueChanged<String?>? setValue;

  /// A widget to select from the list of all countries.
  /// Currently the list is static.
  const CountrySelector(
      {super.key,
      this.initialValue = "United States",
      this.isVisible = true,
      this.readOnly = false,
      required this.label,
      required this.setValue});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedProvider = ref.watch(countryListProvider.notifier);
    final selectedNotifier = ref.watch(countryListProvider.notifier);
    return readOnly
        ? _readOnlyTextField(label, initialValue, isVisible)
        : Visibility(
            visible: isVisible,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  fillColor: Colors.white,
                  label: Text(label,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ))),
              value: selectedProvider.state,
              items: getItems(),
              onChanged: (value) {
                selectedNotifier.state = value ?? initialValue!;
                setValue ?? (value) {};
              },
            ),
          );
  }

  Widget _readOnlyTextField(
      String label, String? initialValue, bool isVisible) {
    final textFieldBuilder = TextFormFieldBuilder(readOnly: true);
    return textFieldBuilder.build(
        label: label,
        initialValue: initialValue ?? "",
        onChanged: null,
        isVisible: isVisible);
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> items = [];
    for (String name in Strings.countryList) {
      items.add(DropdownMenuItem(value: name, child: Text(name)));
    }

    return items;
  }
}

final countryListProvider = StateProvider<String>((ref) => "United States");
