import 'package:flutter/material.dart';

import 'Demo3.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     appBar: AppBar(actions: [
       IconButton(onPressed: _changeBackground, icon: const Icon(Icons.clear))
     ] //olay su sekilde appbar da bir icon geldi ve bu iconabasildigi takdirde ekrandi yapilan degisikleri temizlemek istiyoruz
       //bu olayi yapicaz fakat ColorDemos ayri bir lifecycle appbar ayri bir lifecycle bu durumu gerceklestirmek icin kullanicidan parametre alacagiz
     ),

      body:  Column(
        children: [
          const Spacer(), // %50 %50 bolduk ekrani
          Expanded(child: ColorDemos(initialColor: _backgroundColor)), //expanded ile kullanim sagladik bi yariyi
        ],
      )
    );
  }

  void _changeBackground() {setState(() {
       _backgroundColor = Colors.pink;
     });}
}
