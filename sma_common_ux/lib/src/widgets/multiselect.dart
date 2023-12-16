import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MultiSelector extends ConsumerStatefulWidget {
  ///This is the Title that shows in the pop up.
  final String title;

  ///This is the list that appears in the pop up.
  final List<String> selectionList;

  ///SelectionList is the list of selected items.
  final List<String> selectedList;

  ///The width of the field for layout
  final double width;

  ///Callback function to allow the user to delete an
  ///item from the selected list
  final Function(String) deletePressed;

  ///Callback function that allows the user to
  ///add an item to the selectionList.
  final Function(String) addPressed;

  final int maxSelect;

  const MultiSelector({
    super.key,
    required this.width,
    required this.deletePressed,
    required this.addPressed,
    required this.selectionList,
    required this.selectedList,
    required this.title,
    this.maxSelect = 1,
  });

  @override
  ConsumerState<MultiSelector> createState() => _MultiSelectorState();
}

class _MultiSelectorState extends ConsumerState<MultiSelector> {
  List<String> selList = [];
  ScrollController sc = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 4, 0, 1),
            child: Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 1, left: 8, bottom: 2, right: 8),
            child: GestureDetector(
              onTap: () {
                _buildDialog(context, widget.title, widget.selectionList,
                    widget.selectedList);
              },
              child: widget.selectedList.isNotEmpty
                  ? Container(
                      width: widget.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Wrap(
                        spacing: 8,
                        children: _buildChips(widget.selectedList),
                      ),
                    )
                  : Container(
                      width: widget.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(height: 35, width: widget.width),
                      ),
                    ),
            ),
          ),
        ],
      ),
    ]);
  }

  List<Widget> _buildChips(List<String> list) {
    List<Widget> output = [];

    for (String item in list) {
      output.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Chip(
          shadowColor: Colors.grey[700],
          label: Text(item),
          deleteIcon: const Icon(Icons.close),
          onDeleted: () {
            widget.deletePressed(item);
            selList.remove(item);
          },
        ),
      ));
    }
    return output;
  }

  Future _buildDialog(BuildContext context, String title, List<String> list,
      List<String> selList) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
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
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: selList.contains(list[index])
                            ? Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        list[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(list[index]),
                                    ),
                                  ),
                                ],
                              ),
                        onTap: () {
                          setState(() {
                            if (selList.contains(list[index])) {
                              widget.deletePressed(list[index]);
                              selList.remove(list[index]);
                            } else {
                              // selList.add(list[index]);
                              widget.addPressed(list[index]);
                            }
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
