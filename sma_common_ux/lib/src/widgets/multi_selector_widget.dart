import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/ux.dart';

class MultiSelectorWidget extends ConsumerStatefulWidget {
  /// The main list of selectable content
  final List<String> mainList;

  /// The title of the widget
  final String label;

  /// Determines if this widget is visible to the user
  /// default is false
  final bool isVisibile;

  /// Callback function to return the selected values.
  final Function(String, List<String>)? setValue;

  /// The initial value that is displayed
  final String? initialValue;

  /// Sets the readonly property
  final bool readOnly;

  /// Sets the maximum number of items that can be selected.
  final int max;

  ///Text to show before a selection is made
  final String? preSelectionText;

  const MultiSelectorWidget(
      {super.key,
      required this.mainList,
      required this.label,
      this.isVisibile = true,
      this.setValue,
      this.initialValue,
      this.preSelectionText,
      this.readOnly = false,
      this.max = 1});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MultiSelectorWidgetState();
}

class _MultiSelectorWidgetState extends ConsumerState<MultiSelectorWidget> {
  final List<String> _selectedList = [];
  ScrollController sc = ScrollController();

  @override
  void initState() {
    if (widget.initialValue != null) {
      _selectedList.addAll(widget.initialValue!.split(','));
    }
    super.initState();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue == null) return;
    if (_selectedList.contains("") && _selectedList.length <= 1) {
      _selectedList.clear();
    }
    if (widget.initialValue!.contains("") && widget.initialValue!.length <= 1) {
      _selectedList.clear();
      return;
    }
    _selectedList.clear();
    _selectedList.addAll(widget.initialValue!.split(','));
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: widget.isVisibile,
        child: GestureDetector(
      child: _getDisplayWidget(),
      onTap: () {
        widget.readOnly ? {} : _buildDialog(context, widget.mainList);
      },
    ));
  }

  Widget _getDisplayWidget() {
    Widget retWidget = Container();
    if (_selectedList.isNotEmpty && _selectedList.first != "") {
      retWidget = Stack(
        clipBehavior: Clip.none,
        children: [
          ExpandedRow(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:
                      widget.readOnly ? Colors.grey[200] : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey),
                ),
                child: Wrap(
                  children: _buildChips(),
                ),
              ),
            ],
          ),
          Positioned(
            top: -2,
            left: 14,
            child: Container(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: FittedBox(
                child: Text(
                  widget.label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else if (widget.preSelectionText != null &&
        widget.preSelectionText != "") {
      retWidget = Stack(
        clipBehavior: Clip.none,
        children: [
          ExpandedRow(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:
                      widget.readOnly ? Colors.grey[200] : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey),
                ),
                child: Wrap(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 4, 10),
                    child: Text(
                      widget.preSelectionText ?? "",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
          Positioned(
            top: -2,
            left: 14,
            child: Container(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: FittedBox(
                child: Text(
                  widget.label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      retWidget = mainWidget();
    }

    return retWidget;
  }

  //The widget seen when the screen first loads or
  //no items are in _selectedList
  Widget mainWidget() {
    return Container(
      height: 53,
      decoration: BoxDecoration(
        color: widget.readOnly ? Colors.grey[200] : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 14, 0, 8),
        child: Text(
          widget.label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  //The chips seen in the main widget
  List<Widget> _buildChips() {
    List<Widget> output = [];
    for (String item in _selectedList) {
      output.add(
        Padding(
            padding: const EdgeInsets.fromLTRB(4, 10, 4, 10),
            child: Chip(
              shadowColor: Colors.grey[700],
              label: Text(item),
              deleteIcon: const Icon(Icons.close),
              onDeleted: () {
                widget.readOnly
                    ? {}
                    : setState(() {
                        _selectedList.remove(item);
                        if (_selectedList.isEmpty) return;
                        widget.setValue!(
                            _selectedList.join(','), _selectedList);
                      });
              },
            )),
      );
    }
    return output;
  }

  //The popup that user interacts with to select items
  Future _buildDialog(BuildContext context, List<String> list) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setPopupState) {
            return AlertDialog(
              scrollable: true,
              title: Text(widget.label),
              content: Container(
                height: 280,
                width: 150,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Scrollbar(
                  controller: sc,
                  child: ListView.builder(
                    controller: sc,
                    itemCount: list.length,
                    itemBuilder: (listContext, index) {
                      bool contained = _selectedList.contains(list[index]);
                      return GestureDetector(
                        child: ExpandedRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              list[index],
                              style: contained
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[900])
                                  : const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                            ),
                          ),
                        ]),
                        onTap: () {
                          if (!_selectedList.contains(list[index]) &&
                              _selectedList.length >= widget.max) {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Max Number of selections made"),
                            ));
                            return;
                          }
                          if (_selectedList.contains(list[index])) {
                            setPopupState(() {
                              _selectedList.remove(list[index]);
                            });
                          } else {
                            setPopupState(() {
                              _selectedList.add(list[index]);
                            });
                          }
                          setState(() {
                            if (_selectedList.isEmpty) return;
                            widget.setValue!(
                                _selectedList.join(','), _selectedList);
                          });
                        },
                      );
                    },
                  ),
                ),
              ),
            );
          });
        });
  }
}
