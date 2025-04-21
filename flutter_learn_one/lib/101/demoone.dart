import 'package:flutter/material.dart';

class DemoOne extends StatelessWidget {
  const DemoOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.message_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.abc_sharp,
                color: Colors.blue,
              ),
            )
          ],
          title: const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Welcome to My Notes",
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          )),
      body: const Icon(Icons.abc_sharp),
    );
  }
}
