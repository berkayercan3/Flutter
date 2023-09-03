import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          TextButton(
              child: const Text('Button'),
            onPressed: () {}, // düğmeye tıklanınca yapılacak işlemler
          ),
          ElevatedButton(onPressed: () {}, child: const Text('data')),
          IconButton(onPressed: ()  {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(onPressed: () {},
          child: const Icon(Icons.add),),
          OutlinedButton(onPressed: () {}, child: const Text('data')),
          InkWell( // daha özelleştirilebilir bir button yaratmamıza olanak tanır
            onTap: () {},
            child:const Text('özelleştirilebilir'),
          )
        ],
      ),
    );
  }
}
