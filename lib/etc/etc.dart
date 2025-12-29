import 'package:flutter/material.dart';

Etc etc = new Etc();

class Etc {
  void showSnackBar(String text, BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}