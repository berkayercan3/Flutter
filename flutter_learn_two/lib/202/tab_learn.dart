import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar ve BottomAppBar'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text(
              'Mesajlar Sayfası',
              style: TextStyle(fontSize: 24, color: Colors.orange),
            ),
          ),
          Center(
            child: Text(
              'Ana Sayfa',
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
          ),
          Center(
            child: Text(
              'Profil Sayfası',
              style: TextStyle(fontSize: 24, color: Colors.purple),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(1);
          },
          backgroundColor: Colors.pinkAccent,
          child: const Icon(Icons.home),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 1,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.red,
          tabs: const [
            Tab(icon: Icon(Icons.message)),
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
