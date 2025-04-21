import 'package:flutter/material.dart';
import 'package:kafe/101/stateless_learn.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        color: ColorsItems.charisma,
        child: const Text('data',style:TextStyle(fontSize: 50)
        ),
      ),
    );
  }
}

class ColorsItems {
  static Color perrywinkle = const  Color(0xff9586df);
  static Color charisma = const  Color.fromRGBO(96, 42, 91,1);
}