import 'package:anet/common/widgets/surv_attachment_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomButtonsWidget extends ConsumerWidget {
  const BottomButtonsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildBottomButtons(Icons.attach_file, "Attachments",
                "File Attachments", true, context),
            _buildBottomButtons(Icons.replay_circle_filled_outlined, "History",
                "Change History for Surveillance", false, context),
            _buildBottomButtons(Icons.file_copy_outlined, "Assc. Records",
                "Find Associated Records.", false, context),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButtons(IconData icon, String text, String message,
      bool enabled, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if ("Attachments" == text) {
          showDialog(
              context: context,
              builder: ((BuildContext context) {
                return const SurvAttachmentDialog(
                  title: "SURVIELLANCE",
                );
              }));
        }
      },
      child: Tooltip(
        message: message,
        child: Column(
          children: [
            Icon(icon,
                size: 25, color: enabled ? Colors.blue[600] : Colors.grey),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
