import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/post.dart';

class QiitaApiClient {
  static Future<List<Post>> findPostsByTag(String tagName) async {
    final uri = Uri.encodeFull(
        "https://qiita.com/api/v2/tags/$tagName/items?per_page=100");
    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw "ERROR";
    }

    final List<dynamic> postList = json.decode(response.body);
    return postList.map((post) => Post.fromJson(post)).toList();
  }
}
