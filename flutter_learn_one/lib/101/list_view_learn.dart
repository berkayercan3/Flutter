import 'package:flutter/material.dart';

class ListViewLearnState extends StatelessWidget {
  const ListViewLearnState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            FittedBox(
              child: Text(
                'Hello',
                style: Theme.of(context).textTheme.displayMedium, // düzeltildi
                maxLines: 1,
              ),
            ),
            Container(
              color: Colors.red,
              height: 200,
            ),
            const Divider(),
            Container(color: Colors.green, height: 200),
            const Divider(),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.green, width: 500),
                  Container(color: Colors.white, width: 200),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            const _ListDemoState(),
          ],
        ),
      ),
    );
  }
}

// Debug amaçlı kullanılan Statefull Widget
class _ListDemoState extends StatefulWidget {
  // ignore: unused_element
  const _ListDemoState({super.key});

  @override
  State<_ListDemoState> createState() => _ListDemoStateState();
}

class _ListDemoStateState extends State<_ListDemoState> {
  @override
  void initState() {
    super.initState();
    debugPrint('hello');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
