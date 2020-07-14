import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/controller/post_list_controller.dart';
import 'post_list_tile.dart';

class PostListView extends StatelessWidget {
  final String tagName;

  const PostListView({
    Key key,
    @required this.tagName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer((context, read) {
      final controller = read(postListProvider(tagName));
      final posts = controller.posts;

      // エラー発生時
      if (controller.hasError) {
        return Center(
          child: Text("エラーが発生しました。\nしばらく時間をおいて再度お試しください。"),
        );
      }

      // ロード中の場合
      if (controller.isLoading) {
        return Center(
          child: const CircularProgressIndicator(),
        );
      }

      // ロード成功時
      return Scrollbar(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (_, index) => PostListTile(
            post: posts[index],
          ),
        ),
      );
    });
  }
}
