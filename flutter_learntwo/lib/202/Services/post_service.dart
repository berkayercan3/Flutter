import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/Services/comment_model.dart';
import 'package:flutter_learntwo/202/Services/post_model.dart';

abstract class IPostService {
  // interface oluşturuyoruz
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postID);
}

class PostService implements IPostService {
  late final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    //_changeLoading(); servis kısmında bu şekilde metod kullanamayız
    try {
      final response =
          await _dio.post(_PostsServicePaths.posts.name, data: postModel);
      return response.statusCode == HttpStatus.created;
    } catch (error) {
      return false;
    }
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response = await _dio.put('${_PostsServicePaths.posts.name}/id',
          data: postModel);
      return response.statusCode == HttpStatus.ok;
    } catch (error) {
      return false;
    }
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _dio.put('${_PostsServicePaths.posts.name}/id');
      return response.statusCode == HttpStatus.ok;
    } catch (error) {
      return false;
    }
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    //_changeLoading(); servis kısmında bu şekilde metod kullanamayız
    try {
      final response = await _dio.get(_PostsServicePaths.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception);
    }
    return null;
    //_changeLoading(); servis kısmında bu şekilde metod kullanamayız
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postID) async {
    try {
      final response = await _dio.get(_PostsServicePaths.comments.name,
          queryParameters: {_PostsQueryPaths.postsID.name: postID});

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception);
    }
    return null;
  }
}

enum _PostsServicePaths { posts, comments }

enum _PostsQueryPaths { postsID }

class _ShowDebug {
  static void showDioError(DioError error) {
    if (kDebugMode) {
      print(error.message);
    }
  }
}
