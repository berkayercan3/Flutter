import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.red,
            width: 300,
            height: 300,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              color: Colors.yellow,
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
