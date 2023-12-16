import 'package:flutter/material.dart';

class TabsPage {
  final String title;
  final Widget widget;
  final Function reset;

  TabsPage({required this.title, required this.widget, required this.reset});
}
