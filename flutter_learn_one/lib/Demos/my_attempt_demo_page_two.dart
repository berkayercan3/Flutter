import 'package:flutter/material.dart';

class MyAttemptPage2 extends StatelessWidget {
  const MyAttemptPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.search,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
