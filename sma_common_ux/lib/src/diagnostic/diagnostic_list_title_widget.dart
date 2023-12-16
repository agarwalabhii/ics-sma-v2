

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiagnosticListTileWidget extends ConsumerStatefulWidget {
  const DiagnosticListTileWidget({required this.title, required this.command, super.key});

  final String title;
  final Future<int> Function(Function(int) countFunc) command;

  @override
  ConsumerState<DiagnosticListTileWidget> createState() =>
      _DiagnosticListTileState();
}

class _DiagnosticListTileState
    extends ConsumerState<DiagnosticListTileWidget> {
  var _running = false;
  var _count = 0;
  TextStyle? _textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          Text(widget.title),
          Text("$_count", style: _textStyle),
        ],
      ),
      trailing: IconButton(
        onPressed: (_running) ? null : () async  {
          if (_running) {
            return;
          }
          setState(() {
            _running = true;
            _count = 0;
            _textStyle = null;
          });
          countFunc(count) {
            setState(() {
              _count = count;
            });
          }
          final completedCount = await widget.command(countFunc);
          setState(() {
            _count = completedCount;
            _textStyle = TextStyle(fontWeight: FontWeight.bold);
            _running = false;
          });
        },
        icon: const Icon(
          Icons.cloud_sync,
          color: Colors.black54,
        )),
    );
  }
}
