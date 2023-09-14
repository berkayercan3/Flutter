import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack( // en sona yazılan en önde olur mantığımız budur
        children: [
          Positioned.fill( // belirli bir bölgeyi kaplamak için kullanılır
            top: 100,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Container(
            color: Colors.red,
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),

          Positioned( // belirli bir pozisyon ve boyut verir
            bottom: 5, // üsten aşağıya doğru verilecek boyutu px cinsinden verir
            height: 100,
            width: 25,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
