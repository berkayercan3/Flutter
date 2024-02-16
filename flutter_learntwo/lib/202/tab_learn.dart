import 'package:flutter/material.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_login.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_signup.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_start.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
              child: const Text('tab2'),
              onPressed: () {
                _tabController.animateTo(_MyTabViews.home.index);
              }),
          bottomNavigationBar: BottomAppBar(
              notchMargin: notchedValue,
              shape: const CircularNotchedRectangle(),
              child: _myTabBar()),
          body: _tabBarView()),
    );
  }

  TabBar _myTabBar() {
    return TabBar(
        //Tabbarin default olarak temasini mainde kullandik ki her yerde ayni olsun
        //maini kontrol et
        padding: EdgeInsets.zero,
        //isScrollable: true, // sikistirma yapmayi saglar
        onTap: (int index) {},
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(
      physics:
          const NeverScrollableScrollPhysics(), //kullanicinin dokunup basili tutarak kaydirmasini engeller.
      controller: _tabController,
      children: const [
        StartPage(),
        LoginPage(),
        DemoSignUp(),
        StartPage(),
      ],
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewsExtension on _MyTabViews {}
