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
            margin: ProjectMargins.cardMargin,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const SizedBox(
              height: 100,
              width: 200,
              child: Center(child: Text('Berkay')),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(height: 100, width: 200),
          ),
          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(child: Text('Berkay')),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child})
      : super(key: key); // const yapıldı
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    );
    return Card(
      margin: ProjectMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
