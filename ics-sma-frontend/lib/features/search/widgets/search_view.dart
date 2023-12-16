import 'package:anet/common/nav_rail/nav_rail_providers.dart';
import 'package:anet/common/routes/routes.dart';
import 'package:anet/common/widgets/feature/feature_widget.dart';
import 'package:anet/features/search/state/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_common_ux/ux.dart';

class FirmSearch extends ConsumerStatefulWidget {
  const FirmSearch({super.key});

  @override
  ConsumerState<FirmSearch> createState() => _FirmSearchState();
}

class _FirmSearchState extends ConsumerState<FirmSearch> {
  final fontWeight = FontWeight.w400;
  SearchFirmChoice dropdownValue = SearchFirmChoice.firmId;
  List<SearchResultModel> results = [];
  late PlutoGridStateManager plutoStateManager;

  @override
  void initState() {
    super.initState();
    final listResultProvider = ref.read(searchResultsListStateProvider);
    plutoStateManager = PlutoGridStateManager(
        columns: _getFirmGridColumns(),
        rows: _getFirmGridRows(
            listResultProvider.isNotEmpty ? listResultProvider : []),
        scroll: PlutoGridScrollController(),
        gridFocusNode: FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    final searchTypeProvider = ref.watch(searchTypeStateProvider);
    final searchTypeNotifier = ref.watch(searchTypeStateProvider.notifier);
    final searchStringNotifier = ref.watch(searchStringStateProvider.notifier);
    final listResultProvider =
        ref.watch(searchResultsListStateProvider.notifier);

    final textFieldBuilder = TextFormFieldBuilder();
    final navNotifier = ref.watch(navRailProvider.notifier);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                        value: searchTypeProvider,
                        items: SearchFirmChoice.values
                            .map<DropdownMenuItem<SearchFirmChoice>>(
                          (SearchFirmChoice value) {
                            return DropdownMenuItem<SearchFirmChoice>(
                              value: value,
                              child: Text(value.label),
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          searchTypeNotifier.state = value!;
                        })),
                Flexible(
                  flex: 10,
                  child: textFieldBuilder.build(
                    label: "Search",
                    initialValue: searchStringNotifier.state,
                    onChanged: (value) {
                      searchStringNotifier.state = value;
                    },
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: SizedBox(
                    child: ElevatedButton(
                      child: const Text("Search",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        final String searchQuery = searchStringNotifier.state;
                        
                        plutoStateManager.refRows.clear();
                        results.clear();
                        _runSearch(searchQuery).then((value) {
                          setState(() {
                            results = value;
                          });
                          
                          plutoStateManager.refRows
                              .addAll(_getFirmGridRows(results));
                          listResultProvider.state = results;
                        });
                      },
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
        Expanded(
          child: PlutoGrid(
              onLoaded: (e) {
                plutoStateManager = e.stateManager;
              },
              configuration: const PlutoGridConfiguration(
                columnSize: PlutoGridColumnSizeConfig(
                  autoSizeMode: PlutoAutoSizeMode.scale,
                ),
              ),
              mode: PlutoGridMode.selectWithOneTap,
              onSelected: (event) {
                final searchTypeProvider = ref.watch(searchTypeStateProvider);
                if (searchTypeProvider.label == "Surv Id") {
                  navNotifier.changeIndex(2);
                  Navigator.pushReplacementNamed(
                    context,
                    Routes.survPage,
                    arguments: PageArguments(
                        feature: Feature.surv,
                        featureMode: FeatureMode.view,
                        id: event.row?.cells['firm_id']?.value),
                  );
                  return;
                }
                navNotifier.changeIndex(1);
                Navigator.pushReplacementNamed(
                  context,
                  Routes.firmPage,
                  arguments: PageArguments(
                      feature: Feature.firm,
                      featureMode: FeatureMode.view,
                      id: event.row?.cells['firm_id']?.value),
                );
              },
              columns: _getFirmGridColumns(),
              rows: _getFirmGridRows(listResultProvider.state)),
        ),
      ],
    );
  }

  Future<List<SearchResultModel>> _runSearch(String searchQuery) async {
    SearchRepository repo = SearchRepository();
    final searchTypeProvider = ref.watch(searchTypeStateProvider);
    List<SearchResultModel> list = [];
    final criteria = SearchCriteria(
        type: getSearchType(searchTypeProvider), value: searchQuery);
    list = await repo.search(
      ref,
      criteria,
    );

    setState(() {
      results = list;
    });
    return list;
  }

  SearchType getSearchType(SearchFirmChoice choice) {
    switch (choice) {
      case SearchFirmChoice.firmId:
        return SearchType.firmId;
      case SearchFirmChoice.firmName:
        return SearchType.firmName;
      case SearchFirmChoice.survId:
        return SearchType.survId;
      default:
        break;
    }
    return SearchType.firmId;
  }

  List<PlutoColumn> _getFirmGridColumns() {
    final List<PlutoColumn> cols = [];

    cols.add(
      PlutoColumn(
        title: "Firm Id",
        field: 'firm_id',
        type: PlutoColumnType.text(),
        readOnly: true,
        backgroundColor: Colors.blueGrey,
        titleSpan: TextSpan(
          children: [
            WidgetSpan(
              child: Text(
                "Firm Id",
                style: TextStyle(color: Colors.white, fontWeight: fontWeight),
              ),
            ),
          ],
        ),
      ),
    );
    cols.add(PlutoColumn(
      title: "Firm Name",
      field: 'firm_name',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "Firm Name",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "Surv Id",
      field: 'surv_id',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "Surv ID",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "Address",
      field: 'address',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "Address",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "City",
      field: 'city',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "City",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "State",
      field: 'state',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "State",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "Zip",
      field: 'zip',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "Zip",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "Assign. Code",
      field: 'code',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "Assign. Code",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "Prim. Business Type",
      field: 'pri_business_type',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "Prim. Business Type",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));
    cols.add(PlutoColumn(
      title: "Tier",
      field: 'tier',
      type: PlutoColumnType.text(),
      readOnly: true,
      backgroundColor: Colors.blueGrey,
      titleSpan: TextSpan(
        children: [
          WidgetSpan(
            child: Text(
              "Tier",
              style: TextStyle(color: Colors.white, fontWeight: fontWeight),
            ),
          ),
        ],
      ),
    ));

    return cols;
  }

  List<PlutoRow> _getFirmGridRows(List<SearchResultModel> data) {
    List<PlutoRow> rows = [];

    for (int i = 0; i < data.length; i++) {
      rows.add(PlutoRow(cells: {
        'firm_id': PlutoCell(value: data[i].firmId ?? ""),
        'firm_name': PlutoCell(value: data[i].firmName ?? ""),
        'surv_id': PlutoCell(value: data[i].lastSurvId ?? ""),
        'address': PlutoCell(value: data[i].address ?? ""),
        'city': PlutoCell(value: data[i].city ?? ""),
        'state': PlutoCell(value: data[i].state ?? ""),
        'zip': PlutoCell(value: data[i].zipCode ?? ""),
        'code': PlutoCell(value: data[i].assignCode ?? ""),
        'pri_business_type':
            PlutoCell(value: data[i].primaryBusinessType ?? ""),
        'tier': PlutoCell(value: ""),
      }));
    }
    return rows;
  }
}
