import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatefulWidget {
  const LoadingBar({super.key});

  @override
  State<LoadingBar> createState() => _LoadingBarState();
}

class _LoadingBarState extends State<LoadingBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const SpinKitSquareCircle(
      color: Colors.blue,
      size: 100,
    );
  }
}
