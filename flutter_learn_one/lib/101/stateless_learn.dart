import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String text2 = "Name1";
  final String text3 = "Name2";
  final String text4 = "Name3";
  final String text5 = "Name4";

  const StatelessLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: text2),
          _emptyBox(),
          TitleTextWidget(text: text3),
          TitleTextWidget(text: text4),
          _emptyBox(),
          TitleTextWidget(text: text5),
          const _CustomContainer(), //Refactor yaptik
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 30);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(color: Colors.blue));
  }
}
