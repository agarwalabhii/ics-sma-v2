// ignore_for_file: depend_on_referenced_packages
import 'package:anet/common/widgets/attachment_data.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:sma_common_ux/ux.dart';

class AttachmentDialog extends StatefulWidget {
  final String title;
  const AttachmentDialog({required this.title, super.key});

  @override
  AttachmentDialogState createState() => AttachmentDialogState();
}

class AttachmentDialogState extends State<AttachmentDialog> {
  PlatformFile? file;

  /// for storing value of user selected checkbox
  List<bool> checklistValues = [];

  /// button text will be dynamic as per user selection
  String deleteButtonText = "";

  /// for delete button visibility logic
  bool deleteButtonVisibility = false;

  /// for edit and reupload button action logic
  bool actionButtonVisibility = true;

  String title = "Attachment";

  /// for final attachment data which is going to show user
  List<Widget> contentList = [];

  /// fetch data from API call
  List<AttachmentData> dbResults = [];

  /// convert API data to consumable list data
  List<Widget> convertedContentList = [];

  final renameAttachmentTextFieldBuilder = TextFormFieldBuilder();

  @override
  void initState() {
    loadResults(widget.title);
    super.initState();
  }

  /// load data using API
  void loadResults(String title) {
    int checklistIndex = 0;
    checklistValues.add(false);
    convertedContentList.add(generateAttachmentRow(
        "Document Name", "Size", Colors.blue, 0, context));

    if ("FIRM" == title) {
      // set dbResults from API here
      // AttachementData attachementData = AttachementData();
      // attachementData.documentName = "test";
      // attachementData.documentSize = "1 KB";
      // dbResults = [attachementData];
    }

    for (AttachmentData result in dbResults) {
      checklistIndex++;
      checklistValues.add(false);
      convertedContentList.add(generateAttachmentRow(result.documentName!,
          result.documentSize!, Colors.black, checklistIndex, context));
    }

    if (dbResults.isEmpty) {
      contentList = [
        const Text("No Files Attached", textAlign: TextAlign.center)
      ];
    } else {
      contentList = convertedContentList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: getTitleBar(context),
        content: SizedBox(
          height: MediaQuery.sizeOf(context).height / 2,
          width: MediaQuery.sizeOf(context).width / 2,
          child: ListView.builder(
              itemCount: contentList.length,
              itemBuilder: (context, int index) => contentList[index]),
        ));
  }

