import 'package:flutter/material.dart';
import 'package:kafe/core/random_image.dart';

class StackDemoTwo extends StatelessWidget {
  const StackDemoTwo({super.key});

  final double _cardHeight = 50.0;
  final double _cardWidth = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: _cardHeight / 2,
                  child:
                      const RandomImage(), // const ekledik ve child sona geldi
                ),
                Positioned(
                  height: _cardHeight,
                  bottom: 0,
                  width: _cardWidth,
                  child: _cardCustom(),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }

  Card _cardCustom() {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
