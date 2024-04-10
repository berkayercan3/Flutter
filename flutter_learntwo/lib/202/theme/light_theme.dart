import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        scaffoldBackgroundColor: const Color.fromARGB(255, 172, 233, 238),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 255, 255, 255)),
        checkboxTheme: const CheckboxThemeData(
            fillColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 196, 140, 140)),
            side: BorderSide(color: Colors.black)),
        buttonTheme: ButtonThemeData(
            colorScheme:
                ColorScheme.light(onPrimary: _lightColor._buttonColor)),
        colorScheme: const ColorScheme.light(),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyMedium:
                TextStyle(fontSize: 70, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(6, 0, 0, 0);
  final Color _buttonColor = const Color.fromARGB(6, 231, 0, 0);
}
