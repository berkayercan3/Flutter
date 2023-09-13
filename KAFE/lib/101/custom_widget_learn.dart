import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // hizalama yapmak icin kullandik
        //column ile butonun ekrana yatay sığdırdık
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                   width: MediaQuery.of(context).size.width, // ekran genisligi ne ise o boyuta sahip bir buton oluyor
                  child: CustomButton(title: title,onPressed: () {})
                ),
          )),
          const SizedBox(height: 100),
          Center(child:
            CustomButton(title: title,onPressed: () {})
          ),
        ],
      ),
    );
  }
}

class ButtonColor {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(15);
  final EdgeInsets rightPadding = const EdgeInsets.symmetric(horizontal: 20);
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final void Function() onPressed; // butonun hangi işi yapacağını belirttik
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: ButtonColor().redColor, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
          padding: PaddingUtility().normalPadding,
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: ButtonColor().white, fontWeight: FontWeight.bold),
          )),
    );
  }
}
