import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        //bodye padding atamamız body içerisindeki bütün kompanentlere
        //padding vermeyi sağladı
        padding: ProjectPadding
            .pagePaddingVertical, //genel bir padding varsa ayrı sınıf oluştur
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.black,
                  height: 100,
                  //width: 200,
                )),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                color: Colors.blue,
                height: 100,
                //width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30) +
                  const EdgeInsets.symmetric(vertical: 10),
              child: const Text('Ali'),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly +
                  ProjectPadding.pagePaddingVertical,
              child: const Text('Ali'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 30);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 30);
}
