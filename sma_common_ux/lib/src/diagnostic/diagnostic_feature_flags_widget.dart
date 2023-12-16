import 'package:flutter/material.dart';
import 'package:sma_local_data/sma_local_data.dart';

class DiagnosticFeatureFlagsGridTile extends StatefulWidget {
  const DiagnosticFeatureFlagsGridTile({super.key});

  @override
  State<DiagnosticFeatureFlagsGridTile> createState() =>
      _DiagnosticFeatureFlagsGridTileState();
}

class _DiagnosticFeatureFlagsGridTileState
    extends State<DiagnosticFeatureFlagsGridTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: GridTile(
        footer: const GridTileBar(
          backgroundColor: Colors.blueGrey,
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.developer_board),
          ),
          title: Text(
            'Feature Flags',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          subtitle: Text("App feature flags to view user-experience styles",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        child: ListView.builder(
          itemCount: FeatureFlags.flags.length,
          itemBuilder: (BuildContext context, int index) {
            final flag = FeatureFlags.values[index];
            return ListTile(
              horizontalTitleGap: 30,
              title: Text(flag.title),
              trailing: Switch(
                  value: (FeatureFlags.flags)[index],
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                    setState(() {
                      FeatureFlags.toggleFlag(flag);
                    });
                  }),
            );
          },
        ),
      ),
    );
  }
}
