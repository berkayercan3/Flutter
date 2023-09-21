import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafe/101/app_bar_learn.dart';
import 'package:kafe/101/button_learn.dart';
import 'package:kafe/101/card_learn.dart';
import 'package:kafe/101/color_learn.dart';
import 'package:kafe/101/column_row_learn.dart';
import 'package:kafe/101/cotainer_sized_box_learn.dart';
import 'package:kafe/101/custom_widget_learn.dart';
import 'package:kafe/101/icon_learn.dart';
import 'package:kafe/101/image_learn.dart';
import 'package:kafe/101/indicator_learn.dart';
import 'package:kafe/101/list_tile_learn.dart';
import 'package:kafe/101/list_view_learn.dart';
import 'package:kafe/101/padding_learn.dart';
import 'package:kafe/101/scaffoold_learn.dart';
import 'package:kafe/101/stack_learn.dart';
import 'package:kafe/101/stateful_learn.dart';
import 'package:kafe/101/statefull_life_cycle_learn.dart';
import 'package:kafe/101/stateless_learn.dart';
import 'package:kafe/101/text_field_learn.dart';
import 'package:kafe/101/text_learn_view.dart';
import 'package:kafe/Demos/Demo1.dart';
import 'package:kafe/Demos/Demo2.dart';
import 'package:kafe/Demos/Demo3.dart';
import 'package:kafe/Demos/color_life_cycle_view.dart';

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
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          //projede genel kullanilacak olan indicatoru belirledik
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          // Bu sayede projemizdeki bütün kartlarımızın tasarımı aynı olur tek tek uğraşmayız eğer hepsi aynı ise

          inputDecorationTheme: const InputDecorationTheme( //genel
              filled: true, // metin alanının arka planı dolduruldu
              fillColor: Colors.black38,
              iconColor: Colors.red, //genel iconların rengi kırmızı oldu
              border: OutlineInputBorder(), // her metin alanının etrafı sarıldı
              floatingLabelStyle: TextStyle(color: Colors.red,fontSize:24,fontWeight: FontWeight.w600),
          ),

          // projede kullanılacak appbar stilimizin aynı olacağı şeylerin aynı olacağı işlemleri buraya yazdık
          //artık bu yazdıklarımız tüm sayfalarda klasik oldu
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            //appardaki yazı ortalandı her yerde
            systemOverlayStyle: SystemUiOverlayStyle.light,
            // appbar üstü light kaldı
            backgroundColor: Colors.transparent,
            // arka plan her yerde transparant
            elevation: 10, // gölge? görünürlüğü? her yerde 5
          )),
      home: const ListViewLearnState(), // çağırma işlemi yaptık
    );
  }
}
