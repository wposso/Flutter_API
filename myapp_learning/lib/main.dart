// ignore_for_file: camel_case_types, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, unrelated_type_equality_checks, avoid_print

import "package:flutter/material.dart";
import "package:myapp_learning/routes/routes.dart";

void main() {
  runApp(const runMyAPP());
}

class runMyAPP extends StatelessWidget {
  const runMyAPP({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyApp Learning',
        initialRoute: 'returnPage',
        routes: routes);
  }
}
