import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          //icon gelecek
        ],
        leadingWidth: 200,
        leading: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 9),
              child: Text(
                "My Notes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search Anything',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.red, style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(Icons.search)),
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
    );
  }
}
