import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //4+2+2+2
          Expanded(
              // expanded widgeti sayesinde çocuk widgetlerinin eşit
              // olarak genişletilmesni sağladık
              flex: 4, // flex çocukların ne kadar genişleyeceğini belirler,
              // burada kısımı 4 ksımla paylaşacağı anlamına geldi
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(child: Container(color: Colors.yellow)),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              )),
          const Spacer(flex: 2),
          const Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('a'),
                Text('a2'),
                Text('a3'),
              ],
            ),
          ),
          const SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
