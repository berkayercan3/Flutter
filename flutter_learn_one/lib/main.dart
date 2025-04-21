import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafe/101/card_learn.dart';
import 'package:kafe/101/custom_widget_learn.dart';
import 'package:kafe/101/image_learn.dart';
import 'package:kafe/101/indicator_learn.dart';
import 'package:kafe/101/padding_learn.dart';
import 'package:kafe/101/text_learn_view.dart';
import '101/app_bar_learn.dart';
import '101/button_learn.dart';
import '101/color_learn.dart';
import '101/cotainer_sized_box_learn.dart';
import '101/icon_learn.dart';
import '101/scaffoold_learn.dart';
import '101/stateless_learn.dart';
import '101/text_field_learn.dart';
import 'Demos/My_attempt_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          inputDecorationTheme: const InputDecorationTheme(
            //genel
            filled: false, // metin alanının arka planı dolduruldu
            fillColor: Colors.black38,
            iconColor: Colors.red, //genel iconların rengi kırmızı oldu
            border: OutlineInputBorder(), // her metin alanının etrafı sarıldı
            floatingLabelStyle: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 10, //gölge görünürlüğü
          )),
      home: const CustomWidgetLearn(),
    );
  }
}
