import 'package:flutter/material.dart';
import 'package:grade_b_museum/screen/under_construnction_screen.dart';

class MuseumMainScreen extends StatefulWidget {
  const MuseumMainScreen({super.key});

  @override
  State<MuseumMainScreen> createState() => _MuseumMainScreenState();
}

class _MuseumMainScreenState extends State<MuseumMainScreen> {
  @override
  Widget build(BuildContext context) {
    return UnderConstrunctionScreen();
  }
}
