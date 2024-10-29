import 'package:flutter/material.dart';

class TapBarPage extends StatelessWidget {
  const TapBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('A P P B A R'),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: TabBar(
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(text: "Tab 1",),
                Tab(text: "Tab 2",),
                Tab(text: "Tab 3",),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Content for Tab 1')),
            Center(child: Text('Content for Tab 2')),
            Center(child: Text('Content for Tab 3')),
          ],
        ),
      ),
    );
  }
}
