import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
final String _imagePath = 'https://i.pinimg.com/1200x/b3/5f/c7/b35fc7144c81956c683df40833b87469.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          SizedBox(
            height: 400,
            width: 300,
            child: pictureImage(path:ImageItems().pictureWithoutPath),

          ),
          Image.network('https://i.pinimg.com/1200x/b3/5f/c7/b35fc7144c81956c683df40833b87469.jpg')
          //resim linkini kullanarak resim kullanma şekli
        ],
      ),
    );
  }
}

class ImageItems {
final String pictureWithoutPath = "resim";
}


class pictureImage extends StatelessWidget {
  const pictureImage({super.key, required this.path});
final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath(), fit: BoxFit.cover);
  }

  String _nameWithPath() => 'assets/resim/$path.jpeg';
}
