import 'package:flutter/material.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({super.key});

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        CheckboxListTile(
          value: false,
          onChanged: (val) {},
          title: const Text("Select",
              style: TextStyle(fontWeight: FontWeight.w600)),
        )
      ]),
    );
  }
}
