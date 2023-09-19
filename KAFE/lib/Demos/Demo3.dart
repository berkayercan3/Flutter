//Bir ekranda 3 button ve bunlara basınca renk değişimi olsun
//seçili olan buton selected icon olsun

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
    final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  @override
  void initState() { // uygulama baslar baslamaz yapilacak is pembe vermek
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);

    if(widget.initialColor != _backgroundColor && widget.initialColor != null)
    //eger baslangic color um arkaplan rengine ve baslangic colorum nulla a esit degilse arka plan rengini baslangic rengi yap
      // ben tuslara basarak rengi degistiriyorum ve icon sayesinde bu rengi sorgulayip eski haline geri donderebiliyorum
      {changeBackgroundColor(widget.initialColor!);}
  }

 void changeBackgroundColor(Color color) {
    setState(() { //kullanici arayuzu degistirmeye yarayan yontemdir
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(

          onTap: _colorOnTap, //Tiklaninca yapilacak islemi verir

          items: const [
            BottomNavigationBarItem(
                icon: _ColorsContainer(color: Colors.red), label: 'Red'),
            BottomNavigationBarItem(
                icon: _ColorsContainer(color: Colors.yellow), label: 'Yellow'),
            BottomNavigationBarItem(
                icon: _ColorsContainer(color: Colors.blue), label: 'Blue'),
          ]),
    );
  }

  void _colorOnTap(int value) {
          if (value == _MyColors.red.index) {changeBackgroundColor(Colors.red);}
          else if (value == _MyColors.yellow.index) {changeBackgroundColor(Colors.yellow);}
          else if (value == _MyColors.blue.index) {changeBackgroundColor(Colors.blue);}
            // if (value == 0) {
            // } else if (value == 1) {
            // } else {}
        }
}

enum _MyColors{ //enum, genellikle sabit değerlerin veya durumların belirtilmesi için kullanılır.
  red,
  yellow,
  blue
}


class _ColorsContainer extends StatelessWidget {
  const _ColorsContainer({super.key, required this.color,});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
