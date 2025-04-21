import 'package:flutter/material.dart';

class MyAttemptDemo extends StatelessWidget {
  const MyAttemptDemo({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('A Coffee?',
            style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.w900)),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 500,
            height: 300,
            child: Padding(
              padding: ProjectPadding.imagePad,
              child: PictureImageone(path: ImageItems().pictureWithoutPath),
            ),
          ),
          const Padding(
            padding: ProjectPadding.subjectPad,
            child: SizedBox(
              child: Text(
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                'My Coffe Page Design ',
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const Padding(
            padding: ProjectPadding.textPad,
            child: SizedBox(
              child: Text(
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    fontSize: 16),
                'Bu sayfa potansiyel bir coffe mobil uygulamasına özel olarak tasarlanmıştır!',
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 400,
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: ProjectPadding.buttonPad,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  backgroundColor: const Color.fromRGBO(0, 66, 37,10),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: const Padding(
              padding: ProjectPadding.withByPad,
              child: SizedBox(
                child: Text(
                  'With By: Berkay Ercan',
                  style:  TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 11),
                ),
              ),
            ),
          ),
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

class ProjectPadding {
  static const withByPad = EdgeInsets.only(top: 17, right: 5, left: 20);
  static const buttonPad = EdgeInsets.only(right: 30,bottom: 13);
  static const textPad = EdgeInsets.only(top: 15, right: 20, left: 20);
  static const subjectPad = EdgeInsets.only(top: 50, right: 150, left: 20);
  static const imagePad = EdgeInsets.symmetric(horizontal: 50);

}