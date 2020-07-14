import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/qiita_api_client.dart';
import '../model/post.dart';

final postListProvider =
    ChangeNotifierProvider.family<PostListController, String>(
  (ref, String tagName) => PostListController(tagName),
);

class PostListController with ChangeNotifier {
  // 検索対象のタグ名
  final String tagName;
  // 投稿のリスト
  List<Post> posts = [];

  bool hasError = false;

  bool isLoading = false;

  PostListController(this.tagName) {
    fetch();
  }

  Future<void> fetch() async {
    isLoading = true;
    notifyListeners();
    try {
      this.posts = await QiitaApiClient.findPostsByTag(tagName);
      hasError = false;
    } catch (e) {
      hasError = true;
    }
    isLoading = false;
    notifyListeners();
  }
}
