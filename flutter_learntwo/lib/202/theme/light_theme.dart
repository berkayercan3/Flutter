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
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 250, 139, 139)),
        checkboxTheme: const CheckboxThemeData(
            fillColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 237, 18, 18)),
            side: BorderSide(color: Colors.black)),
        buttonTheme: ButtonThemeData(
            colorScheme:
                ColorScheme.light(onPrimary: _lightColor._buttonColor)),
        colorScheme: const ColorScheme.light(),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyMedium:
                TextStyle(fontSize: 30, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(6, 13, 0, 0);
  final Color _buttonColor = const Color.fromARGB(6, 231, 0, 0);
}
