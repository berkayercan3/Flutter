import 'package:flutter/material.dart';

class ContainerSizeBoxLearn extends StatelessWidget {
  const ContainerSizeBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 200,
            child: Text(List.generate(50, (_) => 'miyav <3 ').join()),
          ),
          const SizedBox.shrink(),
          const SizedBox.square(
            dimension: 15,
            child: Text('bbbbbb'), // 5 kere bbb yazacak şekilde sadeleştirdim
          ),
          Container(
            padding: const EdgeInsets.all(40),
            margin: const EdgeInsets.all(20),
            decoration: ProjectUtility.boxDecoration,
            constraints: const BoxConstraints(
              maxWidth: 200,
              minWidth: 195,
              minHeight: 65,
            ),
            child: Text(List.generate(50, (_) => 'aa').join()),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static final BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      colors: [Colors.black, Colors.red],
    ),
    boxShadow: const [
      BoxShadow(
        color: Colors.blue,
        offset: Offset(0.1, 1),
        blurRadius: 12,
      ),
    ],
    border: Border.all(width: 10, color: Colors.white12),
  );
}
