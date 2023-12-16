import 'package:anet/features/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';

class DashboardFirms extends StatefulWidget {
  const DashboardFirms({super.key});

  @override
  State<DashboardFirms> createState() => _DashboardFirmsState();
}

class _DashboardFirmsState extends State<DashboardFirms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: mainLightBlueBackground,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        width: MediaQuery.of(context).size.width / 2,
        height: (MediaQuery.of(context).size.height / 2) - 48,
        child: Column(
          children: [
            const Center(
              child: Text(
                "Firms Near Me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
              child: Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FixedColumnWidth(200),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                  4: FixedColumnWidth(65),
                },
                children: const [
                  TableRow(
                    children: [
                      Text(
                        "FIRM NAME",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        "LAST SURV",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        "LAST SAMPLE",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        "UNDER ORDER",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(""),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: SingleChildScrollView(
                  child: ExpansionPanelList(
                    expansionCallback: (int i, bool isExpanded) {
                      setState(() {
                        _data[i].isExpanded = !isExpanded;
                      });
                    },
                    children: _data.map<ExpansionPanel>(
                      (Firm item) {
                        return ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return Table(
                                  columnWidths: const <int, TableColumnWidth>{
                                    0: FixedColumnWidth(200),
                                    1: FlexColumnWidth(),
                                    2: FlexColumnWidth(),
                                    3: FlexColumnWidth(),
                                  },
                                  children: [
                                    TableRow(
                                      children: [
                                        Text(
                                          item.name,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(item.lastSurv),
                                        Text(item.lastSample),
                                        Text(item.underOrder),
                                      ],
                                    )
                                  ]);
                            },
                            body: Table());
                      },
                    ).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Firm> _data = [
  Firm(
      name: "Thingymajigs",
      lastSample: "05/30/2023",
      underOrder: "Y",
      lastSurv: "06/26/2023"),
  Firm(
      name: "German Sausages",
      lastSample: "03/27/2023",
      underOrder: "Y",
      lastSurv: "05/26/2023")
];

class Firm {
  String name = "";
  String lastSurv = "";
  String lastSample = "";
  String underOrder = "";
  bool isExpanded = false;
  Firm(
      {required this.name,
      required this.lastSample,
      required this.lastSurv,
      required this.underOrder});
}
