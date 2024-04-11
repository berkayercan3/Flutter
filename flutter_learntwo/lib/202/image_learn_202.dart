import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePath.note.toWidget(),
    );
  }
}

enum ImagePath {
  note,
}

extension ImagePathExtension on ImagePath {
//extension sınıfı ile bir sınıfın özellikerini
//genişletebiliyoruz ona yeni özelliklerkatabiliyoruz hem de okunabilirrliği ve düzeni sağlamış oluyoruz
  String path() {
    return 'assets/$name.png';
  }

  Widget toWidget({double height = 300}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
