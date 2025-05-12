import 'package:flutter/material.dart';
import 'model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModelV8 post = PostModelV8(
    userId: 1,
    id: 101,
    title: 'İlk Başlik',
    body: 'İlk içerik',
  );

  void _updateTitle() {
    setState(() {
      post = post.copyWith(title: 'Güncellenmiş Başlik');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User ID: ${post.userId ?? '-'}'),
            Text('Post ID: ${post.id ?? '-'}'),
            Text('Başlik: ${post.title ?? '-'}'),
            Text('İçerik: ${post.body ?? '-'}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateTitle,
              child: const Text('Başliği Güncelle'),
            ),
          ],
        ),
      ),
    );
  }
}
