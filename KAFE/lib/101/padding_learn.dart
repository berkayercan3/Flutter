import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding( //bodye padding atamamız body içerisindeki bütün kompanentlere padding vermeyi sağladı
        padding: ProjectPadding.pagePaddingVertical, //genel bir padding varsa ayrı sınıf oluşturup çağır uğraşma!
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20), // containerın her yerinden 20 lik boşluk verdik
                child: Container(
                  color: Colors.white,
                  height: 100,
                  //width: 200,
                )),
            const SizedBox(height: 10),
            // bu bir padding vermedir (boşluk) fakat doğru bir kullanım değildir
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20), // vertical sadece yukardan
                                                        // horizontal yanlardan verir
              child: Container(
                color: Colors.white,
                height: 100,
                //width: 200,
              ),
            ),
           Padding(
              padding: const EdgeInsets.only(right: 30) + const EdgeInsets.symmetric(vertical: 10), // body paddinginden ayrı olarak padding vermek istersek bu şekilde bir kullanım söz konusudur
              child: const Text('Ali'),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly+ ProjectPadding.pagePaddingVertical,
              child: const Text('Ali'),
            ),
          ],
        ),
      ),
    );
    return const Placeholder();
  }
}

class ProjectPadding{

  static const pagePaddingVertical =  EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly =  EdgeInsets.only(right: 30);

}