  Container getTitleBar(context) {
    return Container(
        color: Colors.blue[600],
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      pickFilesFromDevice(context);
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                IconButton(
                    onPressed: () => {Navigator.pop(context)},
                    icon: const Icon(Icons.close, color: Colors.white))
              ],
            ),
          ],
        ));
  }

  Future<void> pickFilesFromDevice(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      List<PlatformFile> platformfiles = result.files;
      for (PlatformFile platformfile in platformfiles) {
        checklistValues.add(false);
        AttachmentData attachementData = AttachmentData();
        attachementData.documentName = platformfile.name;
        attachementData.documentSize = "${platformfile.size / 1000} KB";
        attachementData.color = Colors.black;
        dbResults.add(attachementData);
      }

      refreshWidget();
      successDialogue();
      // ignore: use_build_context_synchronously
    }
  }

  Future successDialogue() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text("Success"),
              content: const Text("File uploaded successfully !!"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Close'),
                ),
              ],
            ));
  }

  Widget generateAttachmentRow(String documentName, String sizeText,
      Color color, int index, BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 300,
              child: CheckboxListTile(
                title: Text(
                  documentName,
                  style: TextStyle(color: color),
                ),
                checkColor: Colors.white,
                activeColor: Colors.blue[600],
                value: checklistValues[index],
                onChanged: (v) {
                  if (index == 0) {
                    setAllCheckboxVal(v!);
                  }

                  checklistValues[index] = v!;

                  setActionButtonVisibility();

                  refreshWidget();
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            SizedBox(
                width: 120,
                child: Text(sizeText, style: TextStyle(color: color))),
            Flexible(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Visibility(
                  visible: checklistValues[index] == true &&
                      index != 0 &&
                      actionButtonVisibility,
                  child: IconButton(
                      onPressed: () {
                        showRenameDialogue(documentName, index);
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.black,
                      )),
                ),
                Visibility(
                  visible: checklistValues[index] == true &&
                      index != 0 &&
                      actionButtonVisibility,
                  child: IconButton(
                      onPressed: () {
                        reuploadFile(index);
                      },
                      icon: const Icon(
                        Icons.upload,
                        color: Colors.black,
                      )),
                ),
              ],
            )),
            Visibility(
              visible: deleteButtonVisibility && index == 0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    backgroundColor: Colors.red,
                    minimumSize: const Size(150, 30)),
                onPressed: () {
                  deleteFile();
                },
                child: Text(
                  deleteButtonText,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
      ],
    );
  }

  void setAllCheckboxVal(bool val) {
    int index = 0;

    for (bool _ in checklistValues) {
      checklistValues[index] = val;

      index++;
    }
  }

  void setActionButtonVisibility() {
    setState(() {
      setDeleteButtonVisibility();
      actionButtonVisibility = true;
      int selectedCount = 0;
      if (checklistValues[0] == true) {
        actionButtonVisibility = false;
      } else {
        for (bool value in checklistValues) {
          if (value) {
            if (selectedCount > 0) {
              actionButtonVisibility = false;
              break;
            }
            selectedCount++;
          }
        }
      }
    });
  }

  void setDeleteButtonVisibility() {
    deleteButtonVisibility = false;
    if (checklistValues[0] == true) {
      deleteButtonText = "Delete All";
      deleteButtonVisibility = true;
    } else {
      if (checklistValues.contains(true)) {
        deleteButtonText = "Delete Selected";
        deleteButtonVisibility = true;
      }
    }
  }

  void refreshWidget() {
    setState(() {
      if (dbResults.isEmpty) {
        contentList = [
          const Text("No Files Attached", textAlign: TextAlign.center)
        ];
      } else {
        convertedContentList = [];
        convertedContentList.add(generateAttachmentRow(
            "Document Name", "Size", Colors.blue, 0, context));

        int checklistIndex = 1;
        for (AttachmentData result in dbResults) {
          convertedContentList.add(generateAttachmentRow(result.documentName!,
              result.documentSize!, Colors.black, checklistIndex, context));

          checklistIndex++;
        }
        contentList = convertedContentList;
      }
    });
  }

  void showRenameDialogue(String documentName, int index) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              content: renameAttachmentTextFieldBuilder.build(
                  label: "Rename Attachment",
                  initialValue: documentName,
                  onChanged: (value) {
                    dbResults[index - 1].documentName = value;
                  }),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => {
                    Navigator.pop(context, 'Save'),
                    refreshWidget(),
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: const Text("Success"),
                              content: const Text(
                                  "Document has been renamed successfully !!"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Close'),
                                ),
                              ],
                            ))
                  },
                  child: const Text('Save'),
                ),
              ],
            ));
  }

  Future<void> reuploadFile(int index) async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result != null) {
      PlatformFile platformfile = result.files.first;
      AttachmentData attachementData = AttachmentData();
      attachementData.documentName = platformfile.name;
      attachementData.documentSize = "${platformfile.size / 1000} KB";
      attachementData.color = Colors.black;
      dbResults[index - 1] = attachementData;
      refreshWidget();
      successDialogue();
      // ignore: use_build_context_synchronously
    }
  }

  Future<void> deleteFile() async {
    int index = 0;
    if (checklistValues[0] == true) {
      dbResults = [];
      checklistValues = [false];
    } else {
      List<bool> updatedChecklistValues = [];
      List<AttachmentData> updatedDbResults = [];
      for (bool value in checklistValues) {
        if (!value) {
          updatedChecklistValues.add(false);
          if (index > 0) {
            updatedDbResults.add(dbResults[index - 1]);
          }
        }
        index++;
      }
      dbResults = updatedDbResults;
      checklistValues = updatedChecklistValues;
    }
    setDeleteButtonVisibility();
    refreshWidget();
  }
}
