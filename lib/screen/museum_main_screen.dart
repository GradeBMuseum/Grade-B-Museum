import 'package:flutter/material.dart';

class MuseumMainScreen extends StatefulWidget {
  const MuseumMainScreen({super.key});

  @override
  State<MuseumMainScreen> createState() => _MuseumMainScreenState();
}

class _MuseumMainScreenState extends State<MuseumMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Under Construction",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
