import 'package:flutter/material.dart';

class ProjeOne extends StatefulWidget {
  const ProjeOne({super.key});

  @override
  State<ProjeOne> createState() => _ProjeOneState();
}

class _ProjeOneState extends State<ProjeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Profil ve hoşgeldin kısmı
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/147/147144.png',
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Peter',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 15),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: 'Source House',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
