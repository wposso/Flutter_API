// ignore_for_file: unused_field, annotate_overrides

import 'package:flutter/material.dart';

class FooterWidget extends StatefulWidget {
  final int finalIndex;
  const FooterWidget({super.key, required this.finalIndex});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  int _selectedIndex = 0;

  void initState() {
    super.initState();
    _selectedIndex = widget.finalIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, 'homePage', arguments: 0);
        break;
      case 1:
        Navigator.pushNamed(context, 'shopPage', arguments: 1);
        break;
      case 2:
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.pink,
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Store'),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
      ],
    );
  }
}
