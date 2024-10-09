// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, avoid_print

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Controllers
  final TextEditingController controllerUsername = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  //Variables
  bool activeBorderError = false;

  //Credentials
  final String username = 'admin';
  final String password = 'password';

  //Methods
  void signIn() {
    var _username = username;
    var _password = password;
    setState(() {
      if (_username == controllerUsername.text &&
          _password == controllerPassword.text) {
        Navigator.pushNamed(context, 'homePage');
      } else {
        print('Credentials invalid');
      }
      clearFields();
    });
  }

  void clearFields() {
    controllerUsername.clear();
    controllerPassword.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Expanded(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: const Column(
                    children: [
                      Text(
                        'Login here',
                        style: TextStyle(
                            color: Color.fromRGBO(31, 65, 187, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        "Welcome back you've \n been missed!",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 357,
                        height: 64,
                        child: TextFormField(
                          controller: controllerUsername,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 20, left: 20, bottom: 20, right: 35),
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(241, 244, 255, 1.0),
                              label: const Text(
                                'Email',
                                style: TextStyle(
                                    color: Color.fromRGBO(98, 98, 98, 1.0)),
                              ),
                              errorText: activeBorderError ? 'Error' : null,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Color.fromRGBO(241, 244, 255, 1.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(31, 65, 187, 1.0),
                                      width: 2)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 2))),
                        ),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      Container(
                        width: 357,
                        height: 64,
                        child: TextFormField(
                          controller: controllerPassword,
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 20, left: 20, bottom: 20, right: 35),
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(241, 244, 255, 1.0),
                              label: const Text(
                                'Password',
                                style: TextStyle(
                                    color: Color.fromRGBO(98, 98, 98, 1.0)),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 0,
                                  color: Color.fromRGBO(241, 244, 255, 1.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(31, 65, 187, 1.0),
                                      width: 2)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 2))),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot your password?',
                            style: TextStyle(
                                color: Color.fromRGBO(31, 65, 187, 1.0),
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(350, 55),
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 15, bottom: 15),
                              backgroundColor:
                                  const Color.fromRGBO(31, 65, 187, 1.0),
                              foregroundColor:
                                  const Color.fromRGBO(255, 255, 255, 1.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              shadowColor:
                                  const Color.fromRGBO(203, 214, 255, 1.0),
                              elevation: 20),
                          onPressed: () {
                            signIn();
                          },
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'registerPage');
                        },
                        child: const Text(
                          'Create new account',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(73, 73, 73, 1.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Or continue with',
                        style: TextStyle(
                            color: Color.fromRGBO(31, 65, 187, 1.0),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(236, 236, 236, 1.0),
                                  borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(10))),
                              child: const FaIcon(FontAwesomeIcons.google)),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(236, 236, 236, 1.0),
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(10))),
                            child: const Icon(Icons.facebook_rounded),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(236, 236, 236, 1.0),
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(10))),
                            child: const Icon(Icons.apple_rounded),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
