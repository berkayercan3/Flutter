// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  final user9 = PostModel7();

  @override
  void initState() {
    super.initState();

    final user1 = PostModel()
      ..userId = 1
      ..title = ' hello';
    user1.body =
        'hello'; // nullable olarak tanımladığımız için değer girişi sağlıyoruz.

    final user2 = PostModel1(1, 2, 'a', 'b');
    user2.id =
        4; //class ta final kullanmadığımız için değeri sonradan değiştirebildik

    final user3 = PostModel2(1, 2, 'a', 'b');
    // user3.id = 4; final kullanımı yüzünden sonradan değişim yapamayız..

    final user4 = PostModel3(userId: 1, id: 2, title: 'a', body: 'b');
    // parametreler named olarak geldi (ismi ile birlikte)

    final user5 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');
    // burada user5 in ctr boşluk tan alabileceği variable lara erişim sağlayamıyorum
    // private olarak tanımladığım için

    final user6 = PostModel5(userId: 1, id: 2, title: 'a', body: 'b');

    final user7 = PostModel6();

    //service kullanımı için
    final user8 = PostModel7(body: 'Merhaba');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}
