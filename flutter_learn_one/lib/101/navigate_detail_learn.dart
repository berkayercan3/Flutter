import 'package:flutter/material.dart';

class NavigateLearn extends StatefulWidget {
  const NavigateLearn({super.key});

  @override
  State<NavigateLearn> createState() => _NavigateLearnState();
}

class _NavigateLearnState extends State<NavigateLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(onPressed: () {
          Navigator.of(context).pop(true);
         },
            icon: const Icon(Icons.check), label: const Text('Onayla')),
      ),
    );
  }
}
