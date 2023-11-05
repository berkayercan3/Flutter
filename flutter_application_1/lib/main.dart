import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merhaba, Flutter'),
      ),
      body: const Center(
        child: Text(
          'Merhaba, Dünya!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
