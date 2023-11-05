import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/Demo_One.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/Demo_Start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        ),
      ),
      home: const DemoTwo(),
    );
  }
}
