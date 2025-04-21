import 'dart:ffi';

import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionsItem().items; // başlangıçta ekranda görünecek ögeleri belirledik
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder( //bir liste oluşturdu bu listemiz cardlardan oluşuyor
          itemCount: _items.length, // 4 tane card ımız var o kadar sayfa görünecek bu olmasa sonsuza giderdi ve hata alıdık
          itemBuilder: (context, index) {
            return Padding(
              padding: PaddingUtility().generalyPadding,
              child: _CategoryCard(model: _items[index]),
            );
          }),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({super.key, required CollectionModel model,}) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card( //card tasarımını gerçekleştirdik
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            Expanded( // expanded ile sıkışmasını önledik
                child: Padding(
                 padding: PaddingUtility().imagePadding,
                   child: Image.asset(_model.imagePath),
            )),
            Padding(
              padding: PaddingUtility().textPadding,
              child: SizedBox(
                child: Row( // textleri oluşturduk
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} eth'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionsItem {
  late final List<CollectionModel> items;
  CollectionsItem() {
    items = [
      CollectionModel(imagePath: Images.imageone, title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: Images.imagetwo, title: 'Abstract Art1', price: 3.4),
      CollectionModel(imagePath: Images.imageone, title: 'Abstract Art2', price: 3.4),
      CollectionModel(imagePath: Images.imagetwo, title: 'Abstract Art3', price: 3.4),
    ];
  }
}

class PaddingUtility {
  final textPadding = const EdgeInsets.only(right: 20, left: 20, bottom: 15);
  final imagePadding = const EdgeInsets.all(20);
  final generalyPadding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
}

class Images {
  static const imageone = 'assets/resim/Untitled.png';
  static const imagetwo = 'assets/resim/resim.jpeg';

}