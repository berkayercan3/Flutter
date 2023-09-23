import 'package:flutter/material.dart';

class MyAttemptDemo extends StatelessWidget {
  const MyAttemptDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          SizedBox(
            width: 500,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: PictureImageone(path: ImageItems().pictureWithoutPath),
            ),
          ),
          const SizedBox(
            child: Text(
                'Benim coffe sayfa tasarımım',
            textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String pictureWithoutPath = "coffe";
}

class PictureImageone extends StatelessWidget {
  const PictureImageone({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath(), fit: BoxFit.cover);
  }

  String _nameWithPath() => 'assets/resim/$path.png';
}
