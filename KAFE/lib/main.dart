import 'package:flutter/material.dart';
import 'package:kafe/101/button_learn.dart';
import 'package:kafe/101/cotainer_sized_box_learn.dart';
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
      theme: ThemeData.dark(),
      home: const ButtonLearn(), // çağırma işlemi yaptık
    );
  }
}