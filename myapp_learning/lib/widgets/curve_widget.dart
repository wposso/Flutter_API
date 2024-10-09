import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurveWidget extends StatelessWidget {
  const CurveWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: const[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.heart),
            Text(
              'Favorite',
              style: TextStyle(
                fontSize: 10
              ),)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.home),
            Text(
              'Home',
              style: TextStyle(
                fontSize: 10
              ),)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.contao),
            Text(
              'Contact',
              style: TextStyle(
                fontSize: 10
              ),)
          ],
        )
      ]);
  }
}
