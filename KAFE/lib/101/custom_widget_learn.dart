import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column( //column ile butonun ekrana yatay sığdırdık
        children: [
          Center(child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 10),
            child:SizedBox(width: MediaQuery.of(context).size.width ,child: CustomButton()),
          )),
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

final EdgeInsets normalPadding  = const EdgeInsets.all(15);
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  final String tittle = 'Food';
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: ButtonColor().redColor, shape: StadiumBorder()),
      onPressed: () {},
      child: Center(
        child: Padding(
          padding: PaddingUtility().normalPadding,
          child: Text(
            tittle,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: ButtonColor().white, fontWeight: FontWeight.bold),
          )
        ),
      ),
    );
  }
}
