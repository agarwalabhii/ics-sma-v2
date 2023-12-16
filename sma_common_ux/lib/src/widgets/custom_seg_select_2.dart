import 'package:flutter/material.dart';

enum SegState {
  yes,
  no,
  na;

  static SegState fromBool(bool? value) {
    if (value == null) {
      return SegState.na;
    } else {
      if (value) {
        return SegState.yes;
      }
    }
    return SegState.no;
  }

  static bool? toBool(SegState value) {
    switch (value) {
      case SegState.yes:
        return true;
      case SegState.no:
        return false;
      default:
        return null;
    }
  }
}

class SegSelector2 extends StatefulWidget {
  final bool? initialValue;
  final Function(bool?) setValue;
  final bool readOnly;
  const SegSelector2(
      {super.key,
      required this.initialValue,
      required this.setValue,
      this.readOnly = false});

  @override
  State<StatefulWidget> createState() => _SegSelectorState();
}

class _SegSelectorState extends State<SegSelector2> {
  late SegState _value;

  @override
  void initState() {
    _value = SegState.fromBool(widget.initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                      border: _value == SegState.yes
                          ? Border.all(color: Colors.green.withOpacity(.2))
                          : Border.all(color: Colors.transparent),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.lerp(
                                _value == SegState.yes
                                    ? Colors.green
                                    : Colors.grey,
                                Colors.white,
                                .2) as Color,
                            Color.lerp(Colors.white, Colors.green[100], .2)
                                as Color
                          ]),
                      color: _value == SegState.yes
                          ? Colors.green
                          : Colors.transparent,
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
                  widget.readOnly
                      ? () {}
                      : setState(() {
                          _value = SegState.yes;
                          widget.setValue(SegState.toBool(_value));
                        });
                }),
            GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: AnimatedContainer(
                      duration: duration,
                      width: 50,
                      decoration: BoxDecoration(
                        border: _value == SegState.no
                            ? Border.all(color: Colors.purple.withOpacity(.2))
                            : Border.all(color: Colors.transparent),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.lerp(
                                  _value == SegState.no
                                      ? Colors.purple
                                      : Colors.grey,
                                  Colors.white,
                                  .2) as Color,
                              Color.lerp(Colors.white, Colors.purple[100], .2)
                                  as Color
                            ]),
                        color: _value == SegState.no
                            ? Colors.purple
                            : Colors.transparent,
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
                  widget.readOnly
                      ? () {}
                      : setState(() {
                          _value = SegState.no;
                          widget.setValue(SegState.toBool(_value));
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
                      border: _value == SegState.na
                          ? Border.all(color: Colors.grey.withOpacity(.2))
                          : Border.all(color: Colors.transparent),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.lerp(
                                _value == SegState.na
                                    ? Colors.grey[600]
                                    : Colors.grey[600],
                                Colors.white,
                                .2) as Color,
                            Color.lerp(Colors.grey[200], Colors.grey[400], .2)
                                as Color
                          ]),
                      color: _value == SegState.na
                          ? Colors.grey
                          : Colors.transparent,
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
                  widget.readOnly
                      ? () {}
                      : setState(() {
                          _value = SegState.na;
                          widget.setValue(SegState.toBool(_value));
                        });
                }),
          ],
        ),
      ),
    );
  }
}
