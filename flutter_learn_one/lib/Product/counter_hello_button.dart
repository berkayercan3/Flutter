import 'package:flutter/material.dart';
import 'package:kafe/Product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  final String _welcomeTitle = LanguageItems.welcomeTitle;
  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCounter,
        child: Text('$_welcomeTitle $_counterCustom'));
  }
}
