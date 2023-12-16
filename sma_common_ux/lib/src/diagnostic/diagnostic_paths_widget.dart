import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class DiagnosticPathsGridTile extends ConsumerWidget {
  const DiagnosticPathsGridTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    copyToClipboard(String path, String name) {
      Clipboard.setData(ClipboardData(text: path));
      final snackBar =
          SnackBar(content: Text('$name directory path copied to clipboard.'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Card(
      color: Colors.lime,
      child: GridTile(
        footer: const GridTileBar(
          backgroundColor: Colors.limeAccent,
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.folder),
          ),
          title: Text(
            'Application Directories',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          subtitle: Text("Flutter data directories",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        child: ListView(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              title: const Text('Documents'),
              trailing: IconButton(
                  onPressed: () async => copyToClipboard(
                      (await getApplicationDocumentsDirectory()).path,
                      "Documents"),
                  icon: const Icon(
                    Icons.content_copy,
                    color: Colors.black54,
                  )),
            ),
            ListTile(
              title: const Text('Support'),
              trailing: IconButton(
                  onPressed: () async => copyToClipboard(
                      (await getApplicationSupportDirectory()).path, "Support"),
                  icon: const Icon(
                    Icons.content_copy,
                    color: Colors.black54,
                  )),
            ),
            ListTile(
              title: const Text('Temporary'),
              trailing: IconButton(
                  onPressed: () async => copyToClipboard(
                      (await getTemporaryDirectory()).path, "Temporary"),
                  icon: const Icon(
                    Icons.content_copy,
                    color: Colors.black54,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
