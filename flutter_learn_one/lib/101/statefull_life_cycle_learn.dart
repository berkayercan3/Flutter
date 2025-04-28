import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});

  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  late String _displayMessage;
  late final bool _isMessageLengthOdd;

  @override
  void initState() {
    super.initState();
    debugPrint('initState called: Widget is being created.');

    _isMessageLengthOdd = widget.message.length.isOdd;
    _displayMessage =
        '${widget.message} ${_isMessageLengthOdd ? "Odd" : "Even"}';
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('didChangeDependencies called: Dependencies changed.');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('didUpdateWidget called: Widget updated.');
  }

  @override
  void dispose() {
    debugPrint('dispose called: Widget is being disposed.');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build called: Widget is being rebuilt.');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Lifecycle'),
      ),
      body: Center(
        child: _isMessageLengthOdd
            ? TextButton(
                onPressed: () {},
                child: Text(
                  _displayMessage,
                  style: const TextStyle(fontSize: 24),
                ),
              )
            : ElevatedButton(
                onPressed: () {},
                child: Text(
                  _displayMessage,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
      ),
    );
  }
}
