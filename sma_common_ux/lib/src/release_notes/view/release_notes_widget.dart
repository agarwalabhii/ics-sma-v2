import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:package_info_plus/package_info_plus.dart';

const String dataFile = "assets/release_notes/release_notes.md";

Future<void> showReleaseNotesDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext ctx) {
      return const AlertDialog(
        scrollable: false,
        title: null,
        content: ReleaseNotesWidget(),
      );
    },
  );
}

class ReleaseNotesWidget extends StatefulWidget {
  const ReleaseNotesWidget({super.key});

  @override
  State<ReleaseNotesWidget> createState() => _ReleaseNotesState();
}

enum SegOptions {
  releaseNotes,
  developerNotes;

  Future<String> get appVersion async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return "**App Version ${packageInfo.version}**\n";
  }

  Future<String> get notes async {
    switch (this) {
      case releaseNotes:
        final list = await Future.wait([
          rootBundle.loadString('assets/release_notes/release_notes_header.md'),
          appVersion,
          rootBundle.loadString('assets/release_notes/release_notes.md')
        ]);
        return list.join("\n");
      case developerNotes:
        final list = await Future.wait([
          rootBundle
              .loadString('assets/release_notes/developer_notes_header.md'),
          appVersion,
          rootBundle.loadString('assets/release_notes/developer_notes.md')
        ]);
        return list.join("\n");
    }
  }
}

class _ReleaseNotesState extends State<ReleaseNotesWidget> {
  Set<SegOptions> selection = <SegOptions>{SegOptions.releaseNotes};

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 40;
    final height = MediaQuery.of(context).size.height - 10;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SegmentedButton<SegOptions>(
                  segments: const <ButtonSegment<SegOptions>>[
                    ButtonSegment<SegOptions>(
                        value: SegOptions.releaseNotes,
                        label: Text('Release Notes')),
                    ButtonSegment<SegOptions>(
                        value: SegOptions.developerNotes,
                        label: Text('Developer Notes')),
                  ],
                  selected: selection,
                  onSelectionChanged: (Set<SegOptions> newSelection) {
                    setState(() {
                      selection = newSelection;
                    });
                  },
                  multiSelectionEnabled: false,
                  selectedIcon: const Icon(Icons.view_agenda),
                ),
                const Divider(),
                _ReleaseNotesPanel(options: selection.first),
                const Divider(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Wrap(
                    spacing: 16,
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            selection.first.notes.then((value) {
                              Clipboard.setData(ClipboardData(text: value));
                            });
                          },
                          child: const Text('Copy')),
                      OutlinedButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Close')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ReleaseNotesPanel extends StatefulWidget {
  final SegOptions? options;

  const _ReleaseNotesPanel({required this.options});

  @override
  State<_ReleaseNotesPanel> createState() => _ReleaseNotesPanelState();
}

class _ReleaseNotesPanelState extends State<_ReleaseNotesPanel> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: widget.options?.notes,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Expanded(
                child: Markdown(
              shrinkWrap: true,
              data: snapshot.data ?? "",
              extensionSet: md.ExtensionSet.gitHubFlavored,
            ));
          }
          return const CircularProgressIndicator();
        });
  }
}
