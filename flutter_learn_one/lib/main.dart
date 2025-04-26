import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '101/custom_widget_learn.dart';

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
