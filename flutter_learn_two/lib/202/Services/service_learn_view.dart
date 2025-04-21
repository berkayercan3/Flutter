// ignore_for_file: unused_field

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/Services/comments_learn_view.dart';
import 'package:flutter_learntwo/202/Services/post_model.dart';
import 'package:flutter_learntwo/202/Services/post_service.dart';

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
  //TEST edilebilir kod başladı
  late final IPostService _postService;

  @override
  initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseURL));
    _postService = PostService();
    name = "Berkay";
    fetchPostItemsAdvance();
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
      final datas = response.data;

      if (datas is List) {
        setState(() {
          _items = datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fetchPostItemsAdvance();
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
      body: _items == null
          ? const Placeholder()
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: _items?.length ?? 0,
              itemBuilder: (context, index) {
                return _PostCard(model: _items?[index]);
              },
            ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    this.model,
  }) : super(key: key);

  final PostModel? model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CommentsLearnView(postId: model?.id),
            ),
          );
        },
        title: Text(model?.title ?? ''),
        subtitle: Text(model?.body ?? ''),
      ),
    );
  }
}

// ignore: unused_element
class _PostModel extends StatelessWidget {
  const _PostModel({
    required this.items,
  });

  final List<PostModel>? items;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(items?.first.title ?? ''),
        subtitle: Text(items?.first.body ?? ''),
      ),
    );
  }
}
