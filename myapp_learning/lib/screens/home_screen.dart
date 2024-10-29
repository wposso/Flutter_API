// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:myapp_learning/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home page'),
          foregroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.5),
          child: ElevatedButton(onPressed: () {}, child: const Text('Demo')),
        ),
        bottomNavigationBar: const FooterWidget(finalIndex: 0,));
  }
}
