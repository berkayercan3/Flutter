import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ContainerSizeBoxLearn extends StatelessWidget {
  const ContainerSizeBoxLearn({super.key});

  //extends, nesne tabanlı programlama dillerinde bir sınıfın başka bir sınıftan türetilmesi veya miras alınması anlamına gelir. Bir sınıf, başka bir sınıftan özellikleri ve davranışları miras alarak genişletilebilir veya özelleştirilebilir.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //AppBar, bir uygulama çubuğunu temsil eder ve genellikle sayfanın en üstünde görünen başlık ve diğer bileşenleri içerir.
      body: Column(
        children: [
          SizedBox(
            width: 500,
            height: 200,
            child: Text('miyav <3 ' * 50),
          ),
          const SizedBox.shrink(), // shrink boş alan oluşturur
          SizedBox.square( // 50 lik kare alan olsun
            dimension: 15, // dimension boyut anlamındadır
            child: Text('bbb' * 5),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 195,minHeight: 65),
            //constraints sınırlama kısıtlama anlamına gelir
            child: Text('aa' * 50),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ), // belirli bir boyuta sahip bir boş kutucuğu temsil eder. Bu örnekte body alanı boş bir kutucuğa sahip olacak.
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration =BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  //color: Colors.red,
  gradient: const LinearGradient(
  colors: [Colors.black, Colors.red]),
  boxShadow: const[BoxShadow(color: Colors.blue, offset: Offset(0.1, 1), blurRadius: 12),],
    border: Border.all(width: 10,color: Colors.white12,));
}
