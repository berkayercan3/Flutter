import 'package:flutter/material.dart';
import 'package:kafe/101/cotainer_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')), // yukarda duran isim kısmına appar denir
      body: const Text('Merhaba'),
      backgroundColor: Colors.red,
      floatingActionButton:FloatingActionButton( //floatingActionButton: Scaffold'ın sağ alt köşesinde bulunan bir kayan işlem düğmesini (FloatingActionButton) tanımlar. Bu düğme tıklanırsa, bir alt sayfa (modalBottomSheet) açılacaktır.

        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => Container(
            height: 200,
          ));
        },
      ),
      floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked, //yerini belirler
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        decoration: ProjectUtility.boxDecoration, // Projede tanımlı bir dekorasyon
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),  label: 'a'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
          ],

        ),
      ),
    );// temel sayfayı oluşturmak için kullandık
  }
}

