import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/Services/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseURL = 'https://jsonplaceholder.typicode.com/';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();
  /*TextEditingController, Flutter'daki metin alanlarını (örneğin, TextField widget'ları)
  kontrol etmek için kullanılan bir denetleyici sınıftır. Bu denetleyiciler,
   metin alanlarında kullanıcının girdiği metni kontrol etmek, metin alanlarının 
  değerini okumak ve metin alanlarındaki metni değiştirmek için kullanılır.*/
  @override
  initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseURL));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();

    try {
      final response = await _dio.post('posts', data: postModel);

      if (response.statusCode == HttpStatus.created) {
        name = 'Basarili';
      } else {
        name = 'Basarisiz';
      }
    } catch (error) {
      print('Hata olustu: $error');
      name = 'Basarisiz';
    } finally {
      _changeLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(name ?? ''), actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ]),
        body: Column(
          children: [
            TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title')),
            TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                controller: _bodyController,
                decoration: const InputDecoration(labelText: 'Body')),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              autofillHints: const [AutofillHints.creditCardNumber],
              decoration: const InputDecoration(labelText: 'UserId'),
            ),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                            body: _bodyController.text,
                            title: _titleController.text,
                            userId: int.tryParse(_userIdController.text),
                          );
                          _addItemToService(model);
                        }
                      },
                child: const Text('Send'))
          ],
        ));
  }
}

class _PostModel extends StatelessWidget {
  const _PostModel({
    required this.items,
  });

  final List<PostModel>? items;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        title: Text(items?.first.title ?? ''),
        subtitle: Text(items?.first.body ?? ''),
      ),
    );
  }
}
