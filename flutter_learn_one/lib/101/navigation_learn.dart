import 'package:flutter/material.dart';
import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  List<int> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final isSelected = selectedItems.contains(index);

          return TextButton(
            onPressed: () async {
              final result = await Navigator.of(context).push<bool>(
                MaterialPageRoute(
                  builder: (context) => const NavigateLearn(),
                ),
              );
              if (result == true) {
                setState(() {
                  selectedItems.add(index);
                });
              }
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              color: isSelected ? Colors.green[100] : Colors.grey[200],
              child: Row(
                children: [
                  const Icon(Icons.star),
                  const SizedBox(width: 10),
                  Text('Öğe $index'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
