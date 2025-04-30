import 'package:flutter/material.dart';

class NavigateLearn extends StatelessWidget {
  const NavigateLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detay")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text("Seç ve Geri Dön"),
        ),
      ),
    );
  }
}
