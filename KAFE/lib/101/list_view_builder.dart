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

      //body: ListView.builder(itemBuilder: (context, index) {
        //ListView.builder bir veri kaynğından gelen verileri kullanarak ListView içindeki ögeleri oluşturur
        //burada her bir ögeyi sırası ile oluşturmak için bir builder kullanıldı
        //print(index); // oluşturulan ögenin sırasını takip ettik debugda
      body: ListView.separated(separatorBuilder:(context , index) {
        print(index);
          return const Divider(
            color: Colors.white,
          );
        }, itemBuilder: (context , index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network('https://picsum.photos/200/300'),),
                Text('$index')
              ],
            ),
          );
        }, itemCount: 20, // 15 e kadar ilerlemesini sağladık
      ),
    );
  }
}
