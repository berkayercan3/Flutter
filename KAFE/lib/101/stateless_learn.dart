import 'package:flutter/material.dart';

class StaltessLearn extends StatelessWidget {
  //extends ile classimizin StatelessWidget ozelligini kullanabilmesini sagladik
  final String text2 = "veli0";
  final String text3 = "veli1";
  final String text4 = "veli2";
  final String text5 = "veli3";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: text2),
          _emptyBox(),
          TitleTextWidget(text: text3),
          TitleTextWidget(text: text4),
          _emptyBox(),
          TitleTextWidget(text: text5),
         const _CustomContainer(),//Refactor yaptik
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() =>  SizedBox(height: 30);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({ //Baslara koyulan alttantire file private anlamina gelir ve bu classimizin sadece bu dosayaya ozgu olmasini sagladik
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

//required sayesinde kullanilacak text ozelliginin kullanilmasinin zorunlu oldugunu belirttik
class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);

  //Aslinda mainden oge cekmis olduk ve onu duzenleyip gonderdik
  final String text; //disardan parametre alabilmesini sagladik

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
