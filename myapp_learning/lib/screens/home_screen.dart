// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myapp_learning/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      bottomNavigationBar: const CurveWidget()
    );
  }
}
