import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String _tittle = 'appBar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tittle),
        leading: const Icon(Icons.chevron_left),
        leadingWidth: 10, //sol üstteki back buton amblemin konumunu sola çektik
        actionsIconTheme: const IconThemeData(
            color: Colors.white,
            size:
                40), // posta ikonunun yerini şeklini gibi ayarlamaları yapabilmemizi sağladı
        automaticallyImplyLeading:
            false, // sayfada otomotik olarak back butonu gelmesin anlamına geldi
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircleAvatar())
        ],
      ),
    );
  }
}
