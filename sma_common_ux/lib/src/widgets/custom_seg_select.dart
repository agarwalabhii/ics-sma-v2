import 'package:flutter/material.dart';

class SegSelector extends StatefulWidget {
  final String text;
  final String value;
  final Function(String, String) onSelected;
  const SegSelector(
      {super.key,
      required this.text,
      required this.value,
      required this.onSelected});

  @override
  State<StatefulWidget> createState() => _SegSelectorState();
}

class _SegSelectorState extends State<SegSelector> {
  @override
  Widget build(BuildContext context) {
    String value = widget.value;
    TextStyle style = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );
    Duration duration = const Duration(milliseconds: 200);
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          children: [
            GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: AnimatedContainer(
                    duration: duration,
                    width: 50,
                    decoration: BoxDecoration(
                      border: value == "Y"
                          ? Border.all(color: Colors.green.withOpacity(.2))
                          : Border.all(color: Colors.transparent),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.lerp(
                                value == "Y" ? Colors.green : Colors.grey,
                                Colors.white,
                                .2) as Color,
                            Color.lerp(Colors.white, Colors.green[100], .2)
                                as Color
                          ]),
                      color: value == "Y" ? Colors.green : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Y",
                          style: style,
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    value == "Y" ? value = "" : value = "Y";
                    widget.onSelected(widget.text, value);
                  });
                }),
            GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: AnimatedContainer(
                      duration: duration,
                      width: 50,
                      decoration: BoxDecoration(
                        border: value == "N"
                            ? Border.all(color: Colors.purple.withOpacity(.2))
                            : Border.all(color: Colors.transparent),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.lerp(
                                  value == "N" ? Colors.purple : Colors.grey,
                                  Colors.white,
                                  .2) as Color,
                              Color.lerp(Colors.white, Colors.purple[100], .2)
                                  as Color
                            ]),
                        color:
                            value == "N" ? Colors.purple : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "N",
                            style: style,
                          ),
                        ),
                      )),
                ),
                onTap: () {
                  setState(() {
                    value == "N" ? value = "" : value = "N";
                    widget.onSelected(widget.text, value);
                  });
                }),
            Divider(
              color: Colors.grey[400],
              thickness: 4,
            ),
            GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: AnimatedContainer(
                    duration: duration,
                    width: 50,
                    decoration: BoxDecoration(
                      border: value == "N/A"
                          ? Border.all(color: Colors.grey.withOpacity(.2))
                          : Border.all(color: Colors.transparent),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.lerp(
                                value == "N/A"
                                    ? Colors.grey[600]
                                    : Colors.grey[600],
                                Colors.white,
                                .2) as Color,
                            Color.lerp(Colors.grey[200], Colors.grey[400], .2)
                                as Color
                          ]),
                      color: value == "N/A" ? Colors.grey : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "N/A",
                          style: style,
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    value == "N/A" ? value = "" : value = "N/A";
                    widget.onSelected(widget.text, value);
                  });
                }),
          ],
        ),
      ),
    );
  }
}
