import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafe/Product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {

  FocusNode focusNodeTextFieldOne=FocusNode();
  FocusNode focusNodeTextFieldTwo=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            // ekrana yazı yazabileceğin bir textfield alanı geldi

            maxLength: 20,
            // yazılabilecek maksimum değeri ifade eder ve ekranda bunu gösterir

            buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return Container(
                color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
                height: 10,
                width: 50,
              );
              //currentLenghti yani kullanıcının gireceği karakter sayısını tutar int türünde
              //isFocussed de kullanıcının metin alanına tıklayıp tıklamadığını gösterir bool olması da true false
              //maxLenghte gene aynı şekilde tutulabilecek maksimum karakter sayisini ifade eder
            },
            keyboardType: TextInputType.emailAddress,
            //keyboartta mail yazılacağını anlayıp @ işareti çıkarılmasını sağlar
            autofillHints: const [AutofillHints.email],
            // otomotik tamamlama sağlar
            focusNode: focusNodeTextFieldOne,
            inputFormatters: [
              TextProjectInputFormatter()._formatter],
            textInputAction: TextInputAction.next, // 1. texti doldurduktan sonra diğer texte geçmeyi sağladık ok a bastığımızda klavye üzerinden
            decoration: _InputDecarotor().emailInput,
          ),
          TextField(focusNode:focusNodeTextFieldTwo ,)
        ],
      ),
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      //a'ya basılmamasını sağladı bu bir örnek buraya kendi methodunu ekleyebilirsin
      return oldValue;
    }
    return oldValue;
  });
}

class _InputDecarotor {
  final emailInput  = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    // field başına mail ıconu
    border: OutlineInputBorder(),
    //field etrafına bir outline çizgi eklendi
    labelText:LanguageItems.mailTitle,
    //küçük bir mail yazısı eklendi
    fillColor: Colors.black38,
    filled: true,
  );
}