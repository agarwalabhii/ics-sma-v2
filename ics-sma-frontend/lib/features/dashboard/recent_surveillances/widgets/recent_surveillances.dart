import 'package:anet/common/nav_rail/nav_rail_providers.dart';
import 'package:anet/common/routes/routes.dart';
import 'package:anet/common/widgets/feature/feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sma_local_data/sma_local_data.dart';

Color mainBlueColor = const Color(0xFF203864);
Color mainBlueBackground = const Color(0xFF637A98);
Color mainLightBlueBackground = const Color(0xFFE5ECF7);

// ignore: must_be_immutable
class RecentSurveillences extends ConsumerWidget {
  RecentSurveillences({super.key});

  List<bool> _isExpanded = [];
  List<String> selectedDrop = ["attachment", "add", "comment"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentSurvsRepository = ref.watch(recentSurvsRepositoryProvider);

    return recentSurvsRepository.when(
        error: (err, stack) => logAsyncError("RecentSurveillences", err, stack),
        loading: () => const Center(
            child: SizedBox(
                height: 120, width: 120, child: CircularProgressIndicator())),
        data: (data) {
          _isExpanded = List.generate(data.length, (_) => false);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.width / 32,
              decoration: BoxDecoration(
                color: mainLightBlueBackground,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "RECENT SURVEILLANCES",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Table(
                          columnWidths: const <int, TableColumnWidth>{
                            0: FixedColumnWidth(85),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(),
                            3: FlexColumnWidth(),
                            4: FlexColumnWidth(),
                          },
                          children: [
                            // Table row container HEADER
                            TableRow(
                              children: [
                                InkWell(
                                  onTap: () {
                                    debugPrint("I have been hit.");
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        Text(
                                          "ID",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        "FIRM NAME",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  "PERFORMED ON",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                const Text(
                                  "CREATOR",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                const Text(
                                  "ACTIONS",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      //Spacer to align the expand button
                      const SizedBox(
                        width: 65,
                      )
                    ],
                  ),
                  Expanded(
                    child: ExpandPanel(
                      data: data,
                      isExpanded: _isExpanded,
                      selectedDrop: selectedDrop,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class ExpandPanel extends StatefulWidget {
  const ExpandPanel(
      {super.key,
      required this.data,
      required this.isExpanded,
      required this.selectedDrop});
  final List<RecentSurvsViewData> data;
  final List<bool> isExpanded;
  final List<String> selectedDrop;

  @override
  State<ExpandPanel> createState() => _ExpandPanelState();
}

class _ExpandPanelState extends State<ExpandPanel> {
  List<bool> _isExpanded = [];

  @override
  Widget build(BuildContext context) {
    _isExpanded = widget.isExpanded;
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2 - 45,
      child: _buildPanel(),
    );
  }

  Widget _buildPanel() {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int i, bool isExpanded) {
          setState(() {
            _isExpanded[i] = !isExpanded;
          });
        },
        children: getEachPanel(widget.data),
      ),
    );
  }

  List<ExpansionPanel> getEachPanel(List<RecentSurvsViewData> model) {
    final List<String> dropDownItems = [
      "attachment",
      "add",
      "comment",
    ];
    final Map<String, Icon> iconsDropItems = {
      "attachment": const Icon(Icons.attachment),
      "add": const Icon(Icons.add),
      "comment": const Icon(Icons.comment),
    };
    String selectedDrop = dropDownItems.first;
    List<ExpansionPanel> list = [];
    for (int i = 0; i < model.length; i++) {
      final item = model[i];
      list.add(
        ExpansionPanel(
          // canTapOnHeader: true,
          headerBuilder: (context, isExpanded) {
            return Table(
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(85),
                1: FlexColumnWidth(),
                2: FlexColumnWidth(),
                3: FlexColumnWidth(),
                4: FlexColumnWidth(),
              },
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Consumer(
                        builder: (context, ref, child) {
                          final navNotifier =
                              ref.watch(navRailProvider.notifier);
                          return InkWell(
                            child: Text(
                              '${item.survId}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            onTap: () {
                              navNotifier.changeIndex(2);
                              Navigator.pushReplacementNamed(
                                context,
                                Routes.survPage,
                                arguments: PageArguments(
                                    feature: Feature.surv,
                                    featureMode: FeatureMode.view,
                                    id: item.survId!),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Consumer(
                        builder: (context, ref, child) {
                          final navNotifier =
                              ref.watch(navRailProvider.notifier);
                          return InkWell(
                            child: Text(
                              item.name ?? 'N/A',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            onTap: () {
                              navNotifier.changeIndex(2);
                              Navigator.pushReplacementNamed(
                                context,
                                Routes.firmPage,
                                arguments: PageArguments(
                                    feature: Feature.firm,
                                    featureMode: FeatureMode.view,
                                    id: item.firmId ?? 0),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Text(
                      item.datePerformed == null ? "" :
                      DateFormat('MM/dd/yyyy').format(item.datePerformed!),
                      style: const TextStyle(fontSize: 12),
                    ),
                    const Text(
                      '<<creator>>', // TODO:
                      style: TextStyle(fontSize: 12),
                    ),
                    //Actions go here
                    DropdownButton<String>(
                      value: selectedDrop,
                      underline: Container(),
                      items: dropDownItems
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: iconsDropItems[value]!);
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedDrop = value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            );
          },
          body: Column(
            children: [
              Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FixedColumnWidth(85),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                  4: FlexColumnWidth(),
                  5: FlexColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "123 Main Street",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "McClean",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Fairfax",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "22314, VA",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "FIRM ID",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            '${item.firmId}',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "SURV. ID",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            '${item.survId}',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FOLLOW UP DATE",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            // '${item.assignmentCode}',
                            'item.data.perfdate',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PRODUCT CONTROL",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            // '${item.assignmentCode}',
                            'N',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "ASSIGN CODE",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            // '${item.assignmentCode}',
                            '${(item.survId)}',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          isExpanded: _isExpanded[i],
        ),
      );
    }
    return list;
  }
}
