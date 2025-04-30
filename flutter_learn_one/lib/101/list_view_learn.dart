import 'package:flutter/material.dart';

class ListViewLearnState extends StatelessWidget {
  const ListViewLearnState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            FittedBox(
              child: Text(
                'Discover Flutter!',
                style: Theme.of(context).textTheme.displayMedium,
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.blue,
              height: 150,
              alignment: Alignment.center,
              child: const Text('Learn Dart Basics',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.green,
              height: 150,
              alignment: Alignment.center,
              child: const Text('Practice Widgets',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(right: 10),
                    color: Colors.purple,
                    alignment: Alignment.center,
                    child: const Text('ListView',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(right: 10),
                    color: Colors.orange,
                    alignment: Alignment.center,
                    child: const Text('GridView',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            IconButton(
              onPressed: () {
                debugPrint('Close button pressed');
              },
              icon: const Icon(Icons.close),
            ),
            const SizedBox(height: 16),
            const _ListDemoWidget(),
          ],
        ),
      ),
    );
  }
}

class _ListDemoWidget extends StatefulWidget {
  const _ListDemoWidget({super.key});

  @override
  State<_ListDemoWidget> createState() => _ListDemoWidgetState();
}

class _ListDemoWidgetState extends State<_ListDemoWidget> {
  @override
  void initState() {
    super.initState();
    debugPrint('ListDemoWidget initialized');
  }

  @override
  void dispose() {
    debugPrint('ListDemoWidget disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
