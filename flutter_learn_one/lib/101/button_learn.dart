import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text('TextButton', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.red;
              }
              return Colors.green;
            })),
            onPressed: () {}, // düğmeye tıklanınca yapılacak işlemler
          ),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Butonun arka plan rengi
              onPrimary: Colors.pink, // Tıklanınca yazı rengi
              elevation: 5, // Gölge derinliği
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Yuvarlak kenar şekli
              ),
            ),
            child:const Text('Elevated'),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.access_alarms)),
          FloatingActionButton(
            onPressed: () {
              //servise istek at
              //sayfa rengini düzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.blue, width: 2.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child:const Text(
              'Outlined Button',
              style: TextStyle(color: Colors.blue), // Yazı rengi
            ),
          ),

          InkWell(
            // daha özelleştirilebilir bir button yaratmamıza olanak tanır
            onTap: () {},
            child: const Text('özelleştirilebilirButton'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              minimumSize: Size(300, 100),
            ),
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Success',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )),
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
