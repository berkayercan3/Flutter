import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {}),
          bottomNavigationBar: const BottomAppBar(
              notchMargin: 10,
              shape: CircularNotchedRectangle(),
              child: TabBar(tabs: [Tab(text: 'tab1'), Tab(text: 'tab2')])),
          appBar: AppBar(
            bottom: const TabBar(tabs: [Tab(text: 'tab1'), Tab(text: 'tab2')]),
          ),
          body: TabBarView(
            children: [
              Container(color: Colors.red),
              Container(color: Colors.blue),
            ],
          )),
    );
  }
}
