import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgress()],
      ),
      body:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CenterCircularProgress(),
           SizedBox(height: 100),
           Center(
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({super.key,});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator()
    );
  }
}
