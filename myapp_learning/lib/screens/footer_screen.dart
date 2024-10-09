import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CurveWidget(),
    );
  }
}
