import 'package:flutter/material.dart';

class AttachmentData {
  String? documentName;

  String? documentSize;

  String? size;

  Color? color;

  AttachmentData({
    this.documentName,
    this.documentSize,
    this.size,
    this.color,
  });

  AttachmentData.fromJson(Map<String, dynamic> json) {
    documentName = json['documentName'];

    documentSize = json['documentSize'];

    size = json['size'];

    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['documentName'] = documentName;

    data['documentSize'] = documentSize;

    data['size'] = size;

    data['color'] = color;

    return data;
  }
}
