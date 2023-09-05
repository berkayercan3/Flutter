import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafe/101/app_bar_learn.dart';
import 'package:kafe/101/button_learn.dart';
import 'package:kafe/101/color_learn.dart';
import 'package:kafe/101/cotainer_sized_box_learn.dart';
import 'package:kafe/101/icon_learn.dart';
import 'package:kafe/101/scaffoold_learn.dart';
import 'package:kafe/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith( // projede kullanılacak appbar stilimizin aynı olacağı şeylerin aynı olacağı işlemleri buraya yazdık
                                        //artık bu yazdıklarımız tüm sayfalarda klasik oldu
        appBarTheme: const AppBarTheme(
          centerTitle: true, //appardaki yazı ortalandı her yerde
          systemOverlayStyle: SystemUiOverlayStyle.light, // appbar üstü light kaldı
          backgroundColor: Colors.transparent, // arka plan her yerde transparant
          elevation: 10, // gölge? görünürlüğü? her yerde 5
        )
      ),
      home:const ColorLearn(), // çağırma işlemi yaptık
    );
  }
}
