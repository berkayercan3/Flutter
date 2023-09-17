import 'package:flutter/material.dart';


class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const TextField(// ekrana yazı yazabileceğin bir textfield geldi
        maxLength: 50, // yazılabilecek maksimum değeri ifade eder
        //buildCounter araştır ayrıyetten ******
        decoration: InputDecoration(prefixIcon: Icon(Icons.mail), // field başına mail ıconu
        border: OutlineInputBorder(), //field etrafına bir outline çizgi eklendi
          labelText: 'Mail', //küçük bir mail yazısı eklendi
          fillColor: Colors.black38,
          filled: true,
        ),

      ),
    );
  }
}
