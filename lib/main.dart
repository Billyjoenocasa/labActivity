import 'package:flutter/material.dart';
import 'package:nocasa/home.dart';

void main() {
  runApp(const LabAct());
}

class LabAct extends StatelessWidget {
  const LabAct({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
