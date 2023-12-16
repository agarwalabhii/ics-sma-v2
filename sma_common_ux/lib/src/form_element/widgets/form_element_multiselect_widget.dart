import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/form_element/controllers/form_element_dropdown_notifier.dart';
import 'package:sma_common_ux/src/widgets/expanded_row.dart';
import 'package:sma_local_data/sma_local_data.dart';

import 'module_domain_tuples.dart';

///This Widget excepts a ModuleDomainTuple to gain access to the
///FormElements needed for this selection.
class FormElementMultiSelectWidget extends ConsumerStatefulWidget {
  ///The type of module domain tuple found in the
  final ModuleDomainTuple tuple;

  ///The title of the Dialog
  final String title;

  ///The max number of selection you can make
  ///The default is true
  final int maxSelect;

  ///isVisibile allows the widget to not be visible
  ///Default is true.
  final bool isVisible;

  ///setValue callback to get the multistring back
  final Function(MultiString) setValue;

  ///The initial value when the widget loads or reloads.
  final MultiString initialValue;

  final bool readOnly;

  const FormElementMultiSelectWidget(this.tuple,
      {required this.title,
      required this.initialValue,
      this.maxSelect = 1,
      this.isVisible = true,
      this.readOnly = false,
      required this.setValue,
      super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FormElementMultiSelectWidgetState();
}

class _FormElementMultiSelectWidgetState
    extends ConsumerState<FormElementMultiSelectWidget> {
  MultiString _selected = MultiString();
  final List<InfoElement> _infoElementList = [];
  ScrollController sc = ScrollController();

  @override
  void initState() {
    if (_selected.listValues.contains("")) {
      _selected = MultiString();
    }
    if (widget.initialValue.listValues.contains("")) {
      _selected = MultiString();
      super.initState();
      return;
    }
    _selected.addValues(widget.initialValue.listValues);
    super.initState();
  }
  
  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_selected.listValues.contains("")) {
      _selected = MultiString();
    }
    if (widget.initialValue.listValues.contains("")) {
      _selected = MultiString();
      return;
    }
    _selected = MultiString();
    _selected.addValues(widget.initialValue.listValues);
  }

  void _buildElementList(List<FormElement> list) {
    _infoElementList.clear();
    for (FormElement item in list) {
      if (item.active!) {
        final element = InfoElement(
            code: item.code!,
            label: item.label!,
            selected: _selected.listValues.contains(item.code));
        _infoElementList.add(element);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final listAsync = ref.watch(formElementDropdownProvider(widget.tuple));
    return listAsync.when(
      data: (list) {
        _buildElementList(list);
        return Visibility(
          visible: widget.isVisible,
          child: GestureDetector(
            onTap: () {
              widget.readOnly
                  ? {}
                  : _buildDialog(
                      context, widget.title, _infoElementList, _selected);
            },
            child: _getDisplayWidget(),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, __) => _emptyDropdownButton("Error"),
    );
  }

  Widget _getDisplayWidget() {
    Widget retWidget = Container();
    if (_selected.length > 0 && _selected.listValues.first != "") {
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
                  widget.title,
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

  Widget mainWidget() {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: widget.readOnly ? Colors.grey[200] : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 14, 0, 8),
        child: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildChips() {
    List<Widget> output = [];
    for (int i = 0; i < _infoElementList.length; i++) {
      final InfoElement item = _infoElementList[i];
      if (item.selected) {
        output.add(
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 14, 4, 10),
            child: Tooltip(
              message: item.code,
              child: Chip(
                shadowColor: Colors.grey[700],
                label: Text(item.label),
                deleteIcon: const Icon(Icons.close),
                onDeleted: () {
                  widget.readOnly
                      ? {}
                      : setState(() {
                          _infoElementList[i].selected = false;
                          _selected.removeValue(item.code);
                          widget.setValue(_selected);
                        });
                },
              ),
            ),
          ),
        );
      }
    }
    return output;
  }

  Future _buildDialog(BuildContext context, String title,
      List<InfoElement> list, MultiString selList) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setS) {
            return AlertDialog(
              scrollable: true,
              title: Text(title),
              content: Container(
                height: 280,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Scrollbar(
                  controller: sc,
                  child: ListView.builder(
                    controller: sc,
                    itemCount: _infoElementList.length,
                    itemBuilder: (context, index) {
                      bool contained = _infoElementList[index].selected;
                      return GestureDetector(
                        child: ExpandedRow(
                          padding: const EdgeInsets.all(8.0),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                _infoElementList[index].label,
                                style: contained
                                    ? TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue[900],
                                      )
                                    : const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          if (!_selected.listValues
                                  .contains(_infoElementList[index].code) &&
                              _selected.length >= widget.maxSelect) {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Max number of selections made."),
                            ));
                            return;
                          }

                          _infoElementList[index].selected =
                              !_infoElementList[index].selected;
                          if (_infoElementList[index].selected) {
                            setS(() {
                              _selected.addValue(_infoElementList[index].code);
                            });
                          } else {
                            setS(() {
                              _selected
                                  .removeValue(_infoElementList[index].code);
                            });
                          }
                          setState(() {
                            widget.setValue(_selected);
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

  DropdownButton _emptyDropdownButton(String value) {
    return DropdownButton<String>(
      value: value,
      icon: const Icon(Icons.arrow_downward),
      onChanged: (value) {},
      items: const [
        DropdownMenuItem<String>(
          value: "",
          child: Text(""),
        ),
      ],
    );
  }
}

class InfoElement {
  String code;
  String label;
  bool selected;

  InfoElement({this.code = "", this.label = "", this.selected = false});
}
