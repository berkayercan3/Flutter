import 'package:flutter/material.dart';
import 'package:flutter_learntwo/Demo/Demo_Learn/password_text_field.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({Key? key}) : super(key: key);

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  late TextEditingController
      _passwordController; // TextEditingController tanımlanıyor.

  @override
  void initState() {
    super.initState();
    _passwordController =
        TextEditingController(); // TextEditingController başlatılıyor.
  }

  @override
  void dispose() {
    _passwordController.dispose(); // TextEditingController temizleniyor.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PasswordTextField(
              controller:
                  _passwordController), // PasswordTextField kullanılırken controller parametresi sağlanıyor.
          CheckboxListTile(
            value: true,
            onChanged: (val) {},
            title: const Text(
              "Select",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
