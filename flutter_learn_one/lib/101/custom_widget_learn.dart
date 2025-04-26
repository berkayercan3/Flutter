import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: PaddingUtility.normalPadding,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomButton(
                  title: title,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
          Center(
            child: CustomButton(
              title: title,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonColor {
  static const Color redColor = Colors.red;
  static const Color white = Colors.white;
}

class PaddingUtility {
  static const EdgeInsets normalPadding = EdgeInsets.all(15);
  static const EdgeInsets rightPadding = EdgeInsets.symmetric(horizontal: 20);
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ButtonColor.redColor, // Düzenlendi
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: PaddingUtility.normalPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: ButtonColor.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
