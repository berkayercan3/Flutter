import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});
  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> {
  bool _isVisible = false;
  bool _isOpacity = false;
  @override
  Widget build(BuildContext context) {
    void changeVisible() {
      setState(() {
        _isVisible = !_isVisible;
      });
    }

    void _changeOpacity() {
      setState(() {
        _isOpacity = !_isOpacity;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: _DurationItems.durationLow,
                opacity: _isOpacity ? 1 : 0,
                child: const Text("Hello")),
            trailing: IconButton(
              onPressed: () {
                _changeOpacity();
              },
              icon: const Icon(Icons.access_alarm_outlined),
            ),
          ),
          AnimatedDefaultTextStyle(
              child: Text('hello'),
              style: (_isVisible
                      ? context.textTheme().bodyLarge
                      : context.textTheme().bodyText2) ??
                  TextStyle(),
              duration: _DurationItems.durationLow)
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static final durationLow = Duration(seconds: 1);
}
