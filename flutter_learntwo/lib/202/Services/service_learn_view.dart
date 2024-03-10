import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/Services/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseURL = 'https://jsonplaceholder.typicode.com/';

  @override
  initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseURL));
    name = "Berkay";
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response = await Dio().get(_baseURL);

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    final response = await _dio.get('posts');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name ?? ''), actions: [
        _isLoading
            ? const CircularProgressIndicator.adaptive()
            : const SizedBox.shrink()
      ]),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return _PostModel(items: _items);
          }),
    );
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
