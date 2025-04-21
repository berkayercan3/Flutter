import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/animated_learn_view.dart';
import 'package:flutter_learntwo/202/theme/light_theme.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_main.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      //ThemeData.dark().copyWith(
      //   tabBarTheme: TabBarTheme(
      //     indicatorColor: Colors.white,
      //     labelColor: Colors.orange[900],
      //     unselectedLabelColor: Colors.black,
      //     indicatorSize: TabBarIndicatorSize.tab,
      //   ),
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.white24,
      //     systemOverlayStyle: SystemUiOverlayStyle.light,
      //     elevation: 0,
      //   ),
      home: const StartPage(),
    );
  }
}
