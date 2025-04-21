import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            color: Colors.yellow,
            margin: ProjectMargins
                .cardMargin, // margin içten değilde dıştan padding yapar
            child: SizedBox(
                height: 100, width: 200, child: Center(child: Text('Berkay'))),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(height: 100, width: 200),
          ),
          _CustomCard(
              child: const SizedBox(
            height: 100,
            width: 200,
            child: Center(child: Text('Berkay')),
          )),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final roundedRectangleBorder = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)); // veriable yaptık
    return Card(
      margin: ProjectMargins.cardMargin,
      // margin içten değilde dıştan padding yapar
      child: child,
      // kodu mainde verdiğimiz için bidaha yazmak zorunda değiliz
      shape:
          roundedRectangleBorder, //kartımıza stadyum şeklinde bir şekil verir , extract veriable yaptık
    );
  }
}

//borders çeşitleri
// StadiumBorder(),
// CircleBorder(), daire şekli verir
//RoundedRectangleBorder bize köşeli şekil verir ve bunun köşeleri kıvırmak için
//borderRadius: BorderRadius.circular(10) şeklinde bir yöntem kullanırız
