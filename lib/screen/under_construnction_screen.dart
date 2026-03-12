import 'package:flutter/material.dart';

class UnderConstrunctionScreen extends StatelessWidget {
  const UnderConstrunctionScreen({super.key});

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
