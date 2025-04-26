import 'package:flutter/material.dart';

class ListviewBuilderLearn extends StatefulWidget {
  const ListviewBuilderLearn({super.key});

  @override
  State<ListviewBuilderLearn> createState() => _ListviewBuilderLearnState();
}

class _ListviewBuilderLearnState extends State<ListviewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          debugPrint(index.toString()); // düzeltildi
          return const Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                  child: Image.network('https://picsum.photos/200/300'),
                ),
                Text('$index'),
              ],
            ),
          );
        },
        itemCount: 20, // 20 adet liste öğesi
      ),
    );
  }
}
