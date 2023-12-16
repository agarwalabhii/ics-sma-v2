import 'package:anet/features/surv/state/surv_shell_eggs_state.dart';
import 'package:anet/features/surv/tabs/providers/shell_egg_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class CoolerTransportWidget extends ConsumerStatefulWidget {
  final SurvShellEggState state;
  const CoolerTransportWidget({super.key, required this.state});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CoolerTransportWidgetState();
}

class _CoolerTransportWidgetState extends ConsumerState {
  @override
  void dispose() {
    coolerScrollerController.dispose();
    transportScrollerController.dispose();
    super.dispose();
  }

  final coolerScrollerController = ScrollController();
  final transportScrollerController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Coolers (${ref.read(coolerListProvider).length})",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 39, 111, 41),
                      ),
                      child: const Text(
                        "Add Cooler",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        if (ref.read(coolerListProvider).length >= 26) {
                          return;
                        }

                        ref.read(coolerListProvider).add(CoolersData());

                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                height: 200,
                child: Scrollbar(
                  controller: coolerScrollerController,
                  trackVisibility: true,
                  thumbVisibility: true,
                  child: ListView.builder(
                    itemCount: ref.watch(coolerListProvider).length,
                    controller: coolerScrollerController,
                    itemBuilder: (context, index) {
                      return CoolerWidget(
                          index: index,
                          removeFunc: () {
                            ref.read(coolerListProvider).removeAt(index);
                            setState(() {});
                          });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Transports (${ref.read(transportListProvider).length})",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 39, 111, 41),
                      ),
                      child: const Text(
                        "Add Transport",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        if (ref.read(transportListProvider).length >= 26) {
                          return;
                        }
                        ref.read(transportListProvider).add(TransportData());
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                height: 200,
                child: Scrollbar(
                  controller: transportScrollerController,
                  trackVisibility: true,
                  thumbVisibility: true,
                  child: ListView.builder(
                    itemCount: ref.read(transportListProvider).length,
                    controller: transportScrollerController,
                    itemBuilder: (context, index) {
                      return TransportWidget(
                          index: index,
                          removeFunc: () {
                            ref.read(transportListProvider).removeAt(index);
                            setState(() {});
                          });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CoolerWidget extends ConsumerWidget {
  final int index;
  final Function() removeFunc;
  const CoolerWidget({
    super.key,
    required this.index,
    required this.removeFunc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textFieldBuilder = TextFormFieldBuilder();
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey[300]!)),
      child: ExpansionTile(
        maintainState: true,
        title: Text("Cooler ${letterToNumberMap[index.toString()]}"),
        trailing: ElevatedButton(
          onPressed: () {
            removeFunc();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 165, 24, 14),
          ),
          child: const Text(
            "Remove",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textFieldBuilder.build(label: "Alias"),
          ),
          ExpandedRow(
            children: [
              textFieldBuilder.build(
                label: "Temperature 1 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
              textFieldBuilder.build(
                label: "Temperature 2 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
              textFieldBuilder.build(
                label: "Temperature 3 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
              textFieldBuilder.build(
                label: "Temperature 4 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
              textFieldBuilder.build(
                label: "Temperature 5 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransportWidget extends ConsumerWidget {
  final int index;
  final Function() removeFunc;
  const TransportWidget(
      {super.key, required this.index, required this.removeFunc});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textFieldBuilder = TextFormFieldBuilder();
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
      child: ExpansionTile(
        maintainState: true,
        title: Text("Transport ${letterToNumberMap[index.toString()]}"),
        trailing: ElevatedButton(
          onPressed: () {
            removeFunc();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 165, 24, 14),
          ),
          child: const Text(
            "Remove",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textFieldBuilder.build(
              label: "Alias",
            ),
          ),
          ExpandedRow(
            children: [
              textFieldBuilder.build(
                label: "Temperature 1 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
              textFieldBuilder.build(
                label: "Temperature 2 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
              textFieldBuilder.build(
                label: "Temperature 3 °F",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*(\.\d+)?$')),
                  LengthLimitingTextInputFormatter(3)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final Map<String, String> letterToNumberMap = {
  "0": "A",
  "1": "B",
  "2": "C",
  "3": "D",
  "4": "E",
  "5": "F",
  "6": "G",
  "7": "H",
  "8": "I",
  "9": "J",
  "10": "K",
  "11": "L",
  "12": "M",
  "13": "N",
  "14": "O",
  "15": "P",
  "16": "Q",
  "17": "R",
  "18": "S",
  "19": "T",
  "20": "U",
  "21": "V",
  "22": "W",
  "23": "X",
  "24": "Y",
  "25": "Z",
};
