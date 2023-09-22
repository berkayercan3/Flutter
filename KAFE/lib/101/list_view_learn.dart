import 'package:flutter/material.dart';

class ListViewLearnState extends StatelessWidget {
  const ListViewLearnState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView( // bir dizi ögeyi yatay ve diky olarak yerleştirir
          children: [
            FittedBox( // bir childin boytunu ayarlamak için kullanılır
              child: Text(
                'Hello',
                style: Theme.of(context).textTheme.headline2,
                maxLines: 1,
              ),
            ),
            Container(color: Colors.red,height: 200,),
            const Divider(), // boşluk yaratır
            Container(color: Colors.green,height: 200),
            const Divider(),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal, //kaydırma yönünü yatay olarak belirledik
                  children: [
                Container(color: Colors.green,width: 500),
                    Container(color: Colors.white,width: 200),

                  ]),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            const _ListDemoState(),
          ],
        ),
      ),
    );
  }
}


//bundan sonraki kısım debug yapmak için kullandık

class _ListDemoState extends StatefulWidget {
  const _ListDemoState({super.key});

  @override
  State<_ListDemoState> createState() => _ListDemoStateState();
}

class _ListDemoStateState extends State<_ListDemoState> {
  @override
  void initState() {
    super.initState();
     print('hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');

  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

