import 'package:flutter/material.dart';
import 'package:myapp_learning/screens/login_screen.dart';
import 'package:myapp_learning/screens/register_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'loginPage': (context) => const LoginScreen(),
  'registerPage': (context) => const RegisterScreen(),
};
