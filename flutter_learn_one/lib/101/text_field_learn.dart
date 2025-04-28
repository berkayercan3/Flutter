import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafe/Product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final FocusNode focusNodeTextFieldOne = FocusNode();
  final FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              focusNode: focusNodeTextFieldOne,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              inputFormatters: [TextProjectInputFormatter().formatter],
              textInputAction: TextInputAction.next,
              maxLength: 20,
              decoration: InputDecorators().emailInput,
            ),
            const SizedBox(height: 16),
            TextField(
              focusNode: focusNodeTextFieldTwo,
              obscureText: true,
              decoration: InputDecorators().passwordInput,
            ),
          ],
        ),
      ),
    );
  }
}

class TextProjectInputFormatter {
  final formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return newValue;
  });
}

class InputDecorators {
  final emailInput = InputDecoration(
    prefixIcon: const Icon(Icons.mail),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    labelText: LanguageItems.mailTitle,
    hintText: 'Enter your email',
    filled: true,
    fillColor: Colors.grey.shade200,
    counterText: '',
  );

  final passwordInput = InputDecoration(
    prefixIcon: const Icon(Icons.lock),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    labelText: 'Password',
    hintText: 'Enter your password',
    filled: true,
    fillColor: Colors.grey.shade200,
  );
}
