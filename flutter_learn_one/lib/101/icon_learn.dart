import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {

final IconSizes iconSizes = IconSizes();
final IconColors iconColors = IconColors();

  IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(title: const Text('Icon')),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).colorScheme.background,//bu özellik sayesinde tema rengi değiştiğinde ikonlarımız da ona göre renk değiştirebilir hale geliyor
                size: 40, // bu yanlış kullanımdır basit bir yazım şekli olur
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color:Colors.red,
                size: 40, // bu yanlış kullanımdır basit bir yazım şekli olur
              )),
          IconButton(
              onPressed: () {},
              icon:  Icon(
                Icons.message_outlined,
                color:iconColors.cos,
                size: iconSizes.iconSmall, // doğru kullanım bu şekildedir
              )),
        ],
      )
    );
  }
}

class IconSizes {
  final double iconSmall = 60;
}

class IconColors {
  final Color cos = Colors.blue;
}