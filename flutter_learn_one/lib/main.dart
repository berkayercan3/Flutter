import 'package:flutter/material.dart';
import 'package:kafe/Demos/Demos_learn_101/proje_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Arkaplan beyaz
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent, // Şeffaf AppBar
          elevation: 0, // Gölge yok
          iconTheme:
              IconThemeData(color: Colors.black), // AppBar iconları siyah
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const ProjeOne(),
    );
  }
}
